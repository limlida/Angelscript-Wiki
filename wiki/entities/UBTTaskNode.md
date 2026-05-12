---
title: "UBTTaskNode"
category: entities
date: 2026-05-09
tags:
  - AI
  - 行为树
  - Task

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UBTTaskNode.md
verified_by: agent
unverified_items: []
---

## 概述

UBTTaskNode 是行为树的任务节点，即叶节点，负责执行实际动作。任务是行为树中真正"做事"的节点。

**重要注意事项**：
- 默认情况下任务节点不是实例化的，模板节点在所有使用同一树资产的行为树组件间共享
- 如果节点未被实例化，**不要**在虚函数中修改对象属性
- 运行时属性应存储在 NodeMemory 块中

## 主要属性

- `bool bIgnoreRestartSelf` - 如果设置，当此任务被选中执行但已在运行时，将丢弃任务搜索

## 核心虚函数

- `ExecuteTask` - 执行任务，返回执行结果（Succeeded/Failed/InProgress/Aborted）
- `AbortTask` - 中止正在执行的任务
- `TickTask` - 每帧更新任务
- `OnMessage` - 接收消息时调用

## 常见子类

- [[UBTTask_MoveTo]] - 移动到目标位置
- [[UBTTask_Wait]] - 等待指定时间

## 示例

```angelscript
// 自定义行为树任务
class UMyBTTask : UBTTaskNode
{
    EBTNodeResult ExecuteTask(UBehaviorTreeComponent OwnerComp, uint8 NodeMemory) override
    {
        AAIController AICon = Cast<AAIController>(OwnerComp.GetOwner());
        if (AICon != nullptr)
        {
            APawn Pawn = AICon.GetControlledPawn();
            Print("执行自定义任务: " + Pawn.GetName());
            return EBTNodeResult::Succeeded;
        }
        return EBTNodeResult::Failed;
    }
}
```

## 相关页面

- [[UBehaviorTree]] - 行为树
- [[UBTDecorator]] - 装饰器
- [[UBTService]] - 服务

## 来源

- [UBTTaskNode.md](../../raw/API/Global/UBTTaskNode.md)
