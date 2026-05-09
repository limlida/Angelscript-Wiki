---
title: "UScrollBox"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
  - 滚动
---

## 概述

UScrollBox 是可滚动的控件集合容器，适合展示 10~100 个控件列表。不支持虚拟化。

## 主要属性

### 滚动行为

- `EOrientation Orientation` - 滚动方向（水平/垂直）
- `float32 WheelScrollMultiplier` - 鼠标滚轮滚动倍数
- `bool bAnimateWheelScrolling` - 滚轮滚动时是否平滑动画
- `float32 ScrollAnimationInterpolationSpeed` - 滚动动画插值速度
- `bool AllowOverscroll` - 是否允许惯性过度滚动
- `bool bEnableTouchScrolling` - 是否允许触摸滚动
- `bool bAllowRightClickDragScrolling` - 是否允许右键拖拽滚动

### 滚动条

- `ESlateVisibility ScrollBarVisibility` - 滚动条可见性
- `bool AlwaysShowScrollbar` - 是否始终显示滚动条
- `FVector2D ScrollbarThickness` - 滚动条粗细
- `FMargin ScrollbarPadding` - 滚动条填充

### 事件

- `FOnUserScrolledEvent OnUserScrolled` - 用户滚动时调用

### 焦点

- `bool bIsFocusable` - 是否可获取焦点
- `EScrollWhenFocusChanges ScrollWhenFocusChanges` - 焦点变化时是否滚动

## 主要方法

### 滚动控制

- `SetScrollOffset(float32 NewScrollOffset)` - 设置滚动偏移（Slate 单位）
- `float32 GetScrollOffset() const` - 获取当前滚动偏移
- `float32 GetScrollOffsetOfEnd() const` - 获取底端滚动偏移
- `ScrollToStart()` - 滚动到顶部
- `ScrollToEnd()` - 滚动到底部
- `ScrollWidgetIntoView(UWidget WidgetToFind, bool AnimateScroll = true, EDescendantScrollDestination ScrollDestination = IntoView, float32 Padding = 0.0)` - 滚动到指定控件

### 查询

- `float32 GetViewFraction() const` - 获取当前可见区域比例
- `bool GetIsScrolling() const` - 是否正在惯性滚动
- `float32 GetOverscrollPercentage() const` - 获取过度滚动百分比

### 控制

- `EndInertialScrolling()` - 立即停止惯性滚动
- `SetOrientation(EOrientation NewOrientation)` - 设置滚动方向
- `SetWheelScrollMultiplier(float32 NewWheelScrollMultiplier)` - 设置滚轮倍数

## 示例

```angelscript
// 滚动到底部
UScrollBox ChatScroll = GetChatScrollBox();
ChatScroll.ScrollToEnd();

// 滚动到指定控件
ChatScroll.ScrollWidgetIntoView(TargetWidget, true);

// 监听滚动事件
ChatScroll.OnUserScrolled.AddUFunction(this, n"OnChatScrolled");

void OnChatScrolled(float32 CurrentOffset)
{
    Print("滚动偏移: " + CurrentOffset);
}
```

## 相关页面

- [[UUserWidget]] - 用户控件基类

## 来源

- [UScrollBox.md](../../raw/API/Global/UScrollBox.md)
