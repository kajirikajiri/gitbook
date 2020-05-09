# Promise.allSettled

{% embed url="https://tc39.es/ecma262/\#sec-intro" %}



> **`Promise.allSettled()`** メソッドは、与えられたすべてのプロミスが解決されたか拒否された後に、それぞれのプロミスの結果を記述した配列オブジェクトで解決されるプロミスを返します。

　Promise.allとは違うのか

```text
var p = Promise.all([1,2,3]);
// this will be counted as if the iterable passed contains only the resolved promise with value "444", so it gets fulfilled
var p2 = Promise.all([1,2,3, Promise.resolve(444)]);
// this will be counted as if the iterable passed contains only the rejected promise with value "555", so it gets rejected
var p3 = Promise.all([1,2,3, Promise.reject(555)]);

// using setTimeout we can execute code after the stack is empty
setTimeout(async () => {
    console.log(await p);
    console.log(await p2);
    console.log(await p3);
});

// > Array [1, 2, 3]
// > Array [1, 2, 3, 444]
```

```text
const promise1 = Promise.resolve(3);
const promise2 = new Promise((resolve, reject) => setTimeout(reject, 100, 'foo'));
const promises = [promise1, promise2];

Promise.allSettled(promises).
  then((results) => results.forEach((result) => console.log(result)));

// expected output:
// > Object { status: "fulfilled", value: 3 }
// > Object { status: "rejected", reason: "foo" }

```

Promise.allは失敗したら何も返ってこないようだ

Promise.allSettledは失敗したものは失敗した事がわかる

