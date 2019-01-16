---
title: David Heinemeier Hansson Q&A 세션 (2017년 1월 25일, 쿼라 주관)
---

2017년 1월 25일에 쿼라가 주관하여 진행한 David Heinemeier Hansson 과의 Q&A 세션을 정리해서 번역한 글입니다 ([원본](https://www.quora.com/session/David-Heinemeier-Hansson/1)). 모든 질문은 쿼라 사용자가 작성하였고, 답변은 모두 DHH가 작성했습니다. 

<!--more-->

## 2017년에 레일즈라는 프레임워크를 배울 이유는 무엇이 있을까?

2004년에 배울 가치가 있었던 것과 동일한 이유다. 바뀌는 것이 많을수록 그대로인 것도 많다. 자바스크립트 진영은 많이 발전했지만 그와 동시에 초창기 레일즈가 탈출구를 제시했던 바로 그 복잡성으로 가득한 형태로 퇴행하는 모습도 보이고 있다. 

그 당시 복잡성의 대명사는 J2EE였지만 당시의 J2EE에 대한 비판과 오늘날 자바스크립트에 대한 비판의 내용은 소름끼칠 정도로 비슷하다. 기본적인 빌드 설정을 하고, 수 많은 작은 라이브러리와 프레임워크를 선별하고 조합해서 자신만의 독특한 구성을 만드는 등 어플리케이션의 삐대를 구성하는 과정에만 몇 시간에서 길게는 며칠까지 걸렸다는 이야기다.

레일즈의 핵심 전제는 레일즈를 최초로 선보였을 때나 지금이나 여전히 여러가지 측면에서 논란의 대상이다. 관습을 공식화하고 가치 없는 선택지를 제거해서 탁월한 기본 설정을 갖춘 풀스택 프레임워크를 구성한다. 그리고 완전한 어플리케이션을 만들고자 하는 사람들에게 이를 제공함으로써 생산성을 극적으로 증대시킬 수 있다는 전제다.

내가 조금 놀랍게 생각하는 점은 레일즈가 놀라울 정도로 성공했는데도 이 명제를 따르는 경쟁 제품이 더 많이 나타나지 않았다는 점이다. 오늘날 프로그래밍 활동의 대부분은 선택식 메뉴에 또 다른 선택지를 추가하는 방식으로 이루어진다. 또 다른 빌드 시스템, 또 다른 뷰 라이브러리, 또 다른 ORM을 만든다. 통합 솔루션 관련 활동은 거의 없다. 

개인적으로는 레일즈의 기본 명제가 대부분의 프로그래머의 심리에 거스르기 때문이라고 추측한다. 선택지를 줄이고, 웹 개발을 할 때 고려해야 할 기초적인 사항들을 커뮤니티의 관습과 답변에 따라 결정하면 대부분의 경우 오히려 더 좋은 결과가 나온다는 그것 말이다. 상대적으로 덜 독특하고, 덜 맞춤형이게 되지만 그래도 상관 없는 부분에 적용되는 것이기 때문에 괜찮다.

어쨌든 레일즈가 품은 사상은 그런 점에서 매력적이다. 설정보다 관습, 선택식 메뉴/주방장 특선의 대립, 통합된 시스템의 매력 등 레일즈 커뮤니티의 핵심 가치에 대해서는 [레일즈 독트린](http://rubyonrails.org/doctrine/)에 더 자세히 적어 둔 내용이 있다.

그 글을 읽어보면 레일즈가 자신에게 맞을지 맞지 않을지 감을 잡을 수 있을 것이다. 그 문서에서 언급한 여러 고민을 한 번도 해본 적이 없거나, 그런 고민에 대해 제시한 해답이 마음에 들지 않는다면 레일즈의 구체적인 내용은 당신에게 있어 어차피 별 의미가 없을 것이다. 하지만 그 문서의 내용에 공감하거나 최소한 흥미롭다는 생각이 든다면 계속 읽기를 권한다.

우리는 이러한 사상을 바탕으로 믿기 어려울 정도로 실용적이고 다양한 패러다임을 갖춘 웹 프레임워크를 만들었다. "웹 프레임워크"라는 용어를 들었을 때, 보통 "아 그 HTML 생성해주는 그거 아냐?" 생각하기도 한다. 그리고 그 정의에 따르면 레일즈가 리액트 같은 라이브러리와 비슷한 것이라고 생각하는 사람도 있을 수 있다. 물론 그렇게 볼 수도 있다고 생각하기는 하지만 그것은 실제와 매우 동떨어진 관점이며 레일즈가 당신에게 적합한지 아닌지 판단하는 데에는 그다지 도움이 되지 않는다. 

앞서 이야기한 것처럼 레일즈는 믿기 어려울 정도로 큰 포부를 가지고 있다. 관계형 데이터베이스와 비관계형 데이터베이스, 루비로 만들어진 비지니스 도메인 로직, REST를 사용해서 그 모델을 공개하는 컨트롤러, 그리고 그걸 최종적으로 HTML로 연결하는 모든 코드를 다루는 것이 레일즈의 풀스택 목표다. HTML이라는 마지막 단계는 레일즈의 코드와 목표의 작은 부분에 불과하다. 

따라서 리액트, 앵귤러나 다른 클라이언트 사이드 MVC야말로 미래라고 생각하고 있다면 당신은 여전히 레일즈의 대상 사용자 층에 포함된다. 데이터베이스에 자료를 저장하고, 무엇인가 연산하고, 추후 처리를 위해서 잡을 큐에 더하고, 이메일을 발송하고, 푸시 알림을 실행하는 등 제대로 된 앱에 요구되는 기능들을 수행하기 위해서는 HTML/자바스크립트 기반 UI를 만들기 위하여 사용하는 코드도 결국 백엔드 도메인 모델과 연동되어야하기 때문이다. 

그리고 POST, PUT, GET 요청을 받았을 때 그것을 처리하는 백엔드 도메인 모델이야말로 레일즈의 핵심부가 위치한 곳이다. 앞서 말했듯이 레일즈의 기본 설정은 풀스택 프레임워크다. 따라서 HTML을 어떻게 생성하고 업데이트할 지에 대한 방법도 포함하는데, 우리는 이에 대해서 터보링크와 서버사이드에서 생성한 자바스크립트 응답(JSR)이라는 엄청나게 생산적인 해결책을 제시해 놓았다. 하지만 당신이 그 마지막 부분을 그다지 좋아하지 않더라도 결국 그 JSON을 생성하기 위한 모든 공통 과정은 그대로 사용하고 있는 셈이다. 

정리하자면 앞서 말한 내용은 2017년 시점에서 레일즈를 매력적으로 만들어주는 두 가지 기본적인 신조에 대한 매우 긴 홍보글이었다. 1) 레일즈는 오늘날까지도 논란의 대상이 되고 있는 독특한 사상에 기반을 두고 있으며, 메인스트림 선택지에 비교할 경우 자신만의 장점을 13년 전부터 오늘날까지 여전히 동일하게 제공하고 있다. 2) 앞서 말한 사상에 기반을 두고 만들어진 실용적인 풀스택 해결책이며, 여전히 감탄할 만한 수준의 생산성을 rails new 명령어를 실행하는 즉시 제공한다. 

아 그리고 가장 좋은 점은 마지막에 이야기하려고 남겨두었다. 함수형 언어와 불변성의 장점이 재발견된 이 시대에 와서도, 내가 지금까지 접한 언어 중에서도 가장 유별나게 아름답고 호화로운 루비라는 언어를 사용할 수 있다는 점이다. 코드를 좀 보라. 사랑에 빠지지 않고는 못 배길 것이다. 

## 웹 개발의 미래는 어떨 것이라고 생각하는가?

향후 5년에 대해서는 과거의 상황이 가장 좋은 척도가 될 것이라고 본다. 기존 동향이 이어질 것이다. API가 개선되면서 웹은 한동안 네이티브가 독점하고 있던 영역을 더 많이 정복하는 동시에 크로스 플랫폼, 생산성, 무료 플랫폼이라는 고유의 장점을 계속 유지할 것이다. 이는 네이티브와 웹의 성능 차이가 가장 극심했던 시절에도 대다수의 소프트웨어 사용자에게 가장 좋은 전략이었다. 그리고 오늘날 두 환경 사이의 성능 차이는 그 어느 때보다도 적다. 

아이폰 7에서 웹을 사용해본 적이 있는가? 존나 끝내준다. 2012-2014년 시절 자바스크립트의 성능을 보면 오픈웹이 모바일이라는 닫힌 환경과 경쟁할 수나 있을까 충분히 걱정할만 했었다는 점은 인정한다. 하지만 지난 3-5년이란 짧은 시간 동안 웹이 얼마나 빨라지고 좋아졌는지를 보면 지금처럼 편한 마음으로 미래에 대한 희망을 가지고 그 희망에 투자할 수 있었던 시기는 없었던 것 같다. 

5년 이후로는? 그걸 누가 알 수 있나.

## 자바스크립트 프레임워크가 레일즈를 접수할 것인가?

접수한다(take over)는 표현은 레일즈에서 뭔가 훔쳐올 것이 있다는 것을 가정한다. 그런 거 없다. 그 점이야말로 웹이라는 환경의 아름다운 이유다. HTTP응답을 구현하는 방법의 다양성과 자유도는 무한하다. 사람들이 기술적인 전쟁터라는 관점을 가지고 보도록 세뇌된 안드로이드 대 iOS 같은 환경과는 달리 웹에서는 제로섬 플랫폼 전쟁이 벌어지지 않는다.

물론 "현재 가장 핫한 하이프라는 평가를 넘겨받는다"라는 의미로 이어받는다(take over)라고 볼 수도 있다. 그리고 현재 그에 대한 답은 그렇다이고, 그것은 **정말로 좋은 일이다**! 하이프의 대상은 새로운 것이고, 레일즈는 새롭지 않다. 레일즈는 13년 묵었는데, 이는 기술 분야에서는 부족 장로에 해당하는 정도이다. 레일즈가 아직도 하이프의 대상이면 오히려 안타까운 일일텐데, 다행히 그렇지는 않다.

덕분에 우리는 다른 더 좋은 것들을 즐길 수 있게 되었다. 레일즈는 이제 매우 안전한 선택지가 필요한 사람들도 사용할 수 있을 만큼 충분히 주류가 되었다. 더 이상 서부 무법지나 개척지가 아니란 말이다. 다음 앱을 레일즈로 만들 것을 은행에 제안해도 사람들이 레일즈의 위험도를 수용할 수 있게 되었다. 정말 장족의 발전을 이루었다!

하지만 그런 방향으로 나아가기 위해서는 멋을 좀 포기해야만 한다. 가장 새롭고 멋진 기술인 동시에 수많은 프로그래머가 안전한 선택지로 사용할 수 있는 기술이 되는 것은 불가능하다. 그 두 가지는 벤 다이어그램 상에서 겹치는 부분이 없다.

나는 과거를 그리워하는 사람은 아니다. 고등학교 시절을 그리워하고 있지도 않고, 20대를 그리워하고 있지도 않으며, 30대를 그리워할 일도 없을 것이다. 삶의 단계를 거쳐나가는 것을 즐기는 사람이다. 현재를 받아들이고, 현재의 자신을 받아들이고, 과거의 나에 머무르지 않는다. 레일즈도 똑같은 방식으로 대할 것이다. 

13년이 지난 시점에도 레일즈가 아직 존재감을 가지고 있다는 것은 정말 믿기 힘들 정도로 영예로운 일이다. 게다가 단순히 존재감을 가지는 것뿐 아니라 최초의 해법에서 제시했던, 논란의 소지가 많은 그 사상을 계속해서 제시하고 발전시키고 있다. 프로그래밍 세계는 우리 덕분에 정말로 훨씬 다채로워젔다. 이 말을 매우 뽐내며 자랑스럽게 말하고 있는데, 왜냐하면 실제로 **자랑스럽기** 때문이다. 간디는 "그들은 처음엔 무시하고, 그 다음엔 비웃고, 그 다음엔 싸우려 하겠지만, 결국에는 당신이 이길 것이다"라고 했는데, 그 첫 번째 단계에서 시작했던 커뮤니티와 미션이 정말 뛰어난 업적을 달성한 것이다. 우리는 승리했다. 

## 오늘날 새롭게 시작해서 하나의 시장에 진입할 수 있다면, 어떤 시장을 왜 선택할 것인가?

나는 중소규모 기업을 대상으로 유료 소프트웨어를 만드는 것의 위험/보상 비율이 여전히 가장 매력적이라고 본다. 따라서 아마 다른 방향에서 그 쪽을 다시 시도해볼 것이다. 이런 종류의 기업을 위해 해결해줄 수 있는 문제는 무수히 많다. 그 모든 것이 베이스캠프만큼 수익성과 확장성이 좋지는 않겠지만 그게 무슨 상관인가. 우리가 베이스캠프를 통해서 성공한 수준의 10분의 1만큼만 성공했어도 나는 여전히 매우 부유하고 보람찬 삶을 살고 있었을 것이다. 

그 외에도 내가 비지니스 소프트웨어를 만드는 것을 정말 좋아한다는 점도 있다. 조금 이상하다는 것 나도 안다. 소비자 대상 소프트웨어같은 멋이라고는 전혀 없지만 그게 내가 사랑하는 분야다. 나는 무엇인가를 더 효율적이고 사용하기 쉽게 만들고, 최종적으로는 대부분의 사람들이 일하는 하루 8시간(에 그치길 바란다)에 기여하는 것을 정말 좋아한다. 

그리고 정말 **엉망인 비지니스 소프트웨어가 너무 많다**! 그걸 보면 정말 기분이 나빠지기 때문에 그만큼 그 문제를 조금이라도 개선시키려는 강한 동기를 가지게 된다.

## 레일즈는 5년 뒤에도 유의미할 것인가?

그렇다.

## 지난 10년 동안 SaaS 비지니스는 어떻게 변화했는가?

우리가 처음 사업을 시작했을 때는 수많은 사소한 기본적인 사항에 대하여 고민해야 했다. 예를 들면, 기업이 과연 소프트웨어를 돈을 주고 구독할 것인가? 당시에는 증명되지 않은 가설에 불과했다. 거기에다 은행과 신용카드사의 위험기피성까지 있었다. 그 모든 괴로움과 불확실성은 이제 휙 사라졌다.

상업적인 측면과 기술적인 측면은 그렇게 훨씬 수월해졌다. 우리가 15년 전에 시작했을 때에도 이미 사업을 상당히 쉽고 저렴하게 시작할 수 있었다. 이제는 훨씬 쉽고 저렴하게 (= 무료로) 시작할 수 있다. SaaS 사업을 하기 정말 좋은 시대다!

하지만 변하지 않은 것이 있다면 여전히 뛰어난 소프트웨어를 만들어서 합리적인 가격에 팔아야 한다는 점이다. 그리고 그 제품에 관심을 가지는 구독자층을 만들어야 한다. "일단 만들면 고객이 생길 것이다"는 옛날에도 틀린 말이었고, 지금도 틀린 말이다. 그리고 이를 해결하기 위해서 해야하는 일은 단거리 경주가 아니라 마라톤에 가깝다.

## 루비 3의 진행상황에 대해서 마츠와 이야기해 보았나? 레일즈 프레임워크의 미래에 어떤 영향을 미칠 것인가?

[루비는 지난 13년 동안에도 충분히 빨랐기 때문에](https://m.signalvnoise.com/ruby-has-been-fast-enough-for-13-years-afff4a54abc7) 루비의 속도가 더 빨라지는 것은 그냥 공짜 선물이라고 본다. 고대하고 있지도 않고, 요청하고 있지도 않고, 개발 상황도 그렇게 열심히 지켜보고 있지도 않지만 선물이 배달오면 **정말 감사합니다**하고 받는다. 그저 내가 그렇게 시간을 많이 들여가면서 생각해보는 주제가 아닐 뿐이다.

연산력은 우리가 시작했을 때보다도 정말 훨씬 강력해졌다. 그리고 이미 그 당시에도 연산력은 **넘치고도 남았었다**!

물론 그건 베이스캠프 같은 비지니스 모델에 해당하는 것이다. 당신의 비지니스 모델이 수백만 사용자의 개인정보나 눈알을 팔아서 매번 10원씩 버는 것이라면 비용 구조가 베이스캠프와는 다를 수도 있다. 루비라는 호화로운 언어를 사용할 수 없는 구조일 수도 있다. 상관 없다. 루비가 모든 사용 사례를 만족시켜야만 하는 것은 아니다.

## 2017년에 원격근무 팀이 겪고 있는 가장 큰 문제는 무엇이며 어떤 해결책이 있는가?

기술을 과다하게 사용하는 것이다. 예전에는 기술이 충분히 좋지 않아서 원격근무가 어려웠는데, 요즘은 그 반대다. 오픈 플랜 오피스의 디지털 버전이 되어가고 있는 원격근무 업무환경이 많다. 알림이 끊임 없이 오는 데다가 항상 실시간으로 응답할 수 있도록 강요되기 때문에, 집중하고 깊이 생각하기에는 최악의 환경이다. 역설적인 만큼이나 안타까운 상황이다. 

내 사업 파트너이자 공동 저자인 제이슨이 [그룹 채팅이라는 도구에서 이 문제가 발생하는 형태에 대한 자세한 글](https://m.signalvnoise.com/is-group-chat-making-you-sweat-744659addf7d)을 쓴 적이 있다. 이 문제에 대해 더 알아보고 싶다면 좋은 시작점이다.

하지만 이 문제는 거기서 끝나지 않는다. 최근에 28명짜리 소규모 팀이 회사에서 일을 체계화하고 소통하고 진행하기 위해서 33개의 앱을 쓴다는 글도 본 적이 있다. 이런 미친. 거기서는 트렐로, 아사나, 베이스캠프, 슬랙, 페이스북 앳 워크를 비롯해 셀 수 없이 많은 툴을 사용하고 있었다. 어디에서 논의를 시작할지 결정할 수나 있을지, 자료를 찾을 수나 있을지 모르겠다.

그 사람들만 그런 상황에 처해있는 것은 아닐 것이라고 생각한다. 사람들은 다음에 대박칠 서비스를 놓칠 것을 너무 두려워하고 있기 때문에 모든 기술을 빠짐 없이 사용해버리고 만다. 그건 불쌍할 뿐 아니라 전혀 쓸데 없는 행동이기도 하다. 

어쨌든 이 주제에 대해서 [REMOTE](http://37signals.com/remote)라는 책을 한 권 통째로 썼다. 한 번 살펴보라.

## 루비 온 레일즈와 엘릭서와 피닉스를 비교하면 어떻게 생각하는가?

루비에서 얻은 교훈이 엘릭서에 영감을 주었다는 것이 매우 기쁘다. 그리고 나는 얼랭처럼 오래된 것을 집어들고서는 야 이거 실제로 해보니까 꽤나 괜찮네! 하고 말하는 상황 자체를 정말 좋아한다. 

하지만 루비에서 눈을 낮춰서 엘릭서/얼랭/피닉스 조합을 사용할 만큼 해당 조합의 장점이 두드러질 사용 사례를 내가 개인적으로 다룰 일은 없다. 예를 들면 나는 그 조합을 사용해서 베이스캠프를 만들고 싶어하지는 않을 텐데, 내가 만들고 있는 것은 바로 그 베이스캠프다.

그래도 다른 사람들에게는 한 번 살펴보기를 권한다. 특히 수백만 명의 사용자가 지속적으로 연결되는 방식으로 접속하면서도 각 사용자가 크게 가치가 없는 상황을 다루기에는 정말 뛰어난 솔루션인 것 같다. 왓츠앱이 왜 얼랭을 선택했는지 너무나 잘 이해할 수 있다. 루비가 적합하지 않은 사용 사례의 훌륭한 예시다.

그래서 정리하자면 매우 좋아한다. 하지만 개인적으로 필요할 일은 없을 것 같다.

## David Heinemeier Hansson은 왜 (파이썬 대신에) 루비를 선택해서 레일즈를 만들었는가?

사람은 왜 사랑에 빠질까? 뚜렷한 광대뼈나 공통의 관심사, 짜릿한 데이트 등 여러 부분으로 나누어볼 수는 있겠지만 그 대부분은 수수께끼로 남아 있을 것이다. 각 조각이 무엇인지 몰라서가 아니고 그 조각들이 어떻게 나와 잘 맞을지 도저히 예상할 수 없을 것이기 때문이다.

나한테는 루비가 그렇다. 나는 루비를 지난 14년 동안 계속 사랑해오고 있다. 블록, 가장 적절한 상황에 맞추어 앨리어스된 키워드, 변경 가능한 코어 클래스, 절차형과 함수형 프로그래밍의 장점을 수용하면서도 객체지향 프로그래밍의 일관성을 유지하는 것 등의 요소를 골라낼 수는 있을 것이다. 하지만 이 모든 것은 조각일 뿐이고, 이런 조각들 중 일부를 다른 방식으로 조합한 언어도 많이 있다. 하지만 내가 사랑하는 것은 루비다.

이렇게 모호하고 감정적인 말을 바보같다거나 완전 짜증난다고 생각할 프로그래머가 많을 것이라 생각한다. 프로그래머는 과학이라는 단어가 들어가 있는 분야와 종종 접점을 가지는 만큼, **지금 하려는 일에 가장 적합한 도구**를 항상 객관적으로 선택하는 합리적인 로봇 같은 사람이 되어야 한다고 생각하는 프로그래머가 많다.

전부 개소리라고 생각한다. 최고의 도구 따위는 없다. 내 머리를 가장 잘 자극해주는 퍼즐이 존재할 뿐이다. 요즘은 어떤 도구를 사용해도 무엇이든 만들 수 있다. 정말 즐거운 일이다. 표현법, 언어, 생각의 다양성 만세.

## 삶에 가장 큰 영향을 미친 책 세 권은 무엇인가?

1. [Influence](https://www.amazon.com/Influence-Psychology-Persuasion-Robert-Cialdini/dp/006124189X/ref=sr_1_1?ie=UTF8&qid=1485276322&sr=8-1&keywords=influence+the+psychology+of+persuasion) (설득의 심리학). 마케팅과 인간 심리에 대해서 정말 많은 것을 가르쳐준 책이다. 나는 이 책을 종종 다시 살펴보곤 한다. 레일즈와 베이스캠프를 발전시킬 때 사용한 마케팅 전략을 구상하는데 큰 도움을 얻었다. 

2. [Smalltalk Best Practices](https://www.amazon.com/Smalltalk-Best-Practice-Patterns-Kent/dp/013476904X). 내가 가장 좋아하는 프로그래밍 책이다. 이제 20년도 더 묵은 책이지만 담긴 내용은 그 때나 지금이나 여전히 유의미하다. 아름다운 코드를 작성할 때 내가 활용하는 패턴이 정말 많이 담겨있다. 

3. [Meditations](https://www.amazon.com/Meditations-Thrift-Editions-Marcus-Aurelius/dp/048629823X/ref=sr_1_1?s=books&ie=UTF8&qid=1485276427&sr=1-1&keywords=marcus+aurelius+meditations) (명상록). 마르쿠스 아우렐리우스는 내가 가장 좋아하는 스토아 학파 철학자일 것이다. 그 다음은 간발의 차로 세네카일 것이고. 나는 스토아 학파에서 내가 어렸을 때부터 사용해온 정신적 대응기제와 유사한 사고방식을 발견했다. 이 책은 그 대응기제를 보다 정교하게 만들어서 내 삶을 인도하는 원칙으로 삼을 수 있도록 해주었다.

이 세 권의 책은 빠르게 답변을 하려다보니 떠오른 책들이라고 부르는 편이 더 정확할 것이다. 나는 매년 10-12권의 책을 읽는데 그 모든 책을 차근차근 살펴본다면 아마 조금 다른 목록이 나왔을 수도 있다. 하지만 여기서 언급한 책도 다 좋은 책이다!

## 루비를 제외하면 가장 생산적인 언어는 무엇이라고 생각하는가?

자바스크립트를 정말 좋아하게 되었다. 루비는 아니긴 하지만, 어차피 그 어떤 언어도 루비가 될 수는 없다. ES2015에서는 많은 것이 개선되었는데, 특히 클래스와 메타프로그래밍 부분의 개선점이 두드러진다. 그리고 자바스크립트를 계속 발전시킬 수 있는 탄력이 마침내 제대로 붙기 시작한 것 같다.

자바스크립트 생태계는 그렇게 마음에 들지 않지만 언어는 좋아한다. 열린 프로토타입, 메타프로그래밍 강조 등 루비와 공유하는 가치가 많다. 

## 2017년에 어떤 스타트업이 성공하고 어떤 스타트업이 실패할 것 같은가?

그 요란하고 정신나간 VC 스타트업 세계를 염두에 둔 질문이라면 매년 재사용할 수 있는 답변을 주겠다. 대부분이 망하고 실패할 것이다. 정말 소수의 극소수만 성공할 것이다. 몇 명은 새 직업을 구하고서는 그것을 **그간의 엄청난 여정**이 인수된 것이라고 그럴듯하게 포장해서 표현할 것이다. 

## 어떻게 계속 학습하는가?

책을 꽤 읽는 편이다. 내 의견을 대안과 비교하며 벤치마크하면서 내 생각이 여전히 옳은가 살펴본다. 이는 기술 분야에 특히 더 잘 적용되지만 그보다 넓게도 적용된다. 현재 가지고 있는 이론이 틀렸음을 입증하려고 노력하는 것은 매우 신나는 일이다. 지금 가진 생각이 틀렸다고 확인할 수 있다는 것은 크게 발전해나갈 방법이 있다는 것을 의미하기 때문이다. 나는 그런 도약을 이미 여러번 해 보았다.

그 외에는 근면하게 연습하는 것의 가치를 강하게 믿는다. 같은 수업을 10번 반복하는 것은 도움이 되지 않는다. 편하지 않은 영역으로 나아가려고 계속해서 노력해야 한다. 실력이 증가할수록 그렇게 하기 점점 더 어려워지는데, 왜냐면 어떤 분야에서 전문가가 된 후에는 모르는 영역에 발을 딛을 때 상대적으로 더 깊이 추락하는 것처럼 느껴지기 때문이다. 하지만 그럴수록 고여서 썩지 않기 위해서 더더욱 열심히 노력해야 한다.

그리고 나는 여러 분야에 걸쳐서 배울 수 있도록 노력한다. 국가와 정치적 절차의 역사를 공부하면 오픈 소스 커뮤니티를 만드는 것에 대해서 많은 것을 배울 수 있다. 글쓰기와 철학을 더 공부함으로써 더 나은 프로그래머가 될 수 있다. 그리고 어떠한 분야에서 가장 뛰어난 지식을 다른 분야에 적용하려고 해보면 정말 재밌는 일이 벌어지기 마련이다. 