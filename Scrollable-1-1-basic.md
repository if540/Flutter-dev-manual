# Scrollable-1-1-basic

可滾動的功能

### 基礎構造組成

* 可視範圍即容器
* 滾動行為的控制器 (scroll controller)
  *  `操控`與`監測` 滾動位置
     *  例 [ScrollController ](https://api.flutter.dev/flutter/widgets/ScrollController-class.html) 有 [animateTo](https://api.flutter.dev/flutter/widgets/ScrollController/animateTo.html) 的方法
  *  controller 做為區域公共控制器，可使用在不同位置上
     *  常見分為: 操控者與被控者，例如: tabBar 與 view...


學習資料:
- [Flutter | 老孟 ListView](http://laomengit.com/guide/widgets/ListView.html)
