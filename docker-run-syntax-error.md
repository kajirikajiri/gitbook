# docker run syntax error



{% tabs %}
{% tab title="症例" %}
```bash
docker run nextjs -p 3000:3000
[eval]:1
3000:3000
    ^

SyntaxError: Unexpected token ':'
    at new Script (vm.js:99:7)
    at createScript (vm.js:249:10)
    at Object.runInThisContext (vm.js:297:10)
    at Object.<anonymous> ([eval]-wrapper:10:26)
    at Module._compile (internal/modules/cjs/loader.js:1176:30)
    at evalScript (internal/process/execution.js:94:25)
    at internal/main/eval_string.js:23:3
```
{% endtab %}
{% endtabs %}

{% tabs %}
{% tab title="修正" %}
```
docker run -p 3000:3000 nextjs
```
{% endtab %}
{% endtabs %}

オプションは、先に書きましょうということでした

