---
title: "UBlackboardData"
category: entities
date: 2026-05-09
tags:
  - AI
  - 行为树
  - 黑板
---

## 概述

UBlackboardData 定义了行为树黑板的数据结构，包含一组键（Key）。黑板是 AI 系统中的数据存储，用于在行为树节点间共享信息。

## 主要属性

- `TArray<FBlackboardEntry> Keys` - 黑板键列表
- `UBlackboardData Parent` - 父黑板（键可被覆盖，实现黑板继承）

## 示例

```angelscript
// 在编辑器中创建黑板资产并定义键：
// - Target (Object) - 目标 Actor
// - TargetLocation (Vector) - 目标位置
// - HasLineOfSight (Boolean) - 是否有视线
// - PatrolIndex (Integer) - 巡逻点索引

// 在 AIController 中使用黑板
AAIController AICon = Cast<AAIController>(GetController());
UBlackboardComponent BB = AICon.GetBlackboardComponent();
if (BB != nullptr)
{
    BB.SetValueAsObject(n"Target", EnemyActor);
    BB.SetValueAsVector(n"TargetLocation", EnemyLocation);
    BB.SetValueAsBool(n"HasLineOfSight", true);
}
```

## 相关页面

- [[AAIController]] - AI 控制器
- [[UBehaviorTree]] - 行为树

## 来源

- [UBlackboardData.md](../../raw/API/Global/UBlackboardData.md)
