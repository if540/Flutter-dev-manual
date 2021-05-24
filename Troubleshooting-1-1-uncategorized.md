# Troubleshooting-1-1 uncategorized

故障排除

- RangeError (index): Index out of range: no indices are valid: 0
  - got empty list 當你有取 list[index] 時，你的 list 不得為空
  - [stackoverflow answer](https://stackoverflow.com/questions/61027296/rangeerror-index-index-out-of-range-no-indices-are-valid-0)

- RichText widgets require a Directionality widget ancestor.

  Flutter 中 Text 組件需要設置文本方向，通常發生在沒有包裹在 App widget 下(ex: MaterialApp...)
    - Text widget 設定 textDirection: TextDirection.ltr,
    - [錯誤記錄 - Flutter 組件報錯](https://blog.csdn.net/shulianghan/article/details/115262342)

- No MediaQuery widget ancestor found.

  The Scaffold is designed to be a top level `container for a MaterialApp.`


待解決

- clip iOS for web 高度計算錯誤(官方處理中 [#82516](https://github.com/flutter/flutter/issues/82516))
  - [flutter-image-blend](https://github.com/ryoheinagao/flutter-image-blend/blob/master/lib/main.dart) shaderMask web 不支援
  - [Flutter-ShapeOfView](https://github.com/florent37/Flutter-ShapeOfView) 只有 Circle shape 沒問題
  - canvas.drawImage 一樣得用 clip 所以
