# 5分でLambda Storeをつかってみた

{% embed url="https://console.lambda.store/login" %}

![&#x81EA;&#x5206;&#x306F;google&#x3067;&#x30ED;&#x30B0;&#x30A4;&#x30F3;&#x3057;&#x307E;&#x3057;&#x305F;](.gitbook/assets/image%20%281%29.png)

![&#x52DD;&#x624B;&#x306B;&#x8868;&#x793A;&#x3055;&#x308C;&#x308B;&#x306F;&#x305A;&#x3067;&#x3059;&#x304C;&#x3001;&#x305D;&#x3046;&#x3067;&#x306A;&#x3051;&#x308C;&#x3070;&#x3001;&#x53F3;&#x4E0A;&#x306E;&#x3000;+&#x3000;&#x3092;&#x62BC;&#x3057;&#x307E;&#x3057;&#x3087;&#x3046;](.gitbook/assets/image%20%287%29.png)

Free

Database名、regionを適当に。（test, US-EAST-1\(N. Virginia\)としました\)

![&#x3053;&#x3093;&#x306A;&#x753B;&#x9762;&#x304C;&#x8868;&#x793A;&#x3055;&#x308C;&#x308B;&#x306E;&#x3067;&#x3001;password&#x306E;&#x4E0B;&#x306E;CONNECT&#x3092;&#x62BC;&#x3057;&#x307E;&#x3057;&#x3087;&#x3046;](.gitbook/assets/image.png)

ポップアップ（だいあろぐ）が表示されたと思います。ここでは、nodeを選んでみました。

じぶんのpcで動作確認

```text
# nodeをdockerで起動
docker run -it --rm node bash

# redisをinstall
yarn add redis

# nodeを起動
node

# redisをrequire
redis = require('redis')

# Lamda Storeのサンプルの通り
var client = redis.createClient ({
  host : 'us1-excited-dog-30334.lambda.store',
  port : '30334',
  password: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  });
client.on("error", function(err) {
  throw err;
  });
client.set('foo','bar');

# 試しにget
client.get('foo', (e,r)=>console.log(r))
```

めっちゃ楽

消去も簡単

![](.gitbook/assets/image%20%284%29.png)

このデータベースは消去済みです

