# react hook

この記事の一部を参照して、良さそうと感じた。stateがクラス以外で使える

{% embed url="https://qiita.com/Mitsuzara/items/98d1bc4a83265a764084\#%E3%83%95%E3%83%83%E3%82%AF%E9%96%A2%E6%95%B0%E3%82%B3%E3%83%B3%E3%83%9D%E3%83%BC%E3%83%8D%E3%83%B3%E3%83%88%E3%81%A7%E6%9B%B8%E3%81%8F%E3%81%A8%E3%81%A9%E3%82%93%E3%81%AA%E3%83%A1%E3%83%AA%E3%83%83%E3%83%88%E3%81%8C%E3%81%82%E3%82%8B%E3%81%AEthinking" %}

{% tabs %}
{% tab title="before" %}
```javascript
import React from 'react'

class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      count: 0
    }
  }

  render() {
    return (
      <>
        <p>You clicked {this.state.count} times</p>
        <button onClick={() => this.setState({ count: this.state.count + 1 })}>
          Click me
        </button>
      </>
    )
  }
}

export default App
```
{% endtab %}
{% endtabs %}

{% tabs %}
{% tab title="after" %}
```javascript
import React, { useState } from 'react'

const App = () => {
  const [count, setCount] = useState(0)

  return (
    <>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </>
  )
}

export default App
```
{% endtab %}
{% endtabs %}

すごい便利そう。ということで試してみた

## ためしてみた

{% tabs %}
{% tab title="動くものを作る" %}
```bash
npm init next-app nextjs-blog --example "https://github.com/zeit/next-learn-starter/tree/master/learn-starter"
cd nextjs-blog
npm run dev
```
{% endtab %}
{% endtabs %}

アクセス

{% embed url="http://localhost:3000" %}

これで動くものができたので、react hookを試す

現在のdirectoryはnextjs-blogだと思う

{% tabs %}
{% tab title="current directory nextjs-blog??" %}
```text
mkdir components
touch components/example.js
```
{% endtab %}
{% endtabs %}

　おきにいりのエディタでexample.jsを編集します

{% tabs %}
{% tab title="example.js" %}
```javascript
import React, { useState } from 'react';

function Example() {
  // Declare a new state variable, which we'll call "count"
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </div>
  );
}
```
{% endtab %}
{% endtabs %}

次に、pages/index.jsに２行追加

{% tabs %}
{% tab title="index.js" %}
```javascript
import Head from 'next/head'
import Example from '../components/example' // add

```
        <p className="description">
          Get started by editing <code>pages/index.js</code>
        </p>
        <Example/> // add

```
{% endtab %}
{% endtabs %}

ok

{% embed url="http://localhost:3000/" %}

![](../.gitbook/assets/image%20%289%29.png)

画面中央にclick meボタンが追加された。

reactはconstructorを書くのが使いづらいなと思っていたが、楽になってよかった。使いやすい

## 参照

{% embed url="https://ja.reactjs.org/docs/hooks-intro.html\#motivation" %}

{% embed url="https://qiita.com/Mitsuzara/items/98d1bc4a83265a764084" %}

{% embed url="https://nextjs.org/learn/basics/create-nextjs-app/setup" %}



