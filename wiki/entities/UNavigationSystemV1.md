---
title: "UNavigationSystemV1"
category: entities
date: 2026-05-09
tags:
  - 导航
  - AI
  - NavMesh
---

## 概述

UNavigationSystemV1 是导航系统，管理导航网格（NavMesh）的生成和查询。AI 的移动和寻路依赖此系统。

## 主要属性

- `bool bAutoCreateNavigationData` - 是否在有导航边界时自动生成导航数据
- `bool bGenerateNavigationOnlyAroundNavigationInvokers` - 是否仅在注册的导航调用者周围生成导航
- `bool bInitialBuildingLocked` - 是否锁定初始构建
- `bool bTickWhilePaused` - 暂停时是否更新导航
- `bool bAllowClientSideNavigation` - 是否允许客户端导航
- `TArray<FNavDataConfig> SupportedAgents` - 支持的导航代理列表
- `FName DefaultAgentName` - 默认代理名称
- `float32 ActiveTilesUpdateInterval` - 活跃瓦片更新间隔

## 主要方法

### 导航调用者

- `RegisterNavigationInvoker(AActor Invoker, float32 TileGenerationRadius = 3000.0, float32 TileRemovalRadius = 5000.0)` - 注册导航调用者，确保周围导航被生成
- `UnregisterNavigationInvoker(AActor Invoker)` - 取消注册导航调用者

### 导航生成

- `SetGeometryGatheringMode(ENavDataGatheringModeConfig NewMode)` - 设置几何收集模式
- `SetMaxSimultaneousTileGenerationJobsCount(int MaxNumberOfJobs)` - 设置最大同时瓦片生成任务数
- `ResetMaxSimultaneousTileGenerationJobsCount()` - 重置最大同时任务数
- `OnNavigationBoundsUpdated(ANavMeshBoundsVolume NavVolume)` - 导航边界更新

### 区域修改

- `bool ReplaceAreaInOctreeData(const UObject Object, TSubclassOf<UNavArea> OldArea, TSubclassOf<UNavArea> NewArea)` - 替换八叉树数据中的导航区域

## 示例

```angelscript
// 注册导航调用者
UNavigationSystemV1 NavSys = Cast<UNavigationSystemV1>(GetWorld().GetNavigationSystem());
if (NavSys != nullptr)
{
    NavSys.RegisterNavigationInvoker(this, 3000.0f, 5000.0f);
}
```

## 相关页面

- [[AAIController]] - AI 控制器（使用导航系统移动）
- [[UBTTask_MoveTo]] - 移动任务

## 来源

- [UNavigationSystemV1.md](../../raw/API/Global/UNavigationSystemV1.md)
