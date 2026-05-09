---
title: "UBTService"
category: entities
date: 2026-05-09
tags:
  - AI
  - 行为树
  - Service
---

## 概述

UBTService 是行为树的服务节点，设计用于执行"后台"任务来更新 AI 的知识。服务在底层行为树分支变为活跃时执行，但与任务不同，它们不返回任何结果，也不能直接影响执行流程。

**核心用途**：
- 周期性执行检查（通过 TickNode），将结果存储在黑板中
- 在特定分支执行时创建标记（通过 OnBecomeRelevant/OnCeaseRelevant）

## 主要属性

### 定时配置

- `float32 Interval` - 服务后续 Tick 之间的时间间隔
- `float32 RandomDeviation` - 为间隔添加随机范围

### 行为配置

- `bool bCallTickOnSearchStart` - 任务搜索进入此节点时是否调用 Tick 事件
- `bool bRestartTimerOnEachActivation` - 如果设置，节点激活时下次 Tick 时间将重置为间隔值

## 核心虚函数

- `TickNode` - 周期性更新，执行检查并更新黑板
- `OnBecomeRelevant` - 服务变为相关时调用
- `OnCeaseRelevant` - 服务不再相关时调用
- `OnSearchStart` - 任务搜索开始时调用，必须瞬时完成

## 示例

```angelscript
// 自定义服务：更新最近敌人
class UMyBTService_UpdateTarget : UBTService
{
    void TickNode(UBehaviorTreeComponent OwnerComp, uint8 NodeMemory, float DeltaSeconds) override
    {
        Super::TickNode(OwnerComp, NodeMemory, DeltaSeconds);

        AAIController AICon = Cast<AAIController>(OwnerComp.GetOwner());
        if (AICon != nullptr)
        {
            // 查找最近敌人并更新黑板
            UBlackboardComponent BB = OwnerComp.GetBlackboardComponent();
            AActor NearestEnemy = FindNearestEnemy(AICon);
            if (BB != nullptr && NearestEnemy != nullptr)
            {
                BB.SetValueAsObject(n"Target", NearestEnemy);
            }
        }
    }
}
```

## 相关页面

- [[UBehaviorTree]] - 行为树
- [[UBTTaskNode]] - 任务节点
- [[UBTDecorator]] - 装饰器

## 来源

- [UBTService.md](../../raw/API/Global/UBTService.md)
