# nuxtjs firebase ui window is not defined

```javascript
<template>
  <div id="firebaseui-auth-container"></div>
</template>

<script>
if (process.browser) { // add this or use mounted

  var firebase = require('firebase')
  var firebaseui = require('firebaseui')

  const config = {
    apiKey: 'xxxxxxxxxxxxxxxxx-xxxxxxxxxxxxxx',
    authDomain: 'xxxxxxxxxxxxxx.firebaseapp.com',
    databaseURL: 'https://xxxxxxxxxxxxxx.firebaseio.com',
    projectId: 'xxxxxxxxxxxxxx-xxxxxxxxxxxxxx',
    storageBucket: 'xxxxxxxxxxxxxx-xxxxxxxxxxxxxx.appspot.com',
    messagingSenderId: 'xxxxxxxxxxxxxx',
    appId: '1:xxxxxxxxxxxxxx:web:xxxxxxxxxxxxxx'
  }

  firebase.initializeApp(config)

  const uiConfig = {
    signInSuccessUrl: '/',
    signInOptions: [
      firebase.auth.GoogleAuthProvider.PROVIDER_ID,
      firebase.auth.EmailAuthProvider.PROVIDER_ID
    ]
  }
  const ui = new firebaseui.auth.AuthUI(firebase.auth())
  ui.start('#firebaseui-auth-container', uiConfig)
}

export default {
  name: 'PageIndex'
}
</script>

```

{% embed url="https://github.com/nuxt/nuxt.js/issues/30" %}



