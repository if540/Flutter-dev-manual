# Data-15-2-provider

| 項目名                                        | 類型       | 功能描述                                                              | 供應者              |
|--------------------------------------------|----------|-------------------------------------------------------------------|------------------|
| ChangeNotifier                             | class    | 監聽器功能類(like eventEmitter)                                         | Flutter build-in |
| ∟ notifyListeners                          | function | 通知方法(like emit)                                                   | Flutter build-in |
|                                            |          |                                                                   |                  |
| class YourDataModel with ChangeNotifier {} | class    | 定義資料 model                                                        | 自訂               |
|                                            |          |                                                                   |                  |
| MultiProvider                              | class    | 多個資料管理，初始化數據模型                                                    | Provider package |
| ∟ ChangeNotifierProvider                   | class    | 單個資料管理，初始化數據模型                                                    | Provider package |
|                                            |          |                                                                   |                  |
| Provider.of                                | -        | 獲取及操作數據(like get one store module, you can getter or mutation...) | Provider package |
| Consumer                                   | class    | 獲取及操作數據(like get one store module, you can getter or mutation...) | Provider package |
