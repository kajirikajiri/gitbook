# typescript 導入 実働 既存 環境

発生したエラー

```text
ERROR  ERROR in /app/node_modules/@nuxt/types/config/build.d.ts(16,34):
16:34 Could not find a declaration file for module 'vue-loader'. '/app/node_modules/vue-loader/index.js' implicitly has an 'any' type.
  Try `npm install @types/vue-loader` if it exists or add a new declaration (.d.ts) file containing `declare module 'vue-loader';`    
    14 | import { Options as PugOptions } from 'pug'        
    15 | import { TerserPluginOptions } from 'terser-webpack-plugin'    
  > 16 | import { VueLoaderOptions } from 'vue-loader'      
       |                                  ^                 
    17 | import {      
    18 |   Configuration as WebpackConfiguration,           
    19 |   Loader as WebpackLoader,
```

解決策\(vue-loaderのupdate\)

{% code title="package.json" %}
```diff
- "vue-loader": "^14.1.0",
+ "vue-loader": "^15.9.1",
```
{% endcode %}

