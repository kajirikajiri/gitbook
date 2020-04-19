# code-prettify nuxt



```javascript
  mounted () {
    // https://github.com/google/code-prettify/issues/578
    const prettyPrint = require('code-prettify')
    this.$nextTick(function () {
      prettyPrint.prettyPrint()
    })
  }
```

{% embed url="https://github.com/google/code-prettify/issues/578" %}

vuetifyのcodeタグとかぶってるのか？とかいろんな疑念が出てきたが解決できてよかった

しかし、mountedのたびにrequire?っていう気もする

