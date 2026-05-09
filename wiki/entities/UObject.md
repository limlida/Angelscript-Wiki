﻿---
title: "UObject"
category: entities
date: 2026-05-08
tags:
  - 基类
  - UObject
---

## 概述

UObject 是所有 UE 对象的基类。一个对象的类型由其 [[UClass]] 定义。它提供了创建和使用对象的支持函数，以及应该在子类中重写的虚函数。

- **官方文档**: https://docs.unrealengine.com/ProgrammingAndScripting/ProgrammingWithCPP/UnrealArchitecture/Objects

## 主要方法

### 垃圾回收相关

- `AddToRoot()` - 将对象添加到根集，防止被垃圾回收
- `RemoveFromRoot()` - 从根集中移除对象
- `bool GetIsRooted() const` - 检查对象是否在根集中

### 标识相关

- `bool IsTransient() const` - 检查对象是否是瞬态对象
- `bool IsEditorOnly() const` - 检查对象是否仅限编辑器使用
- `[[UClass]] GetClass() const` - 获取对象的 [[UClass]]
- `UObject GetOuter() const` - 获取对象的外层对象
- `UObject GetTypedOuter([[TSubclassOf]]<UObject> Target) const` - 遍历外层链查找指定类型的对象
- `[[UPackage]] GetOutermost() const` - 获取最外层的包
- `[[UPackage]] GetPackage() const` - 获取对象所属的包
- `[[FName]] GetName() const` - 获取对象名称
- `[[FString]] GetFullName(const UObject StopOuter = nullptr) const` - 获取对象完整名称
- `[[FString]] GetPathName(const UObject StopOuter = nullptr) const` - 获取对象路径名
- `[[UWorld]] GetWorld() const` - 获取对象所在的 World
- `bool IsA(const [[UClass]] Class) const` - 检查对象是否是指定类型或其子类

### 修改相关

- `bool Modify(bool bAlwaysMarkDirty = true)` - 标记对象为已修改
- `SetTransactional(bool bTransactional)` - 设置对象是否事务性
- `bool MarkPackageDirty() const` - 标记包为已修改

### 配置相关

- `SaveConfig()` - 保存配置
- `LoadConfig()` - 加载配置
- `ReloadConfig()` - 重新加载配置

### 脚本相关

- `CopyScriptPropertiesFrom(const UObject OtherObject)` - 从另一个对象复制脚本属性
- `UObject CastTo([[TSubclassOf]]<UObject> TypedClass)` - 转换为指定类型，注意转换前指针必须非空
- `UObject CastToChecked([[TSubclassOf]]<UObject> TypedClass)` - 安全转换，注意转换前指针必须非空
- `UObject CreateDefaultSubObject([[FName]] SubObjectName, [[TSubclassOf]]<UObject> TypedClass)` - 创建默认子对象

### 编辑器相关

- `[[FScriptTypedElementHandle]] AcquireEditorElementHandle(bool bAllowCreate = true) const`
- `EEditorPropertyValueState IsEditorPropertyOverridden([[FName]] PropertyName)` - 检查属性是否被重写
- `bool ResetEditorProperty([[FName]] PropertyName, EPropertyAccessChangeNotifyMode ChangeNotifyMode)` - 重置属性为原始值

### 其他

- `[[FString]] ToString() const` - 转换为字符串

## 示例

```angelscript
// 检查对象类型
if (Object.IsA([[AActor]].Class)) {
    [[Print]]("这是一个 Actor");
}

// 获取对象名称
[[FString]] Name = Object.GetName();
[[Print]]("对象名: " + Name);

// 安全类型转换
[[AActor]] Actor = Object.CastTo([[AActor]].Class);
if (Actor != nullptr) {
    [[Print]]("成功转换为 Actor");
}

// 防止被垃圾回收
Object.AddToRoot();
// 完成后移除
Object.RemoveFromRoot();
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
