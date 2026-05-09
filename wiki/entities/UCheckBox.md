---
title: "UCheckBox"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
  - 开关
---

## 概述

UCheckBox 是复选框控件，支持三种状态：未选中、选中和不确定。可用作经典复选框、切换按钮或单选按钮。

**特性**：单子控件、切换

## 主要属性

- `FOnCheckBoxComponentStateChanged OnCheckStateChanged` - 选中状态变化时调用
- `FCheckBoxStyle WidgetStyle` - 复选框样式
- `EHorizontalAlignment HorizontalAlignment` - 内容水平对齐
- `EButtonClickMethod ClickMethod` - 触发点击的鼠标操作类型
- `EButtonPressMethod PressMethod` - 触发点击的键盘操作类型
- `EButtonTouchMethod TouchMethod` - 触发点击的触摸操作类型
- `bool IsFocusable` - 是否可获取焦点

## 主要方法

- `ECheckBoxState GetCheckedState() const` - 获取完整选中状态
- `bool IsChecked() const` - 是否选中
- `bool IsPressed() const` - 是否正在按下
- `SetCheckedState(ECheckBoxState InCheckedState)` - 设置选中状态
- `SetIsChecked(bool InIsChecked)` - 设置是否选中
- `SetClickMethod(EButtonClickMethod InClickMethod)` - 设置点击方法
- `SetPressMethod(EButtonPressMethod InPressMethod)` - 设置按压方法
- `SetTouchMethod(EButtonTouchMethod InTouchMethod)` - 设置触摸方法

## 示例

```angelscript
// 绑定复选框事件
UCheckBox MyCheckBox = GetCheckBoxWidget();
MyCheckBox.OnCheckStateChanged.AddUFunction(this, n"OnCheckChanged");

void OnCheckChanged(bool bIsChecked)
{
    Print("选中状态: " + bIsChecked);
}

// 设置选中状态
MyCheckBox.SetIsChecked(true);

// 检查状态
if (MyCheckBox.IsChecked())
{
    Print("已选中");
}
```

## 相关页面

- [[UButton]] - 按钮控件
- [[UUserWidget]] - 用户控件基类

## 来源

- [UCheckBox.md](../../raw/API/Global/UCheckBox.md)
