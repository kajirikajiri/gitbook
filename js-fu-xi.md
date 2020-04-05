# js 復習

 しらんかった

[http://memopad.bitter.jp/w3c/js/js\_datatypes.html](http://memopad.bitter.jp/w3c/js/js_datatypes.html)

```javascript
typeof [1,2,3,4]             // Returns "object" (not "array", see note below)
```

 nullはobject。。。まあ、わからなくもない。解説が面白いな `不幸にも、JavaScriptでは、null のデータ型はオブジェクトです。`

```javascript
var person = null;         // Value is null, but type is still an object
```

 そういうことだったのか。結果違うなくらいしか思ってなかった

```text
==	等しい
===	値と型が等しい
```

 こんなのあったんか

```text
instanceof	オブジェクトがオブジェクト型のインスタンスである場合に true を返します
```

 プロパティね

```text
オブジェクトのプロパティ
名前:値のペア（JavaScript オブジェクトにおける）は、プロパティと呼ばれます。

var person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};
```

 なにこれ、何に使うの

```text
var x = new String();        // Declares x as a String object
var y = new Number();        // Declares y as a Number object
var z = new Boolean();       // Declares z as a Boolean object
```

 いらないでしょこの機能

```text
myFunction();

// code here can use carName

function myFunction() {
    carName = "Volvo";
}
```

 細かいところはしらなかった

```text
ご存知ですか？
グローバル変数（または関数）は、ウィンドウ変数（または関数）を上書きできます。
ウィンドウオブジェクトを含むどの関数も、グローバル変数と関数を上書きすることができます。

JavaScript 変数の存続期間
JavaScript 変数の存続期間は、変数の宣言時に有効になります。

ローカル変数は、関数が完了すると削除されます。

グローバル変数は、ページを閉じると削除されます。
```

 いっつもlength\(\)ってかいてしまう

```text
var txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
var sln = txt.length;
```

 ほー

```text
=== 演算子を使用する場合、型と値の両方が等しくなければ、ブール値が同じでも等しくはなりません。

例
var x = false;             
var y = new Boolean(false);

// (x === y) is false because x and y have different types
```

```text
更に悪いことに、オブジェクトは比較できません：

例
var x = new Boolean(false);             
var y = new Boolean(false);

// (x == y) is false because objects cannot be compared
```

 そうなんかfor。forってオプション全部省けるのか。

```text
Statement 1 は、ループ（コードブロック）を開始する前に実行されます。

Statement 2 は、ループ（コードブロック）を実行するための条件を定義します。

Statement 3 は、ループ（コードブロック）が実行された後に毎回実行されます。
```

continueはしらんかった

```text
Continue 文
continue 文 は、指定の条件が発生した場合（ループ内の）1回の反復を抜け出し、ループ内の次の反復処理を続行します。

次の例では、値 3 をスキップします：

例
for (i = 0; i < 10; i++) {
    if (i === 3) { continue; }
    text += "The number is " + i + "<br>";
}
```

 巻き上げね。初期化は巻き上げられない。宣言のみ巻き上げられる。使わないけど。

```text
http://memopad.bitter.jp/w3c/js/js_hoisting.html
```

getonlyなんてあったんか

```text
get-only プロパティへの書き込みはできません：

"use strict";
var obj = {get x() {return 0} };

obj.x = 3.14;            // This will cause an error
```

 ほう

```text
"use strict" ディレクティブは、スクリプトや関数の先頭にないと認識されません。
```

次の **if** 文は、0 が false であるため、（多分期待に反して）**false** を返します：var x = 0;  
if \(x = 0\)[Try it Yourself »](http://memopad.bitter.jp/w3c/js/tryit.php?filename=tryjs_mistakes_equal_3)

代入は常に代入の値を返します。（訳注：？？？何を言いたいやら）&lt;= いやいや。返すでしょ。

```text
var x = 0
undefined
x = 0
0
```

```text
var x = y = 0
undefined
x
0
y
0
```

 そうだったんか

```text
switch 文が厳密な比較を使用していることを忘れるのは共通した間違いです：

次の場合の switch はアラートを表示します：

var x = 10;
switch(x) {
    case 10: alert("Hello");
}
次の場合の switch はアラートを表示しません：

var x = 10;
switch(x) {
    case "10": alert("Hello");
}
```

argumentsあったような

```text
arguments オブジェクト
JavaScript 関数は、arguments オブジェクトという組込みオブジェクトを持っています。

argument オブジェクトには、関数を呼び出すときに使用した引数の配列が含まれています。

つぎのように、数値のリストの中から最大値を探すための関数にも、簡単に利用できます：
```

 そうだったんか

```text
引数は値渡しです
関数呼び出しのパラメータは、関数の引数です。

JavaScript の引数は値渡しです。関数は、引数のアドレスではなく、値を取得します。

関数が、引数の値を変更しても、パラメータの元の値は変更されません。

引数を変更しても、関数の外からは見えません（反映されません）。
```

 コピーしたかったら、...でspread expression

```text
オブジェクトは参照渡しです
JavaScript では、オブジェクトは値を参照します。

このため、オブジェクトは参照により渡されたように動作します：

関数が、オブジェクトのプロパティを変更すると、元の値も変更されます。

オブジェクト・プロパティの変更は、関数の外からも見えます（反映されます）。
```

 そういえば、こうやって、thisつかえた。忘れてた

```text
var myObject = {
    firstName:"John",
    lastName: "Doe",
    fullName: function () {
        return this.firstName + " " + this.lastName;
    }
}
myObject.fullName();         // Will return "John Doe"
```

 これはいいことを知った

```text
XMLHttpRequest オブジェクト
最新のブラウザはすべてXMLHttpRequestオブジェクトをサポートしています。

XMLHttpRequestオブジェクトは、背後でサーバとデータ交換するために使用します。これは、ページ全体をリロードすることなく、 Webページの一部を更新することができることを意味しています。

XMLHttpRequest オブジェクトの作成
最新のブラウザ（Chrome、IE7+、Firefox、Safari、Opera）には、すべてXMLHttpRequestオブジェクトが組み込まれています。

XMLHttpRequestオブジェクトを作成するための構文：

variable = new XMLHttpRequest();
古いバージョンのInternet Explorer（IE5とIE6）はActiveXオブジェクトを使用します：

variable = new ActiveXObject("Microsoft.XMLHTTP");
IE5とIE6を含むすべてのブラウザで処理するには、ブラウザがXMLHttpRequestオブジェクトをサポートしているかどうかを確認します。 サポートしている場合はXMLHttpRequestオブジェクトを作成し、そうでない場合はActiveXObjectを作成します：

古いバージョンのInternet Explorer（IE5とIE6）
古いバージョンのInternet Explorer（IE5とIE6）はXMLHttpRequestオブジェクトをサポートしていません。

IE5とIE6で処理するには、ブラウザがXMLHttpRequestオブジェクトをサポートしているかどうかを確認するか、ActiveXObjectを作成します：

例
if (window.XMLHttpRequest) {
    // code for modern browsers
    xmlhttp = new XMLHttpRequest();
 } else {
    // code for old IE browsers
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
}
```

deleteって特定のだけ消せたんか

```text
オブジェクトのプロパティの削除
deleteキーワードを使用すると、JSONオブジェクトからプロパティを削除します：

例
delete myObj.cars.car2;
```

　個人的にはrustのメモリ管理のほうが好き

{% embed url="https://developer.mozilla.org/ja/docs/Web/JavaScript/Memory\_Management" %}



