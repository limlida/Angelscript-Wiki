---
title: "UUserWidget"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UUserWidget.md
verified_by: agent
unverified_items: []
---

## 概述

UUserWidget 是通过 Widget Blueprint 实现 UI 可扩展性的控件基类。它是 UMG（Unreal Motion Graphics）系统的核心，所有自定义 UI 都继承自此类。

**核心功能**：
- 添加到视口显示
- 动画播放控制
- 输入事件处理
- 拖放操作
- 控件生命周期管理

## 主要属性

### 外观

- `FLinearColor ColorAndOpacity` - 控件的颜色和不透明度，影响所有子控件
- `FSlateColor ForegroundColor` - 前景色，子控件中标记为继承的颜色属性使用此颜色
- `FMargin Padding` - 内容周围的填充区域

### 行为

- `bool bIsFocusable` - 是否允许此控件接受焦点
- `EWidgetTickFrequency TickFrequency` - 控件 Tick 频率
- `int Priority` - 优先级
- `bool bStopAction` - 是否停止动作

### 事件

- `FOnVisibilityChangedEvent OnVisibilityChanged` - 可见性变化时调用

## 主要方法

### 添加到屏幕

- `AddToViewport(int ZOrder = 0)` - 添加到游戏视口，填充整个屏幕
- `bool AddToPlayerScreen(int ZOrder = 0)` - 添加到玩家屏幕区域（分屏时仅显示在玩家区域）

### 控件管理

- `UWidget GetRootWidget() const` - 获取根控件
- `SetRootWidget(UWidget NewRootWidget)` - 设置根控件
- `UWidget ConstructWidget(UClass WidgetClass, FName WidgetName = NAME_None)` - 构造子控件
- `bool RemoveWidget(UWidget WidgetToRemove)` - 移除子控件
- `GetAllWidgets(TArray<UWidget>& Widgets) const` - 获取所有子控件

### 动画播放

- `PlayAnimation(UWidgetAnimation InAnimation, float32 StartAtTime = 0, int NumLoopsToPlay = 1, EUMGSequencePlayMode PlayMode = Forward, float32 PlaybackSpeed = 1.0, bool bRestoreState = false)` - 播放动画
- `PlayAnimationForward(UWidgetAnimation InAnimation, float32 PlaybackSpeed = 1.0, bool bRestoreState = false)` - 正向播放动画
- `PlayAnimationReverse(UWidgetAnimation InAnimation, float32 PlaybackSpeed = 1.0, bool bRestoreState = false)` - 反向播放动画
- `StopAnimation(const UWidgetAnimation InAnimation)` - 停止动画
- `StopAllAnimations()` - 停止所有动画
- `float32 PauseAnimation(const UWidgetAnimation InAnimation)` - 暂停动画
- `ReverseAnimation(const UWidgetAnimation InAnimation)` - 反转动画播放方向
- `bool IsAnimationPlaying(const UWidgetAnimation InAnimation) const` - 动画是否正在播放
- `bool IsAnyAnimationPlaying() const` - 是否有任何动画正在播放
- `float32 GetAnimationCurrentTime(const UWidgetAnimation InAnimation) const` - 获取动画当前时间

### 动画事件绑定

- `BindToAnimationStarted(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate)` - 绑定动画开始事件
- `BindToAnimationFinished(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate)` - 绑定动画结束事件
- `UnbindFromAnimationStarted(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate)` - 解绑动画开始事件
- `UnbindFromAnimationFinished(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate)` - 解绑动画结束事件

### 生命周期

- `OnInitialized()` - 仅在游戏时间调用一次，用于一次性初始化
- `Construct()` - 底层 Slate 控件构造后调用，可能被多次调用
- `Destruct()` - 控件不再被引用时调用
- `PreConstruct(bool IsDesignTime)` - 游戏和编辑器都会调用

### 视口位置

- `SetPositionInViewport(FVector2D Position, bool bRemoveDPIScale = true)` - 设置在视口中的位置
- `SetAlignmentInViewport(FVector2D Alignment)` - 设置在视口中的对齐方式
- `SetAnchorsInViewport(FAnchors Anchors)` - 设置在视口中的锚点
- `SetDesiredSizeInViewport(FVector2D Size)` - 设置在视口中的大小

### 外观设置

- `SetColorAndOpacity(FLinearColor InColorAndOpacity)` - 设置颜色和不透明度
- `SetForegroundColor(FSlateColor InForegroundColor)` - 设置前景色
- `SetPadding(FMargin InPadding)` - 设置填充

### 拥有者

- `SetOwningPlayer(APlayerController LocalPlayerController)` - 设置关联的玩家控制器
- `APawn GetOwningPlayerPawn() const` - 获取关联的玩家 Pawn
- `APlayerCameraManager GetOwningPlayerCameraManager() const` - 获取关联的玩家相机管理器

### 输入

- `ListenForInputAction(FName ActionName, EInputEvent EventType, bool bConsume, FOnInputAction Callback)` - 监听输入动作
- `StopListeningForInputAction(FName ActionName, EInputEvent EventType)` - 停止监听输入动作
- `StopListeningForAllInputActions()` - 停止监听所有输入动作
- `RegisterInputComponent()` - 注册输入组件
- `UnregisterInputComponent()` - 取消注册输入组件

### 鼠标和触摸事件

- `OnMouseButtonDown(FGeometry MyGeometry, FPointerEvent MouseEvent)` - 鼠标按下
- `OnMouseButtonUp(FGeometry MyGeometry, FPointerEvent MouseEvent)` - 鼠标释放
- `OnMouseMove(FGeometry MyGeometry, FPointerEvent MouseEvent)` - 鼠标移动
- `OnMouseEnter(FGeometry MyGeometry, FPointerEvent MouseEvent)` - 鼠标进入
- `OnMouseLeave(FPointerEvent MouseEvent)` - 鼠标离开
- `OnMouseWheel(FGeometry MyGeometry, FPointerEvent MouseEvent)` - 鼠标滚轮
- `OnTouchStarted(FGeometry MyGeometry, FPointerEvent InTouchEvent)` - 触摸开始
- `OnTouchEnded(FGeometry MyGeometry, FPointerEvent InTouchEvent)` - 触摸结束

### 键盘事件

- `OnKeyDown(FGeometry MyGeometry, FKeyEvent InKeyEvent)` - 键盘按下
- `OnKeyUp(FGeometry MyGeometry, FKeyEvent InKeyEvent)` - 键盘释放
- `OnKeyChar(FGeometry MyGeometry, FCharacterEvent InCharacterEvent)` - 字符输入

### 拖放

- `OnDragDetected(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation& Operation)` - 检测到拖拽
- `bool OnDrop(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation Operation)` - 放下
- `OnDragEnter(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation Operation)` - 拖拽进入
- `OnDragLeave(FPointerEvent PointerEvent, UDragDropOperation Operation)` - 拖拽离开

## 示例

```angelscript
// 创建并显示 UI
UUserWidget MyWidget = WidgetBlueprintLibrary.Create(GetWorld(), WidgetClass);
if (MyWidget != nullptr)
{
    MyWidget.AddToViewport(0);
}

// 播放动画
MyWidget.PlayAnimation(ShowAnimation);

// 设置颜色
MyWidget.SetColorAndOpacity(FLinearColor(1.0f, 1.0f, 1.0f, 0.5f));

// 绑定动画结束事件
MyWidget.BindToAnimationFinished(HideAnimation, HideAnimFinishedDelegate);

// 从视口移除
MyWidget.RemoveFromViewport();
```

## 相关页面

- [[Widget]] - Widget 函数库命名空间
- [[UButton]] - 按钮控件
- [[UTextBlock]] - 文本控件
- [[UImage]] - 图片控件

## 来源

- [UUserWidget.md](../../raw/API/Global/UUserWidget.md)
