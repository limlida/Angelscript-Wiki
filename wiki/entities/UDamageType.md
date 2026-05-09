---
title: "UDamageType"
category: entities
date: 2026-05-09
tags:
  - 伤害
  - Gameplay
---

## 概述

UDamageType 定义和描述特定形式的伤害，为自定义不同来源的伤害响应提供途径。DamageType 永远不会被实例化，应视为不可变数据持有者。

**核心用途**：区分不同类型的伤害（火焰、物理、跌落等），在 `AnyDamage` 事件中根据伤害类型执行不同逻辑。

## 主要属性

- `float32 DamageFalloff` - 范围伤害衰减指数（1.0=线性，2.0=距离平方等）
- `float32 DamageImpulse` - 对受伤害 Actor 施加的冲量大小
- `float32 DestructibleDamageSpreadScale` - 可破坏网格上的伤害扩散比例
- `float32 DestructibleImpulse` - 对可破坏网格施加的冲量
- `bool bCausedByWorld` - 是否由世界造成（跌落出关卡、掉入岩浆等）
- `bool bRadialDamageVelChange` - 应用径向冲量时是否作为速度变化处理
- `bool bScaleMomentumByMass` - 是否按接收 Pawn 的质量缩放动量

## 示例

```angelscript
// 应用伤害时指定伤害类型
Gameplay.ApplyDamage(TargetActor, 50.0f, GetInstigatorController(), this, DamageTypeClass);

// 在接收伤害时检查类型
void AnyDamage(float32 Damage, const UDamageType DamageType, AController InstigatedBy, AActor DamageCauser) override
{
    if (DamageType.IsA(DamageType_FireClass))
    {
        Print("被火焰伤害！");
        Ignite();
    }
    else if (DamageType.bCausedByWorld)
    {
        Print("世界伤害（跌落等）");
    }
}
```

## 相关页面

- [[Gameplay]] - 游戏逻辑函数库（包含 ApplyDamage）

## 来源

- [UDamageType.md](../../raw/API/Global/UDamageType.md)
