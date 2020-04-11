# vue The client-side rendered virtual DOM tree

```text
まとめ
developでは動いたとしても、本番モードでは動かないかもしれない
```

 先日vueを使っていたらエラーが発生した

```text

 [Vue warn]: The client-side rendered virtual DOM tree is not matching server-rendered content.
 This is likely caused by incorrect HTML markup, for example nesting block-level elements inside <p>, or missing <tbody>.
 Bailing hydration and performing full client-side render. 
```

 調べてみると、serverside でレンダリングされたDOMとclientsideで生成されたDOMが一致しないためらしい。

 develop環境では普通に動いていたので、warnだからまあ。。。と思って放置していた

 そしたら、stagingで動かない。。。調べた結果

開発モードでは、Vueはクライアント側で生成された仮想DOMツリーがサーバーからレンダリングされたDOM構造と一致していることを保証します。一致しない場合は、ハイドレーションを中止し、既存の DOM を破棄してゼロからレンダリングします。本番モードでは、パフォーマンスを最大化するためにこのアサーションは無効になっています。

> In development mode, Vue will assert the client-side generated virtual DOM tree matches the DOM structure rendered from the server. If there is a mismatch, it will bail hydration, discard existing DOM and render from scratch. In production mode, this assertion is disabled for maximum performance.

{% embed url="https://ssr.vuejs.org/guide/hydration.html" %}

 つまり、develop環境ではゼロからレンダリングをし直すが、stagingでは保証されていない。

 なので、stagingで動かなかったという結論に至った

 developでは動いていたのでびびった

