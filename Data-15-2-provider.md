# Data-15-2-provider

### 數據模型

| 項目名                                        | 類型       | 功能描述                                                              | 供應者              |
|--------------------------------------------|----------|-------------------------------------------------------------------|------------------|
| ChangeNotifier                             | class    | 監聽器功能類(like eventEmitter)                                         | Flutter build-in |
| ∟ notifyListeners                          | function | 通知方法(like emit)                                                   | Flutter build-in |
| class YourDataModel with ChangeNotifier {} | class    | 定義資料 model                                                        | 自訂               |

<sub><sup>Data model gen https://app.quicktype.io/</sup></sub>


### 數據資料管理頂層

| 項目名                                        | 類型       | 功能描述                                                              | 供應者              |
|--------------------------------------------|----------|-------------------------------------------------------------------|------------------|
| MultiProvider                              | class    | 多個資料管理，初始化數據模型                                                    | Provider package |
| ∟ ChangeNotifierProvider                   | class    | 單個資料管理，初始化數據模型                                                    | Provider package |


### 獲取及操作數據

必需在 `MultiProvider` 或 `ChangeNotifierProvider` 下，才能使用 Provider.of 及 Consumer

| 項目名                                        | 類型       | 功能描述                                                              | 供應者              |
|--------------------------------------------|----------|-------------------------------------------------------------------|------------------|
| Provider.of                                | -        | 獲取及操作數據<br/>(like store module, getter,mutation...) | Provider package |
| Consumer                                   | class    | 獲取及操作數據<br/>(like store module, getter,mutation...) | Provider package |
