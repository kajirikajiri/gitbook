# dexie firebase nuxt vuetifyでオフラインpwaメモ帳作った

タイトルなげ

{% embed url="https://nuxt-pwa-3caaf.web.app/" %}

いろいろ試したいものが溜まったのでやってみた

 業務で使ってる、vuetify nuxt をベースにした

まえからつかってた、firebaseも馴染みがあったので採用

pwa: webでもアプリのような体験ができるように。

offline環境でつかいたかったので、offline用のストレージを検索したら、でてきたdexieを採用。

dexieははじめてだったが、create read update deleteくらいしか使わなかったので余裕だた

pulltorefreshjsに決めるまでが厄介だった。ほかにも、vue-pull-toみたいなのがあったが、うまく動かず。pulltorefreshjsはpulldownで更新してくれるやつ

ひとつ断念したのが、autofocus。一回目しかautofocusせず、二回目以降もfocusするために、nexttickとかgetattributeとか使ってclickするとかやってみたが、どうもうまくできなかった。

自動保存ができたのはよかった。タイミングの関係で若干無理やりな実装をした。

