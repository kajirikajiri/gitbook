# gh-open not working with wsl2



```text
# pip を使えるようにする
sudo apt-get install python3-pip
pip3 install --user --upgrade pip
echo "export PATH=\"${HOME}/.local/bin:$PATH\"" >>"${HOME}"/.zshrc

# pipでxdg-open-wslをinstall
pip install --user git+https://github.com/cpbotha/xdg-open-wsl.git

# xdg-openの生存確認 & 動作確認
which xdg-open
xdg-open http://www.google.com
```

平和がおとずれた

## 過程

{% embed url="https://github.com/typester/gh-open/blob/master/main.go" caption="まずは、gh-openのソースを確認" %}

{% embed url="https://github.com/skratchdot/open-golang/blob/master/open/open.go" caption="gh-openのソースコード中に記載のあった、open-golangのソースコードを確認" %}

{% embed url="https://github.com/pwnall/node-open" caption="open-golangのソースコード中に記載のあった、node-openを確認" %}

{% embed url="https://www.reddit.com/r/bashonubuntuonwindows/comments/fj0jpf/xdgopenwsl\_a\_wslspecific\_xdgopen\_replacement\_to/" caption="node-openのコメントから、win32でなく、darwinでもないため、otherのxdg-openが必要であると判断したが、xdg-openコマンドなかった" %}

{% embed url="https://github.com/cpbotha/xdg-open-wsl" caption="redditのコメントから、これをインストールすると判断" %}

{% embed url="https://algorithm.joho.info/unix/wsl-ubuntu-python-pip/" caption="pipがないのでinstall" %}

{% embed url="https://github.com/microsoft/WSL/issues/4020" caption="pipが使えないので、環境変数だろうとあたりをつけて、調べて、コメントを参照" %}

{% embed url="https://github.com/cpbotha/xdg-open-wsl" caption="pipが使えるようになったのでinstall。動作確認成功" %}

番外編

darwinてなんや？？\(なんとなくわかってる\)

gh-openに渡してる引数が悪いのか？\(そんなことなかった\)

open動かないんだけど。。引数か？\(darwinのコマンドだから、wsl2では動かない\)



