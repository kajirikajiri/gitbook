# nullish node 14 vs 13

{% tabs %}
{% tab title="node 13.12.0" %}
```text
❯ node
Welcome to Node.js v13.12.0.
Type ".help" for more information.
> const a = null ?? 1
const a = null ?? 1
                ^

Uncaught SyntaxError: Unexpected token '?'
```
{% endtab %}
{% endtabs %}

{% tabs %}
{% tab title="node 14.2.0" %}
```text
❯ node
Welcome to Node.js v14.2.0.
Type ".help" for more information.
> const a = null ?? 1
undefined
> a
1
```
{% endtab %}
{% endtabs %}

つかえたー

{% embed url="https://github.com/nodenv/nodenv-update" %}

べんりだった\(nodenvにnodenv自身のupdateコマンドを追加する\)

```text
# install
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/nodenv-update.git "$(nodenv root)"/plugins/nodenv-update

# usage
nodenv update
```

