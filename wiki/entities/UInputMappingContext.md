---
title: "UInputMappingContext"
category: entities
date: 2026-05-09
tags:
  - 输入
  - EnhancedInput
---

## 概述

UInputMappingContext 是 Enhanced Input 系统中的输入映射上下文，定义了一组按键到 [[UInputAction]] 的映射关系。通过在不同场景切换不同的 MappingContext，可以实现上下文相关的输入方案。

**核心用途**：
- 定义不同场景的按键映射（步行、驾驶、菜单）
- 支持按键重绑定
- 支持输入模式过滤（键盘/手柄）

## 主要属性

- `FText ContextDescription` - 本地化的上下文描述
- `FInputMappingContextMappingData DefaultKeyMappings` - 默认按键映射列表
- `EMappingContextInputModeFilterOptions InputModeFilterOptions` - 输入模式过滤选项
- `FGameplayTagQuery InputModeQueryOverride` - 自定义输入模式查询
- `TMap<FString, FInputMappingContextMappingData> MappingProfileOverrides` - 按键配置文件覆盖
- `EMappingContextRegistrationTrackingMode RegistrationTrackingMode` - 多次 AddMappingContext 的行为

## 主要方法

### 映射操作

- `FEnhancedActionKeyMapping& MapKey(const UInputAction Action, FKey ToKey)` - 将按键映射到动作
- `UnmapAll()` - 取消所有映射
- `UnmapAllKeysFromAction(const UInputAction Action)` - 取消指定动作的所有按键映射
- `UnmapKey(const UInputAction Action, FKey Key)` - 取消指定动作的指定按键映射

## 示例

```angelscript
// 添加映射上下文
UEnhancedInputLocalPlayerSubsystem InputSub = GetLocalPlayer().GetSubsystem<UEnhancedInputLocalPlayerSubsystem>();
InputSub.AddMappingContext(WalkingIMC, 0);

// 切换到驾驶映射上下文（更高优先级）
InputSub.AddMappingContext(DrivingIMC, 1);

// 移除驾驶映射上下文
InputSub.RemoveMappingContext(DrivingIMC);

// 动态修改映射
WalkingIMC.MapKey(IA_Jump, EKeys::SpaceBar);
```

## 相关页面

- [[UInputAction]] - 输入动作
- [[UEnhancedInputComponent]] - 增强输入组件
- [[UTkInputConfig]] - 项目自定义输入配置

## 来源

- [UInputMappingContext.md](../../raw/API/Global/UInputMappingContext.md)
