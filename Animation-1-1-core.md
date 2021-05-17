# Animation-1-1-core

### Ticker

vsync 對象會綁定動畫的定時器到一個可視的 widget，所以當 widget 不顯示時，動畫定時器將會暫停，當 widget 再次顯示時，動畫定時器重新恢復執行，這樣就`可以避免動畫相關 UI 不在當前屏幕時消耗資源`。如果要使用自定義的 Stat 對象作為 vsync 時，請包含 TickerProviderStateMixin。

> Calls its callback once per animation frame.


| API                            | 說明                                                                |
|--------------------------------|-------------------------------------------------------------------|
| Ticker                         | Ticker 基礎類，每個動畫幀調用一次回調                                            |
| TickerProvider                 | An interface implemented by classes that can vend Ticker objects. |
| TickerProviderStateMixin       | 多支 ticker 需求                                                      |
| SingleTickerProviderStateMixin | 如果狀態裡只有一個 ticker 需求，建議使用 SingleTickerProviderStateMixin 一般來說會更高效  |
