---
title: "ATkPlayerState"
category: entities
date: 2026-05-09
tags:
  - Actor
  - 游戏特定
  - PlayerState

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/ATkPlayerState.md
verified_by: agent
unverified_items: []
---

## 概述

ATkPlayerState 是项目自定义的玩家状态类，继承自 [[APlayerState]]。它在标准 PlayerState 的基础上增加了角色方向、GameplayTag、输入向量和目标距离等游戏特定数据，是游戏中获取玩家运行时状态的核心入口。

## 主要方法

### 角色方向

- `FName GetCharacterCurrentDirection() const` - 获取角色当前朝向方向名称

### GameplayTag

- `FGameplayTagContainer GetCharacterCurrentGameplayTags() const` - 获取角色当前拥有的所有 GameplayTag 容器

### 输入相关

- `FVector GetCharacterLastInputVector() const` - 获取角色上一次的输入向量
- `ETkMoveDirInputType GetCharacterMoveDirInput() const` - 获取角色移动方向输入类型

### 目标相关

- `float32 GetDistanceWithCurrentTarget() const` - 获取角色与当前目标的距离
- `UpdateDistanceWithCurrentTarget()` - 更新与当前目标的距离

## 示例

```angelscript
// 获取玩家当前方向
ATkPlayerState TkPS = Cast<ATkPlayerState>(PlayerState);
if (TkPS != nullptr)
{
    FName Dir = TkPS.GetCharacterCurrentDirection();
    Print("当前方向: " + Dir.ToString());

    // 检查角色是否拥有特定 GameplayTag
    FGameplayTagContainer Tags = TkPS.GetCharacterCurrentGameplayTags();
    if (Tags.HasTag(n"State.Sprinting"))
    {
        Print("角色正在冲刺");
    }

    // 获取与目标的距离
    float Dist = TkPS.GetDistanceWithCurrentTarget();
    Print("与目标距离: " + Dist);
}
```

## 来源

- [ATkPlayerState.md](../../raw/API/Global/ATkPlayerState.md)
