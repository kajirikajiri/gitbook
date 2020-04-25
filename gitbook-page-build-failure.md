# gitbook Page build failure

```text
まとめ
.nojekyll をmasterブランチに追加する。（ファイルの中身は空でよい）
```

 いつものようにgitbookの記事を書いて、save-&gt;mergeとしたらメールが届いた

```text
The page build failed for the `gh-pages` branch with the following error:

The tag `embed` on line 22 in `atcoder-1.md` is not a recognized Liquid tag. For more information, see https://help.github.com/en/github/working-with-github-pages/troubleshooting-jekyll-build-errors-for-github-pages-sites#unknown-tag-error.

For information on troubleshooting Jekyll see:

  https://help.github.com/articles/troubleshooting-jekyll-builds
```

 そんなタグは知らないという感じだった。

 とりあえず、該当の行を削除して、マージしてみた。が、同じエラー。

 ヘルプのサイトを見ると、`.nojekyll` ファイルを足してほしいとのこと

 gitbookのリポジトリのルートに `.nojekyll` を追加-&gt;gitbook上からsave-&gt;merge-&gt;エラー。。。

 別ブランチに追加していた。masterブランチに `.nojekyll` を追加して、save-&gt;mergeしたところエラーメールが届かなくなった

