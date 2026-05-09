### FGameViewportWidgetSlot


The default value fills the entire screen / player region.

**属性**:

- `FVector2D Alignment`
- `FAnchors Anchors`
- `FMargin Offsets`
- `int ZOrder [The higher the number, the more on top this widget will be.]`
- `bool bAutoRemoveOnWorldRemoved [Remove the widget when the Widget's World is removed.
@note The Widget is added to the GameViewportClient of the Widget's World. The GameViewportClient can migrate from World to World. The widget can stay visible if the owner of the widget also migrate.]`


**方法**:

- `FGameViewportWidgetSlot& opAssign(FGameViewportWidgetSlot Other)`

---

