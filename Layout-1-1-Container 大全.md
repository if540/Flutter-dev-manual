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

### margin, padding
```dart
Container(
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.all(10),
)
```

### transform
```dart
// translation
Container(
  transform: Matrix4.translationValues(30, 30, 0), // x, y, z
)
```
```dart
import 'package:vector_math/vector_math_64.dart' as vector;
Container(
  transform: Matrix4.translation(vector.Vector3(30, 30, 0)),
)
```

參考學習文章:
- [days[21] = "Layout是怎麼運作的？"](https://ithelp.ithome.com.tw/articles/10242088)
- [What is difference between Element and RenderObject in Flutter?
](https://stackoverflow.com/questions/64073264/what-is-difference-between-element-and-renderobject-in-flutter)
