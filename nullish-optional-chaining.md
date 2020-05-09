# nullish optional chaining

{% embed url="https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Operators/Optional\_chaining" %}

{% embed url="https://shisama.hatenablog.com/entry/2020/04/22/011221" %}

```text
const adventurer = {
  name: 'Alice',
  cat: {
    name: 'Dinah'
  }
};

const dogName = adventurer.dog?.name;
console.log(dogName);
// expected output: undefined

console.log(adventurer.someNonExistentMethod?.());
// expected output: undefined

```

便利じゃんこれ

rubyの&ね。ぱくりか。いやrubyもパクリか？

typescriptはコンパイル時にnullチェックできる

optional chainingはnull, undefinedならundefinedを返す。これってつないだら、どこまでもいけるって、それはそれで大丈夫？

```text
const adventurer = {
  name: 'Alice',
  cat: {
    name: 'Dinah'
  }
};

const dogName = adventurer.dog?.name?.hoge?.koge;
console.log(dogName);


console.log(adventurer.someNonExistentMethod?.());


// > undefined
// > undefined
```

なんかな、、、

　いいことあるのかな

{% embed url="https://shisama.hatenablog.com/entry/2020/04/22/011221" %}



> しかし、Optional chaining を使うことで上記のコードを簡潔に書くことができます。

```text
let id = null;
if (user) {
  id = user.id;
}
``````````````````````````
const id = user?.id;
```

なるほどたしかに

