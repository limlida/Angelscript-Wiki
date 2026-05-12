---
title: "UBehaviorTree"
category: entities
date: 2026-05-09
tags:
  - AI
  - 行为树

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UBehaviorTree.md
verified_by: agent
unverified_items: []
---

## 概述

UBehaviorTree 是行为树资产，定义了 AI 的决策逻辑结构。行为树由任务节点（[[UBTTaskNode]]）、装饰器（[[UBTDecorator]]）和服务（[[UBTService]]）组成，通过 [[AAIController]] 的 `RunBehaviorTree()` 方法启动执行。

**行为树核心概念**：
- **任务（Task）**：叶节点，执行实际动作
- **装饰器（Decorator）**：条件节点，控制执行流程
- **服务（Service）**：后台节点，周期性更新 AI 知识
- **黑板（Blackboard）**：数据存储，在节点间共享信息

## 使用方式

```angelscript
// 在 AIController 中运行行为树
AAIController AICon = Cast<AAIController>(GetController());
if (AICon != nullptr)
{
    UBehaviorTree BT = Cast<UBehaviorTree>(BehaviorTreeAsset);
    AICon.RunBehaviorTree(BT);
}
```

## 相关页面

- [[AAIController]] - AI 控制器
- [[UBTTaskNode]] - 行为树任务节点
- [[UBTDecorator]] - 行为树装饰器
- [[UBTService]] - 行为树服务

## 来源

- [UBehaviorTree.md](../../raw/API/Global/UBehaviorTree.md)
