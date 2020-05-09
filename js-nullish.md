# js nullish

{% embed url="https://tc39.es/ecma262/\#sec-intro" %}

> **Null 合体演算子 \(`??`\)** は論理演算子の一種です。この演算子は左辺が [`null`](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Global_Objects/null) または [`undefined`](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Global_Objects/undefined) の場合に右の値を返し、それ以外の場合に左の値を返します。
>
> [OR 演算子 \(`||`\)](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Operators/Logical_Operators) と違い、`null` と `undefined` 以外の [_falsy_](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Operators/Logical_Operators#Description) な値のときには左の値を返します。つまり、左辺が `''` や `0` の場合は左の値を評価して返します。その他の例については以下を参照してください。

```text
const foo = null ?? 'default string';
console.log(foo);
// expected output: "default string"

const baz = 0 ?? 42;
console.log(baz);
// expected output: 0

```

**なるほど、nullとundefinedだけを判定できるのか。**

```text
const hoge = false || null || undefined || 'hello'
console.log(hoge)
```

これだと、falseも判定しちゃう。

