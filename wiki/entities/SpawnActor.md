---
title: "SpawnActor"
category: entities
date: 2026-05-09
tags:
  - 全局函数
  - Actor
  - 生成

trust: unverified
verified_at: 2026-05-11
verified_against: []
verified_by: agent
unverified_items: []
---

## 定义
`SpawnActor` 是全局函数，用于在运行时动态生成 Actor。

## 基本用法
```angelscript
FVector SpawnLocation;
FRotator SpawnRotation;
AExampleActor SpawnedActor = SpawnActor(AExampleActor, SpawnLocation, SpawnRotation);
```

## 生成蓝图 Actor
通常需要动态生成蓝图 Actor 而非脚本基类。使用 `TSubclassOf<>` 引用蓝图类：
```angelscript
class AExampleSpawner : AActor
{
    UPROPERTY()
    TSubclassOf<AExampleActor> ActorClass;

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        FVector SpawnLocation;
        FRotator SpawnRotation;
        AExampleActor SpawnedActor = SpawnActor(ActorClass, SpawnLocation, SpawnRotation);
    }
}
```

## 来源
[[Source_ActorsComponents]]
