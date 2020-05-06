# worker api batch

redisメモリにデータを保持するため、高速。

{% embed url="https://dev.classmethod.jp/articles/in-memory-kvs-redis/" %}

kvs インメモリなら、redisとか

永続化なら、firestore,dynamo

### つくってみる

10人 ランキング 1st 10 2nd 9 .. 10 1 計算しまくる

ランダムにスコアを追加し続けるサーバーを1台

ゲットして表示するサーバーを１台

でやってみよう



