---
title: "UComboBoxString"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
  - 下拉框

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UComboBoxString.md
verified_by: agent
unverified_items: []
---

## 概述

UComboBoxString 是下拉选择框控件，允许用户从下拉菜单中选择一个选项。

## 主要属性

- `TArray<FString> DefaultOptions` - 默认选项列表
- `FString SelectedOption` - 默认选中的选项
- `FOnSelectionChangedEvent__ComboBoxString OnSelectionChanged` - 选项变化时调用
- `FOnOpeningEvent__ComboBoxString OnOpening` - 下拉框打开时调用
- `float32 MaxListHeight` - 下拉列表最大高度
- `bool HasDownArrow` - 是否显示下拉箭头
- `FSlateFontInfo Font` - 默认字体
- `FSlateColor ForegroundColor` - 前景色
- `FMargin ContentPadding` - 内容填充
- `bool bIsFocusable` - 是否可获取焦点

## 主要方法

### 选项管理

- `AddOption(FString Option)` - 添加选项
- `bool RemoveOption(FString Option)` - 移除选项
- `ClearOptions()` - 清除所有选项
- `ClearSelection()` - 清除选择
- `RefreshOptions()` - 刷新选项列表

### 选择

- `FString GetSelectedOption() const` - 获取选中选项
- `int GetSelectedIndex() const` - 获取选中索引
- `SetSelectedOption(FString Option)` - 设置选中选项
- `SetSelectedIndex(int Index)` - 设置选中索引

### 查询

- `int GetOptionCount() const` - 获取选项数量
- `FString GetOptionAtIndex(int Index) const` - 按索引获取选项
- `int FindOptionIndex(FString Option) const` - 按选项查找索引
- `bool IsOpen() const` - 下拉框是否打开

## 示例

```angelscript
// 添加选项
UComboBoxString ComboBox = GetComboBoxWidget();
ComboBox.AddOption("Easy");
ComboBox.AddOption("Normal");
ComboBox.AddOption("Hard");
ComboBox.SetSelectedOption("Normal");

// 绑定选择变化事件
ComboBox.OnSelectionChanged.AddUFunction(this, n"OnDifficultyChanged");

void OnDifficultyChanged(FString SelectedItem, ESelectInfo SelectionType)
{
    Print("选择难度: " + SelectedItem);
}

// 获取当前选择
FString Current = ComboBox.GetSelectedOption();
int Index = ComboBox.GetSelectedIndex();
```

## 相关页面

- [[UUserWidget]] - 用户控件基类

## 来源

- [UComboBoxString.md](../../raw/API/Global/UComboBoxString.md)
