# 実働環境で色々updateして得た知見 vue nuxt vuetify

## とにかくエラーが発生する。ググっても出てこない。

 これがとにかくつらい。こんなときは、ログを見る。もしかするとエラーに共通点があるかもしれない。自分がvuetifyをupdateしたときだと、エラーが200行くらい出るときもあった。しかし、よく見ると、10行くらいのエラーが20個出ている。そして、すべてのエラーがnode\_modules/css-loader/~~~~~~という感じのエラー。そこで、css-loaderを一旦削除して、動かす。次に、css-loaderを最新にしてupdateなど行う。こんなかんじでやると、エラーログに変化が生じる。エラーログが毎回同じように見える場合（ぱっと見た感じ）なにかを削除したり、インストールしているかもしれないが、それはエラーに対してなにも影響を与えていない。

## unexpected identifier

 このエラー50回くらいはみた、最初は1パッケージを削除したり、追加したり、nuxt.config.json、webpack.config.jsを一行消してみたりしたが、ずっと同じエラーが出ていた（具合悪くなる）。

こういう場合、vuetifyをupdateしているなら、一回vuetifyを削除してみるとか、nuxt.config.jsonから、vuetifyの記述を削除してみる。どこかに原因はある。実働環境であるならなおさら。もとは動いていた。なら、どこかに原因が必ずあるので、そいつを探す。nuxt.config.jsonを例に取れば、module.exports の中のbuildModulesを全部削除してみるとかいい。

## productionで落ちる

 は？って思った。developとstagingは動いていた。productionだけが落ちた。これどうやって確認するのか？と思った。まず、起動するスクリプトを確認した。package.jsonに書いてある。devはNODE\_ENV=development nuxt prodはNODE\_ENV=production nuxtっていうかんじだったので、devのコマンドをプロダクションと置き換えたら、productionと同じふうなエラーがでたので、それで確認した。実際、なんのエラーで落ちていたかはvuetifyのtreeShakeだった。vuetifyが必要なコンポーネントだけをインストールと言う感じの機能。これが、defaultでproductionだけ有効になるらしい。これに関しては、vuetifyをupdateする前にvuetifyの資料をサラッと読んでいたのが功を奏した。productionだけ、みたいな文言が頭の中に残っていた。



