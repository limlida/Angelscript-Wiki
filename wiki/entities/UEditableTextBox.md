---
title: "UEditableTextBox"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
  - 文本输入

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UEditableTextBox.md
verified_by: agent
unverified_items: []
---

## 概述

UEditableTextBox 允许用户输入自定义文本，仅支持单行文本输入。

**特性**：无子控件、文本输入

## 主要属性

### 文本

- `FText HintText` - 无文本时显示的提示文本
- `bool IsReadOnly` - 是否只读
- `bool IsPassword` - 是否为密码输入框
- `ETextJustify Justification` - 文本对齐方式
- `ETextOverflowPolicy OverflowPolicy` - 文本溢出策略
- `float32 MinimumDesiredWidth` - 最小期望宽度

### 事件

- `FOnEditableTextBoxChangedEvent OnTextChanged` - 文本变化时调用
- `FOnEditableTextBoxCommittedEvent OnTextCommitted` - 文本提交时调用（按回车或失去焦点）

### 行为

- `bool SelectAllTextWhenFocused` - 获得焦点时是否全选文本
- `bool ClearKeyboardFocusOnCommit` - 提交时是否清除键盘焦点
- `bool RevertTextOnEscape` - 按 Escape 是否恢复文本
- `bool AllowContextMenu` - 是否允许上下文菜单

## 主要方法

- `FText GetText() const` - 获取文本
- `SetText(FText InText)` - 设置文本
- `SetHintText(FText InText)` - 设置提示文本
- `SetIsReadOnly(bool bReadOnly)` - 设置只读
- `SetIsPassword(bool bIsPassword)` - 设置密码模式
- `SetJustification(ETextJustify InJustification)` - 设置对齐方式
- `SetForegroundColor(FLinearColor color)` - 设置前景色
- `SetError(FText InError)` - 设置错误提示
- `ClearError()` - 清除错误提示
- `bool HasError() const` - 是否有错误

## 示例

```angelscript
// 获取输入文本
UEditableTextBox NameInput = GetNameInputWidget();
FText PlayerName = NameInput.GetText();
Print("玩家输入: " + PlayerName.ToString());

// 设置提示文本
NameInput.SetHintText(FText::FromString("请输入名称..."));

// 绑定文本提交事件
NameInput.OnTextCommitted.AddUFunction(this, n"OnNameCommitted");

void OnNameCommitted(FText CommittedText, ETextCommit CommitType)
{
    if (CommitType == ETextCommit::OnEnter)
    {
        Print("提交名称: " + CommittedText.ToString());
    }
}

// 密码输入框
NameInput.SetIsPassword(true);
```

## 相关页面

- [[UTextBlock]] - 文本显示控件
- [[UUserWidget]] - 用户控件基类

## 来源

- [UEditableTextBox.md](../../raw/API/Global/UEditableTextBox.md)
