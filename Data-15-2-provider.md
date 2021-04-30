# Data-15-2-provider

### 數據資料管理頂層

| 項目名                                        | 類型       | 功能描述                                                              | 供應者              |
|--------------------------------------------|----------|-------------------------------------------------------------------|------------------|
| MultiProvider                              | class    | 多個資料管理，初始化數據模型                                                    | Provider package |
| ∟ ChangeNotifierProvider                   | class    | 單個資料管理，初始化數據模型                                                    | Provider package |


### 獲取及操作數據

必需在 `MultiProvider` 或 `ChangeNotifierProvider` 下，才能使用 Provider.of 及 Consumer

換句話說 Provider.of 或 Consumer 會向上尋找最近的 Proider 管理類

| 項目名                                        | 類型       | 功能描述                                                              | 供應者              |
|--------------------------------------------|----------|-------------------------------------------------------------------|------------------|
| Provider.of                                | static function  | 鏈式，獲取及操作數據<br/>(like store module, getter,mutation...) | Provider package |
| Consumer                                   | class    | 函式，獲取及操作數據<br/>(like store module, getter,mutation...) | Provider package |

### 數據模型

| 項目名                                        | 類型       | 功能描述                                                              | 供應者              |
|--------------------------------------------|----------|-------------------------------------------------------------------|------------------|
| ChangeNotifier                             | class    | 監聽器功能類(like eventEmitter)                                         | Flutter build-in |
| ∟ notifyListeners                          | function | 通知方法(like emit)                                                   | Flutter build-in |
| class YourDataModel with ChangeNotifier {} | class    | 定義資料 model                                                        | 自訂               |

<sub><sup>Data model gen https://app.quicktype.io/</sup></sub>


錯誤排除:

- [Porvider 和 setState() 錯誤](http://www.telihai.com/archives/9274/), [setState() or markNeedsBuild called during build](https://stackoverflow.com/questions/47592301/setstate-or-markneedsbuild-called-during-build)
 ```
  flutter: Another exception was thrown: setState() or markNeedsBuild() called during build.
  ```

學習資源:
- [Provider Package](https://github.com/rrousselGit/provider/blob/master/resources/translations/zh-CN/README.md)
- [Flutter 全域性狀態管理之 Provider 初探](https://iter01.com/442670.html)
- [Reactjs context](https://zh-hans.reactjs.org/docs/context.html)
- [Provider 之各種 XXProvider 的使用姿勢](https://juejin.cn/post/6844903903432032263)
- [Flutter Provider 之 FutureProvider 與 StreamProvider](https://iter01.com/449917.html)
- [flutter狀態管理](https://ailru.com/flutter/2019/07/22/flutter%E7%8A%B6%E6%80%81%E7%AE%A1%E7%90%86/)
- [簡單的應用狀態管理](https://flutter.cn/docs/development/data-and-backend/state-mgmt/simple#changenotifier)
- [Riverpod](https://riverpod.dev/)
