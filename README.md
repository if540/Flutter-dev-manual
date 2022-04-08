# Flutter-dev-manual
Flutter 開發手冊

寫好型別，除了規範數據類型，還能讓 IDE 智能提示更佳友好。

## 開發隨筆

- 清空歷史並執行新的導向 `Navigator.of(ctx).popUntil(ModalRoute.withName('/login'));` like js `replace`
  - [Flutter中清空棧的方式](https://blog.csdn.net/Mr_Tony/article/details/112184802)
  - [Flutter中管理路由棧的方法和應用](https://zhuanlan.zhihu.com/p/56289929)
- [glass blur](https://stackoverflow.com/questions/43550853/how-do-i-do-the-frosted-glass-effect-in-flutter)
  - clip rect 帶圓角 `ClipRRect borderRadius: BorderRadius.circular(8.0)`
- PWA 現階段相容跟適用場景還存在一些問題，其次是使用習慣尚未發生巨大生態改變
  - 主動詢問是否安裝，相容低 [BeforeInstallPromptEvent](https://developer.mozilla.org/zh-CN/docs/Web/API/BeforeInstallPromptEvent)
  - [Progressive Web App 自主管理推薦安裝提示 (3)](https://ithelp.ithome.com.tw/m/articles/10263950)
  - flutter run -d 開發執行下不支援

學習資源:
- [組件化和平台化](https://www.kancloud.cn/alex_wsc/flutter_demo/1572034)
- [GlobalKey](https://juejin.cn/post/6844903811870359559)
- [Flutter Fully Responsive Design UI - Mobile, Tablet and Web(youtube)](https://www.youtube.com/watch?v=0mp-Ok00WZE)
- [Flutter測試框架以及Mockito Package使用範例](https://ithelp.ithome.com.tw/articles/10223393)
- [Simulating HTTP request/response workflow for effective testing in Dart/Flutter via http-mock-adapter](https://lomsa.medium.com/simulating-http-request-response-workflow-for-effective-testing-in-dart-flutter-via-7d53ddb724d6)
- [源碼篇：Flutter Provider的另一面（萬字圖文+插件）](https://juejin.cn/post/6968272002515894303)
- [Implementing complex UI with Flutter](https://www.youtube.com/watch?v=FCyoHclCqc8)
- [Keep it Simple, State: Architecture for Flutter Apps](https://www.youtube.com/watch?v=zKXz3pUkw9A)
- [Building games using Flame](https://www.youtube.com/watch?v=sFpjEH-ok2s)
