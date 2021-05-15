# Layout-1-1-Container 大全

Layout機制的核心規則: 
> Parent 向下傳遞 constraints，child 向上傳遞 size，由 Parent 決定 child position

重要知識:

| 英/中                    | tree                                | 詳細描述                                                    |
|------------------------|-------------------------------------|---------------------------------------------------------|
| size / 尺寸              | renderObject > size | Flutter 裡用來代表所有具空間尺寸的寬高。                                |
| container / 容器         |                                     | Flutter 裡不好純粹的稱為 box 因為還具有上下約束的關係，所以稱 container 可能更為合適。 |
                                
## Container Widget

### size

在沒有 `child` 而且沒有給`大小`的狀況下，會依上層 `constraints` 限制，有多大就多大。
```dart
// 也就是說預設情況下，是會填滿父級最大最小的寬高約束。
Align(
  Container(
    color: Colors.red,
  )
)
```
### alignment
Align the [child] within the container.
```dart
Container(
  alignment: Alignment.center, // child 垂直水平置中
)
```

### margin, padding
```dart
Container(
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.all(10),
)
```

### transformAlignment
```dart
// 原點對齊
transformAlignment: AlignmentGeometry.lerp(Alignment.center, Alignment.center, 0.0),
```

### transform
```dart
// translationValues
Container(
  transform: Matrix4.translationValues(30, 30, 0), // x, y, z
)
```
```dart
// translation
import 'package:vector_math/vector_math_64.dart' as vector;
Container(
  transform: Matrix4.translation(vector.Vector3(30, 30, 0)),
)
```
```dart
// Matrix4.compose(translation, rotation, scale)
Container(
  transform: Matrix4.compose(
    vector.Vector3(30, 30, 0),
    vector.Quaternion.euler(0.0, 0.0, 45.0),
    vector.Vector3(1,1,0)
  ),
)
```
也可以再包一層 Transform widget 實現各項形變
```dart
Container(
  child: Transform.scale(2),
)
```
RotatedBox
與 Transform 不同的是， RotateBox widget 會改變節點實際位置，也會影響到上下節點的位置 `作用於layout階段`

用 css 描述 Transform widget 就像是 css 的 transfrom 會佔位，形變時不會影響前後元素位置，因此只需重渲自身定位，性能較高。

反觀 RotateBox 就像設定 margin 及 padding 一樣是相對定位，會影響前後的排版位置關係，因此渲染消耗性能就會較多。

```dart
Container(
  child: RotatedBox(
    quarterTurns: 1, //旋轉90度(1/4圈)
    child: Text('123'),
  ),
)
```
[更多 vector 操作](https://api.flutter.dev/flutter/vector_math/vector_math-library.html)

[變換（Transform）](https://book.flutterchina.club/chapter5/transform.html#_5-4-%E5%8F%98%E6%8D%A2-transform)

參考學習文章:
- [days[21] = "Layout是怎麼運作的？"](https://ithelp.ithome.com.tw/articles/10242088)
- [What is difference between Element and RenderObject in Flutter?
](https://stackoverflow.com/questions/64073264/what-is-difference-between-element-and-renderobject-in-flutter)
