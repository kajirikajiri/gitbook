# nodenv global not working

nodeの最新版が使いたかった。なので、globalに設定した

```text
nodenv global 14.2.0
```

しかし、かわらない

```text
$ node
Welcome to Node.js v13.12.0.
```

次は、localに設定してみる

```text
nodenv local 14.2.0
```

これはうまくいったが `.node-version` というファイルが発生してしまう

不要なので、原因を探した

## 原因

.node-versionというファイルが親ディレクトリに存在していたのが原因だった

```text
$ node
nodenv: version `13.12.0' is not installed (set by /root/.node-version)
```

これについては、nodenvに情報があった\([https://github.com/nodenv/nodenv\#choosing-the-node-version](https://github.com/nodenv/nodenv#choosing-the-node-version)\)

> #### ノードバージョンの選択\(翻訳しました\)
>
> シムを実行すると、nodenvは次のソースからこの順序で読み取ることにより、使用するノードのバージョンを決定します。
>
> 1. `NODENV_VERSION`環境変数、指定された場合。[`nodenv shell`](https://github.com/nodenv/nodenv#nodenv-shell)コマンドを使用して、現在のシェルセッションでこの環境変数を設定できます。
> 2. `.node-version`ファイルシステムのルートに到達するまで、実行中のスクリプトのディレクトリとその各親ディレクトリを検索して見つかった最初のファイル。
> 3. `.node-version`ファイルシステムのルートに到達するまで、現在の作業ディレクトリとその各親ディレクトリを検索して見つかった最初のファイル。コマンドを`.node-version`使用して、現在の作業ディレクトリにあるファイルを変更できます[`nodenv local`](https://github.com/nodenv/nodenv#nodenv-local)。
> 4. グローバル`~/.nodenv/version`ファイル。[`nodenv global`](https://github.com/nodenv/nodenv#nodenv-global)コマンドを使用して、このファイルを変更できます。グローバルバージョンファイルが存在しない場合、nodenvは「システム」ノードを使用することを想定しています。つまり、nodenvがパスになかった場合に実行されるバージョンです。

上記2,3にあるように、各親ディレクトリを検索して見つかった最初のファイルを設定する。

なので、/root/にあった、`.node-version` が参照されてしまった。

こいつを削除したら、nodeversionが想定通りになった。

```text
 rm /root/.node-version
```

## 過程

nodeのバージョンが想定通りにならない

nodenv globalで設定。失敗

nodenv localで設定。成功。しかし、`.node-version`が作業ディレクトリに作成される

nodenvでinstall済みのversionを削除

nodeを実行するとエラーが発生

```text
nodenv: version `13.12.0' is not installed (set by /root/.node-version)
```

いろいろ調べた結果いらないと判断。削除

平和になった

