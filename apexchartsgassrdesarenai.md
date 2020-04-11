# ApexChartsがSSRで描画されない

```text
まとめ　no-ssrで囲む
     <no-ssr>
       <apexchart></apexchart>
     </no-ssr>
```

 先日、vueでapexchartを使っていた。

[https://apexcharts.com/](https://apexcharts.com/)

 develop環境では普通に動いていたのに、staging環境では動かなかった。。。（最近多いよ[https://app.gitbook.com/@kajirikajiri/s/gitbook/~/drafts/-M4bZvXhiivIRkpoAec8/vue-the-client-side-rendered-virtual-dom-tree](https://app.gitbook.com/@kajirikajiri/s/gitbook/~/drafts/-M4bZvXhiivIRkpoAec8/vue-the-client-side-rendered-virtual-dom-tree)）

 細かいことをいうと、最初は表示される。更新すると表示されない。（staging\)

ちなみに、developだと、更新しても表示される 

調べた結果、&lt;no-ssr&gt;で囲み、mounted後に処理されるようにすることで解決した

issue [https://github.com/apexcharts/vue-apexcharts/issues/103](https://github.com/apexcharts/vue-apexcharts/issues/103)

no-ssrタグ [https://qiita.com/potato4d/items/04d3767aaa036f557950](https://qiita.com/potato4d/items/04d3767aaa036f557950)

 解決に至った経緯としては、表示された時と、表示されないときのElements\(chromeのdevtoolで見れるやつ\)を見比べたら、表示されないときは、&lt;apexchart&gt;&lt;/apexchart&gt;が表示されていて、表示される時は、&lt;div class="apexchart"&gt;&lt;svg&gt;&lt;/svg&gt;&lt;/div&gt;みたいな感じで表示に差があったこと。また、develop環境では表示されることから、server side renderingが影響しているのではないかという点から検索したらいい感じにgoogleさんが見つけてくれた。

上記のqiitaの記事によると、フレームワークやライブラリによっては、server side renderingに対応していないものもあるようなので、今回のようなケースはこれからも遭遇しそうだ。覚えておこう

