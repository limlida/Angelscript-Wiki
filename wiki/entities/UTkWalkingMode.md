---
title: "UTkWalkingMode"
category: entities
date: 2026-05-09
tags:
  - MovementMode
  - 游戏特定
  - 移动
---

## 概述

UTkWalkingMode 是项目自定义的行走移动模式，定义了角色在地面行走时的各种速度和加速度参数。它继承自 UE 的移动模式系统，提供了行走、奔跑和冲刺三种步态的完整配置。

**核心用途**：通过调整这些参数来控制角色的地面移动手感，包括加速、减速、转向等。

## 主要属性

### 速度配置

- `float32 WalkSpeed` - 行走速度
- `float32 RunSpeed` - 奔跑速度
- `float32 SprintSpeed` - 冲刺速度
- `float32 CrouchSpeed` - 蹲下速度

### 加速度配置

- `float32 WalkAcceleration` - 行走加速度
- `float32 RunAcceleration` - 奔跑加速度
- `float32 SprintAcceleration` - 冲刺加速度

### 减速配置

- `float32 StoppingDeceleration` - 停止减速度
- `float32 GaitChangeDeceleration` - 步态切换减速度

### 转向配置

- `float32 WalkRunTurnStrength` - 行走/奔跑转向力度
- `float32 SprintTurnStrength` - 冲刺转向力度

### 朝向配置

- `float32 IdleFacingTime` - 空闲朝向过渡时间
- `float32 WalkRunFacingTime` - 行走/奔跑朝向过渡时间
- `float32 SprintFacingTime` - 冲刺朝向过渡时间

## 示例

```angelscript
// 修改行走模式参数
UTkWalkingMode WalkMode = Cast<UTkWalkingMode>(MovementMode);
if (WalkMode != nullptr)
{
    WalkMode.WalkSpeed = 300.0f;
    WalkMode.RunSpeed = 600.0f;
    WalkMode.SprintSpeed = 900.0f;
    WalkMode.SprintAcceleration = 2000.0f;
    Print("行走模式参数已更新");
}
```

## 相关页面

- [[APawn]] - Pawn 基类
- [[ACharacter]] - Character 基类

## 来源

- [UTkWalkingMode.md](../../raw/API/Global/UTkWalkingMode.md)
