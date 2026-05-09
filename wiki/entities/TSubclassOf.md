---
title: "TSubclassOf 类型"
category: entities
date: 2026-05-08
tags:
  - 类型
  - Blueprint
  - 类引用
---

## 定义
`TSubclassOf<T>` 用于引用类类型，通常用于在编辑器中选择 Blueprint 类。

## 使用场景
- 在编辑器中选择要生成的 Blueprint 类
- 限制选择到特定基类的子类

## 示例

### 声明可配置的类引用
```angelscript
class AExampleSpawner : [[AActor]]
{
    [[UPROPERTY]]()
    TSubclassOf<AExampleActor> ActorClass;

    [[UFUNCTION]](BlueprintOverride)
    void BeginPlay()
    {
        if (ActorClass)
        {
            [[FVector]] Location;
            [[FRotator]] Rotation;
            AExampleActor Spawned = SpawnActor(ActorClass, Location, Rotation);
        }
    }
}
```

## 注意事项
- 在编辑器属性面板中，只能选择 `AExampleActor` 或其子类的 Blueprint
- `SpawnActor()` 可以接受 `TSubclassOf<>` 作为参数

## 来源
[[演员和组件摘要]]
