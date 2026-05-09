---
title: "Gameplay"
category: entities
date: 2026-05-09
tags:
  - 函数库
  - 游戏逻辑
  - 命名空间
---

## 定义
`Gameplay::` 是游戏逻辑函数库命名空间，来源于 C++ 的 `UGameplayStatics`。

## 常用函数

### 玩家相关
```angelscript
// 获取玩家控制器
APlayerController PC = Gameplay::GetPlayerController(0);

// 获取玩家 Pawn
APawn PlayerPawn = Gameplay::GetPlayerPawn(0);
```

### 关卡相关
```angelscript
// 打开关卡
Gameplay::OpenLevel(GetWorld(), n"NewLevelName");

// 获取当前关卡名
FString LevelName = Gameplay::GetCurrentLevelName(GetWorld());
```

### 伤害系统
```angelscript
// 应用伤害
Gameplay::ApplyDamage(TargetActor, DamageAmount, InstigatorController, DamageCauser, DamageTypeClass);
```

## 来源
[[函数库摘要]]
