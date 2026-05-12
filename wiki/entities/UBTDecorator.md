---
title: "UBTDecorator"
category: entities
date: 2026-05-09
tags:
  - AI
  - 行为树
  - Decorator

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UBTDecorator.md
verified_by: agent
unverified_items: []
---

## 概述

UBTDecorator 是行为树的装饰器节点，放置在父子节点连接上，接收执行流通知并可以被 Tick。装饰器是行为树中的条件判断机制，决定某个分支是否可以执行。

**核心用途**：作为条件守卫，控制行为树分支的执行流程。当条件不满足时，装饰器可以中止正在执行的分支。

## 主要属性

- `bool bInverseCondition` - 如果设置，条件检查结果将被反转
- `EBTFlowAbortMode FlowAbortMode` - 流控制设置，决定装饰器条件变化时如何中止执行

## 核心虚函数

- `OnNodeActivation` - 节点激活时调用
- `OnNodeDeactivation` - 节点停用时调用
- `OnNodeProcessed` - 节点处理完成时调用
- `OnBecomeRelevant` - 装饰器变为相关时调用
- `OnCeaseRelevant` - 装饰器不再相关时调用
- `TickNode` - 每帧更新

## 示例

```angelscript
// 自定义装饰器：检查是否有目标
class UMyBTDecorator_HasTarget : UBTDecorator
{
    bool CalculateRawConditionValue(UBehaviorTreeComponent OwnerComp, uint8 NodeMemory) const override
    {
        UBlackboardComponent BB = OwnerComp.GetBlackboardComponent();
        if (BB != nullptr)
        {
            AActor Target = Cast<AActor>(BB.GetValueAsObject(n"Target"));
            return Target != nullptr;
        }
        return false;
    }
}
```

## 相关页面

- [[UBehaviorTree]] - 行为树
- [[UBTTaskNode]] - 任务节点
- [[UBTService]] - 服务

## 来源

- [UBTDecorator.md](../../raw/API/Global/UBTDecorator.md)
