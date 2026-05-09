---
title: "UButton"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
---

## 概述

UButton 是可点击的基础控件，可以在按钮内放置任何其他控件来创建更复杂的可交互 UI 元素。

**特性**：单子控件、可点击

## 主要属性

### 事件

- `FOnButtonClickedEvent OnClicked` - 按钮被点击时调用
- `FOnButtonPressedEvent OnPressed` - 按钮被按下时调用
- `FOnButtonReleasedEvent OnReleased` - 按钮被释放时调用
- `FOnButtonHoverEvent OnHovered` - 鼠标悬停时调用
- `FOnButtonHoverEvent OnUnhovered` - 鼠标离开时调用

### 外观

- `FButtonStyle WidgetStyle` - 按钮运行时样式
- `FLinearColor BackgroundColor` - 按钮背景颜色乘数
- `FLinearColor ColorAndOpacity` - 按钮内容颜色乘数

### 交互配置

- `EButtonClickMethod ClickMethod` - 触发点击所需的鼠标操作类型
- `EButtonPressMethod PressMethod` - 触发点击所需的键盘/手柄操作类型
- `EButtonTouchMethod TouchMethod` - 触发点击所需的触摸操作类型
- `bool IsFocusable` - 是否可通过键盘获取焦点
- `bool bAllowDragDrop` - 是否允许拖放

## 主要方法

- `bool IsPressed() const` - 用户是否正在按下按钮（不要用于检测点击，应使用 OnClicked 事件）
- `SetBackgroundColor(FLinearColor InBackgroundColor)` - 设置背景颜色
- `SetColorAndOpacity(FLinearColor InColorAndOpacity)` - 设置内容颜色
- `SetClickMethod(EButtonClickMethod InClickMethod)` - 设置点击方法
- `SetPressMethod(EButtonPressMethod InPressMethod)` - 设置按压方法
- `SetTouchMethod(EButtonTouchMethod InTouchMethod)` - 设置触摸方法
- `SetStyle(FButtonStyle InStyle)` - 设置样式
- `SetAllowDragDrop(bool bInAllowDragDrop)` - 设置是否允许拖放

## 示例

```angelscript
// 绑定按钮点击事件
UButton MyButton = GetButtonWidget();
MyButton.OnClicked.AddUFunction(this, n"OnButtonClicked");

void OnButtonClicked()
{
    Print("按钮被点击了！");
}

// 设置按钮颜色
MyButton.SetBackgroundColor(FLinearColor(0.5f, 0.5f, 0.5f, 1.0f));

// 检查按钮是否被按下
if (MyButton.IsPressed())
{
    Print("按钮正在被按下");
}
```

## 相关页面

- [[UUserWidget]] - 用户控件基类
- [[UTextBlock]] - 文本控件

## 来源

- [UButton.md](../../raw/API/Global/UButton.md)
