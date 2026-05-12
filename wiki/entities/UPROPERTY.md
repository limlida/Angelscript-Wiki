---
title: "UPROPERTY 宏"
category: entities
date: 2026-05-08
tags:
  - 属性
  - Blueprint
  - 编辑器
  - 宏

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UPROPERTY.md
verified_by: agent
unverified_items:
  - Attach
  - AttachSocket
  - Category
  - OverrideComponent
  - ReplicatedUsing
  - ReplicationCondition
---

## 定义
`UPROPERTY()` 是 Angelscript 中用于标记属性的宏，使属性可在编辑器中查看、编辑，或在 Blueprint 中访问。

## 常用参数

### 编辑权限（默认：EditAnywhere）
- `EditAnywhere`：可在 Blueprint 和实例中编辑（默认）
- `EditDefaultsOnly`：仅可在 Blueprint 中编辑
- `EditInstanceOnly`：仅可在场景实例中编辑
- `VisibleAnywhere`：可查看但不可编辑
- `NotEditable`：完全不可见也不可编辑

### Blueprint 访问权限（默认：BlueprintReadWrite）
- `BlueprintReadWrite`：Blueprint 可读写（默认）
- `BlueprintReadOnly`：Blueprint 只读不可写
- `BlueprintHidden`：Blueprint 完全无法访问

### 组件相关
- `DefaultComponent`：标记为默认组件
- `RootComponent`：标记为根组件
- `Attach = ComponentName`：指定附加到的组件
- `AttachSocket = SocketName`：指定附加的插槽
- `OverrideComponent = ParentComponentName`：覆盖父类组件

### 网络相关
- `Replicated`：标记为复制属性
- `ReplicationCondition = Condition`：指定复制条件
- `ReplicatedUsing = FunctionName`：指定复制通知函数

### 其他
- `Category = "CategoryName"`：指定编辑器中的分类

## 示例

### 简单编辑器可编辑属性
```angelscript
UPROPERTY()
float MoveSpeed = 100.0;
```

### 带分类的 Blueprint 只读属性
```angelscript
UPROPERTY(BlueprintReadOnly, Category = "Combat")
int CurrentHealth = 100;
```

### 默认组件
```angelscript
UPROPERTY(DefaultComponent, RootComponent)
[[USceneComponent]] SceneRoot;

default SceneRoot.RelativeLocation = [[FVector]](0, 0, 100);
```

### 复制属性带 RepNotify
```angelscript
UPROPERTY(Replicated, ReplicatedUsing = OnRep_Health)
int Health = 100;

[[UFUNCTION]]()
void OnRep_Health()
{
    [[Print]]("Health changed!");
}
```

## 注意事项
- 与 C++ 不同，不需要 `UPROPERTY()` 来保护对象不被垃圾回收，所有脚本引用自动被 GC 追踪
- 默认值在类体中指定，不是构造函数
- 子对象默认值使用 `default` 语句设置

## 来源
[[Source_PropertiesAndAccessors]]
[[Source_ActorsComponents]]
[[Source_NetworkingFeatures]]
