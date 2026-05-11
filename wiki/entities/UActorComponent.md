---
title: "UActorComponent"
category: entities
date: 2026-05-09
tags:
  - 组件
  - 基类
---

## 定义
`UActorComponent` 是所有 Actor 组件的基类。组件是 Actor 的功能模块，负责移动、渲染、物理等。

## 在脚本中创建组件类
```angelscript
class UMyComponent : UActorComponent
{
    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        Print("Component BeginPlay!");
    }
}
```

## 组件操作

### 获取组件
```angelscript
USkeletalMeshComponent SkelComp = USkeletalMeshComponent::Get(Actor);
USkeletalMeshComponent WeaponComp = USkeletalMeshComponent::Get(Actor, n"WeaponMesh");
```

### 获取或创建组件
```angelscript
UInteractionComponent InteractComp = UInteractionComponent::GetOrCreate(Actor);
```

### 创建新组件
```angelscript
UStaticMeshComponent NewComp = UStaticMeshComponent::Create(Actor);
NewComp.AttachToComponent(Actor.Mesh);
```

### 获取所有组件
```angelscript
TArray<UStaticMeshComponent> StaticMeshComponents;
Actor.GetComponentsByClass(StaticMeshComponents);
```

## 相关概念
- [[default语句]] - 设置组件默认值
- [[自动绑定]] - 组件的自动绑定规则

## 来源
[[Source_ActorsComponents]]
