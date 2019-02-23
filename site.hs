--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import Data.Monoid (mappend)
import Control.Monad (liftM, mapM)
import System.FilePath (takeBaseName, (</>), (<.>))
import System.Directory (listDirectory, copyFile)

import Hakyll
import I18n
--------------------------------------------------------------------------------
main :: IO ()
main = do
  copyFile "./_redirects" "./_site/_redirects"
  filesPerPostList <- listFilesPerPost

  hakyll $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/main.scss" $ do
        route   $ constRoute "main.css"
        compile compressScssCompiler

    match "templates/*" $ compile templateBodyCompiler

    match "about/*.md" $ do
        route postRoute
        compile $ do
          currentPath <- getResourceFilePath
          let lang = takeBaseName currentPath
          pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" (defaultCtx lang)
            >>= relativizeUrls

    foldl1 (>>) (map postRules filesPerPostList)

    paginateEn <- buildPaginateWith postsGrouper (postsPattern "en") (postsPageId "en")
    indexRules "en" paginateEn
    paginateDe <- buildPaginateWith postsGrouper (postsPattern "de") (postsPageId "de")
    indexRules "de" paginateDe
    paginateKo <- buildPaginateWith postsGrouper (postsPattern "ko") (postsPageId "ko")
    indexRules "ko" paginateKo

    create ["en/rss.xml"] $ do
        route idRoute
        compile $ do
            posts <- fmap (take 10) . recentFirst =<< loadAllSnapshots "posts/*/en.md" "content"
            let feedCtx =
                  postCtx Nothing `mappend`
                  bodyField "description"
            renderRss feedConfiguration feedCtx posts

    create ["ko/rss.xml"] $ do
        route idRoute
        compile $ do
            posts <- fmap (take 10) . recentFirst =<< loadAllSnapshots "posts/*/ko.md" "content"
            let feedCtx =
                  postCtx Nothing `mappend`
                  bodyField "description"
            renderRss feedConfiguration feedCtx posts

    create ["en/atom.xml"] $ do
        route idRoute
        compile $ do
            posts <- fmap (take 10) . recentFirst =<< loadAllSnapshots "posts/*/en.md" "content"
            let feedCtx =
                  postCtx Nothing `mappend`
                  bodyField "description"
            renderAtom feedConfiguration feedCtx posts
    create ["ko/atom.xml"] $ do
        route idRoute
        compile $ do
            posts <- fmap (take 10) . recentFirst =<< loadAllSnapshots "posts/*/ko.md" "content"
            let feedCtx =
                  postCtx Nothing `mappend`
                  bodyField "description"
            renderAtom feedConfiguration feedCtx posts
--------------------------------------------------------------------------------

indexRules :: String -> Paginate -> Rules ()
indexRules lang paginate =
    paginateRules paginate $ \pageNumber pattern -> do
        route idRoute
        compile $ do
          posts <- recentFirst =<< loadAll pattern
          makeItem ""
              >>= loadAndApplyTemplate "templates/index.html" (indexCtx paginate pageNumber lang posts)
              >>= loadAndApplyTemplate "templates/default.html" (defaultCtx lang)
              >>= relativizeUrls

compressScssCompiler :: Compiler (Item String)
compressScssCompiler = do
  fmap (fmap compressCss) $
    getResourceString
    >>= withItemBody (unixFilter "sass" [ "-s"
                                        , "--scss"
                                        , "--style", "compressed"
                                        , "--load-path", "css"
                                        ])

-- Contexts

indexCtx :: Paginate -> PageNumber -> String -> [ Item String ] -> Context String
indexCtx paginate pageNumber lang posts =
    listField "posts" (postsCtx lang) (return posts) `mappend`
    constField "postsHeader" (languageName lang) `mappend`
    constField "title" "Harfang's Perch" `mappend`
    paginateContext paginate pageNumber `mappend`
    defaultContext

postCtx :: Maybe (Compiler [ Item String ] ) -> Context String
postCtx mbI18nUrls =
  case mbI18nUrls of
    Just i18nUrls ->
      listField "i18nUrls" (i18nCtx postLinkUrl languageName) i18nUrls `mappend`
      dateField "date" "%F" `mappend`
      defaultContext
    Nothing ->
      dateField "date" "%F" `mappend`
      defaultContext

postsCtx :: String -> Context String
postsCtx lang =
    teaserField "teaser" "content" `mappend`
    dateField "date" "%F" `mappend`
    constField "readMoreLinkText" (readMoreLinkText lang) `mappend`
    defaultContext

defaultCtx :: String -> Context String
defaultCtx lang =
    listField "langs" (i18nCtx indexLinkUrl languageName) (return . emptyLanguageItems $ supportedLangs) `mappend`
    constField "postsLinkText" (postsLinkText lang) `mappend`
    constField "postsLinkUrl" (postsLinkUrl lang) `mappend`
    constField "aboutLinkText" (aboutLinkText lang) `mappend`
    constField "aboutLinkUrl" (aboutLinkUrl lang) `mappend`
    constField "atomFeedUrl" (atomFeedUrl lang) `mappend`
    constField "rssFeedUrl" (rssFeedUrl lang) `mappend`
    constField "htmlLang" lang <>
    constField "title" "Harfang's Perch" `mappend`
    defaultContext

i18nCtx :: (FilePath -> FilePath) -> (String -> String) -> Context String
i18nCtx urlTransformer textTransformer =
    (field "langUrl" $ \item -> return $ "/" ++ (urlTransformer . toFilePath . itemIdentifier $ item )) `mappend`
    (field "langName" $ \item -> return . textTransformer . takeBaseName . toFilePath . itemIdentifier $ item)

-- Routes
postRoute :: Routes
postRoute =
  customRoute (\identifier -> postLinkUrl . toFilePath $ identifier)

-- Helpers
emptyLanguageItems :: [ FilePath ] -> [ Item String ]
emptyLanguageItems =
  map (\path ->
         Item { itemIdentifier = fromFilePath path
              , itemBody = ""}
         )

-- Paginate
postsPageId :: String -> PageNumber -> Identifier
postsPageId lang n = fromFilePath $ if (n == 1) then lang </> "index.html" else lang </> show n </> "index.html"

postsGrouper :: MonadMetadata m => [Identifier] -> m [[Identifier]]
postsGrouper = liftM (paginateEvery 10) . sortRecentFirst

postsPattern :: String -> Pattern
postsPattern lang =
  (fromGlob ("posts" </> "*" </> lang <.> "md"))

-- RSS/Atom Feed
feedConfiguration :: FeedConfiguration
feedConfiguration = FeedConfiguration
    { feedTitle       = "Harfang's Perch"
    , feedDescription = "On software in general, mostly functional"
    , feedAuthorName  = "harfangk"
    , feedAuthorEmail = ""
    , feedRoot        = "https://harfangk.page"
    }

postRules :: (FilePath, [FilePath]) -> Rules ()
postRules (dir, langs) =
  match (fromGlob $ "posts" </> dir </> "*") $ do
    route postRoute
    compile $ do
      currentPath <- getResourceFilePath
      let lang = takeBaseName currentPath
      let i18nItems = emptyLanguageItems langs
      pandocCompiler
        >>= saveSnapshot "content"
        >>= loadAndApplyTemplate "templates/post.html" (postCtx (Just (return i18nItems)))
        >>= loadAndApplyTemplate "templates/default.html" (defaultCtx lang)
        >>= relativizeUrls

listFilesPerPost :: IO [(FilePath, [FilePath])]
listFilesPerPost = do
  directories <- listDirectory "./posts"
  mapM (\dir -> (fmap (((,) dir) . (map (\fileName -> "posts" </> dir </> fileName)))) (listDirectory $ "posts" </> dir)) directories
