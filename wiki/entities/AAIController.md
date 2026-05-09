---
title: "AAIController"
category: entities
date: 2026-05-09
tags:
  - Actor
  - Controller
  - AI
---

## 概述

AAIController 是 AI 控制 Pawn 的控制器基类，继承自 [[AController]]。它管理 Pawn 的人工智能行为，包括导航移动、行为树执行、感知系统等。**在网络游戏中，AIController 仅存在于服务器上。**

- **官方文档**: https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Controller/

## 主要属性

### 核心组件

- `UBrainComponent BrainComponent` - 负责行为的组件
- `UBlackboardComponent Blackboard` - 黑板组件
- `UPathFollowingComponent PathFollowingComponent` - 用于沿路径移动的组件
- `UAIPerceptionComponent PerceptionComponent` - AI 感知组件

### 导航配置

- `TSubclassOf<UNavigationQueryFilter> DefaultNavigationFilterClass` - 默认导航查询过滤器类

### 行为标志

- `bool bAllowStrafe` - 移动期间是否允许横移
- `bool bSetControlRotationFromPawnOrientation` - 没有焦点时是否将 Pawn 旋转复制到 ControlRotation
- `bool bSkipExtraLOSChecks` - 是否跳过对目标极点的额外视线追踪
- `bool bStartAILogicOnPossess` - 附身 Pawn 时是否启动 AI 逻辑
- `bool bStopAILogicOnUnposses` - 释放 Pawn 时是否停止 AI 逻辑
- `bool bWantsPlayerState` - 此 AI 是否需要自己的 PlayerState

### 事件委托

- `FAIMoveCompletedSignature ReceiveMoveCompleted` - 当前移动请求完成时的蓝图通知

## 主要方法

### 移动

- `EPathFollowingRequestResult MoveToActor(AActor Goal, float32 AcceptanceRadius = -1, bool bStopOnOverlap = true, bool bUsePathfinding = true, bool bCanStrafe = true, TSubclassOf<UNavigationQueryFilter> FilterClass = nullptr, bool bAllowPartialPath = true)` - 使 AI 向指定目标 Actor 移动
- `EPathFollowingRequestResult MoveToLocation(FVector Dest, float32 AcceptanceRadius = -1, bool bStopOnOverlap = true, bool bUsePathfinding = true, bool bProjectDestinationToNavigation = false, bool bCanStrafe = true, TSubclassOf<UNavigationQueryFilter> FilterClass = nullptr, bool bAllowPartialPath = true)` - 使 AI 向指定位置移动

### 焦点

- `SetFocus(AActor NewFocus)` - 设置焦点 Actor，同时设置 FocalPoint
- `SetFocalPoint(FVector FP)` - 设置控制器应注视的位置
- `ClearFocus()` - 清除焦点
- `AActor GetFocusActor() const` - 获取焦点 Actor
- `FVector GetFocalPoint() const` - 获取最终注视位置
- `FVector GetFocalPointOnActor(const AActor Actor) const` - 获取应注视指定 Actor 的哪个位置

### 路径和移动状态

- `EPathFollowingStatus GetMoveStatus() const` - 返回路径跟随状态
- `bool HasPartialPath() const` - 当前路径是否不完整
- `FVector GetImmediateMoveDestination() const` - 返回当前路径段终点的位置
- `UPathFollowingComponent GetPathFollowingComponent() const` - 返回路径跟随组件
- `SetMoveBlockDetection(bool bEnable)` - 更新移动阻塞检测状态

### 行为树和黑板

- `bool RunBehaviorTree(UBehaviorTree BTAsset)` - 开始执行行为树
- `bool UseBlackboard(UBlackboardData BlackboardAsset, UBlackboardComponent& BlackboardComponent)` - 使 AI 使用指定的黑板资产

### 感知

- `UAIPerceptionComponent GetAIPerceptionComponent()` - 获取 AI 感知组件

### 任务资源

- `ClaimTaskResource(TSubclassOf<UGameplayTaskResource> ResourceClass)` - 声明任务资源
- `UnclaimTaskResource(TSubclassOf<UGameplayTaskResource> ResourceClass)` - 释放任务资源

## 示例

```angelscript
// 让 AI 移动到目标 Actor
AAIController AICon = Cast<AAIController>(GetController());
if (AICon != nullptr)
{
    EPathFollowingRequestResult Result = AICon.MoveToActor(TargetActor, 100.0f);
    if (Result == EPathFollowingRequestResult::RequestSuccessful)
    {
        Print("AI 开始移动到目标");
    }
}

// 让 AI 移动到指定位置
FVector TargetLocation = FVector(1000, 500, 0);
AICon.MoveToLocation(TargetLocation, 50.0f);

// 设置焦点
AICon.SetFocus(TargetActor);

// 运行行为树
UBehaviorTree BT = Cast<UBehaviorTree>(BehaviorTreeAsset);
if (BT != nullptr)
{
    AICon.RunBehaviorTree(BT);
}

// 使用黑板
UBlackboardComponent BB;
AICon.UseBlackboard(BlackboardAsset, BB);
if (BB != nullptr)
{
    BB.SetValueAsObject(n"Target", TargetActor);
}
```

## 继承关系

- [[AController]] → **AAIController**

## 相关页面

- [[AController]] - 控制器基类
- [[UBehaviorTree]] - 行为树
- [[UAIPerceptionComponent]] - AI 感知组件

## 来源

- [AAIController.md](../../raw/API/Global/AAIController.md)
