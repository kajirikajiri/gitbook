# matchAll

{% embed url="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global\_Objects/String/matchAll" %}

{% embed url="https://tc39.es/ecma262/\#sec-intro" %}

matchAll。なにがいいんだこれ？

詳細がわかるのか。正規表現のどこにmatchしたか。

普通に使う分には、matchで良さそう

{% tabs %}
{% tab title="matchAll" %}
```text
const regexp = /t(e)(st(\d?))/g;
const str = 'test1test2';

const array = [...str.matchAll(regexp)];

console.log(array[0])
// ['test1', 'e', 'st1', '1', index: 0, input: 'test1test2', groups: undefined]
console.log(array[1])

//> Array ["test1", "e", "st1", "1"]
//> Array ["test2", "e", "st2", "2"]
```
{% endtab %}
{% endtabs %}

{% tabs %}
{% tab title="match" %}
```text
let regexp = /t(e)(st(\d?))/g;
let str = 'test1test2';

let array = [...str.match(regexp)];

console.log(array[0]);
// expected output: Array ["test1", "e", "st1", "1"]

console.log(array[1]);
// expected output: Array ["test2", "e", "st2", "2"]

//> "test1"
//> "test2"
```
{% endtab %}
{% endtabs %}

...stgでstring分割できたっけな。

