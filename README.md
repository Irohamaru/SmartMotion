
# SmartMotion
半ブロックの隙間も通れます。    
当たり判定が小さいMotion移動データパック


## 対応バージョン
Minecraft JE 1.17-1.18    
(ブロックタグを修正すれば1.16も対応可能)

## 使い方
`smart_motion:debug` functionにサンプルコマンドを入れてあります。

### スコア・タグの設定
エンティティにSmartMotionタグを付与し    
sm.Speedスコアに速度を指定します。　(0～1000の範囲、100=1block/tick)    
    
エンティティはSmall:1bアーマースタンドがおすすめ。

| オプション | 説明 |
|:-:|:-:|
| Breakタグ | ブロックに当たると消える |
| Stickタグ | ブロックに当たるとくっつく |
| Bounceタグ | ブロックに当たると跳ね返る |
| sm.Gravityスコア | エンティティに重力を適用する |

### 外部からのTPについて
SmartMotionエンティティは次tickの予測座標を計算しています。    
tpする際は予測座標とのズレを防ぐために    
`/function smart_motion:core/tp`   を用いてください。

### ブロックのすり抜け指定
`#smart_motion:ignore_collision` ブロックタグに指定した    
フルブロックでないブロック（鉄格子や柵など）はすり抜けるようになります。

## 連絡先
https://twitter.com/irohamaru3


## License
This datapack is released under the MIT License.
