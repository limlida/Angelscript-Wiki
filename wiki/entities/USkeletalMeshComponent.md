---
title: "USkeletalMeshComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 渲染
  - 骨骼网格
  - 动画

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/USkeletalMeshComponent.md
verified_by: agent
unverified_items:
  - DoesSocketExist
  - GetAllSocketNames
  - GetBoneIndex
  - GetBoneLocation
  - GetBoneName
  - GetBoneTransform
  - GetNumBones
  - GetPostProcessAnimInstance
  - GetSocketLocation
  - GetSocketRotation
  - GetSocketTransform
  - IsPlayingNetworkedAnimation
  - SetSkeletalMesh
---

## 概述

USkeletalMeshComponent 是骨骼网格组件，用于渲染带骨骼动画的网格体。它是 [[ACharacter]] 的核心可视组件，支持动画播放、骨骼控制、物理动画等功能。

**核心用途**：角色模型、带骨骼动画的物体、物理动画。

## 主要属性

### 网格和动画

- `USkeletalMesh SkeletalMesh` - 骨骼网格资产
- `UAnimClassData AnimClass` - 动画蓝图类
- `float32 GlobalAnimScaleScale` - 全局动画缩放

### 物理动画

- `UPhysicsAsset PhysicsAssetOverride` - 覆盖的物理资产
- `float32 PhysicsBlendWeight` - 物理混合权重（0=动画，1=物理）
- `bool bEnablePhysicsAnimation` - 是否启用物理动画

### 变形目标

- `bool bEnableMorphTargets` - 是否启用变形目标

### 渲染

- `bool bCastShadow` - 是否投射阴影
- `bool bHideInGame` - 游戏中是否隐藏

## 主要方法

### 网格设置

- `bool SetSkeletalMesh(USkeletalMesh NewMesh, bool bReinitPose = true)` - 设置骨骼网格
- `USkeletalMesh GetSkeletalMeshAsset() const` - 获取骨骼网格资产

### 动画

- `UAnimInstance GetAnimInstance() const` - 获取动画实例
- `UAnimInstance GetPostProcessAnimInstance() const` - 获取后处理动画实例
- `SetAnimInstanceClass(TSubclassOf<UAnimInstance> NewClass)` - 设置动画蓝图类
- `bool IsPlayingNetworkedAnimation(UAnimMontage Montage) const` - 是否正在播放网络动画
- `PlayAnimation(UAnimSequenceBase NewAnimToPlay, bool bLooping)` - 播放动画序列

### 骨骼操作

- `FTransform GetSocketTransform(FName InSocketName, ERelativeTransformSpace Space = RTS_World) const` - 获取 Socket 变换
- `FVector GetSocketLocation(FName InSocketName) const` - 获取 Socket 位置
- `FRotator GetSocketRotation(FName InSocketName) const` - 获取 Socket 旋转
- `bool DoesSocketExist(FName InSocketName) const` - Socket 是否存在
- `TArray<FName> GetAllSocketNames() const` - 获取所有 Socket 名称
- `int32 GetNumBones() const` - 获取骨骼数量
- `FName GetBoneName(int32 BoneIndex) const` - 按索引获取骨骼名称
- `int32 GetBoneIndex(FName BoneName) const` - 按名称获取骨骼索引
- `FTransform GetBoneTransform(int32 BoneIndex) const` - 获取骨骼变换
- `FVector GetBoneLocation(FName BoneName, ERelativeTransformSpace Space = RTS_World) const` - 获取骨骼位置

### 变形目标

- `SetMorphTarget(FName MorphTargetName, float32 Value)` - 设置变形目标权重
- `float32 GetMorphTarget(FName MorphTargetName) const` - 获取变形目标权重
- `ClearMorphTargets()` - 清除所有变形目标

### 材质

- 继承自 [[UMeshComponent]] 的所有材质方法

## 示例

```angelscript
// 获取骨骼网格组件
USkeletalMeshComponent Mesh = GetMesh();

// 获取动画实例
UAnimInstance AnimInst = Mesh.GetAnimInstance();
if (AnimInst != nullptr)
{
    AnimInst.Montage_Play(AttackMontage);
}

// 获取 Socket 位置
FVector WeaponLocation = Mesh.GetSocketLocation(n"WeaponSocket");
FRotator WeaponRotation = Mesh.GetSocketRotation(n"WeaponSocket");

// 设置变形目标
Mesh.SetMorphTarget(n"MouthOpen", 0.8f);

// 切换骨骼网格
Mesh.SetSkeletalMesh(NewCharacterMesh);
```

## 继承关系

- [[UMeshComponent]] → **USkeletalMeshComponent**

## 相关页面

- [[UMeshComponent]] - 网格组件基类
- [[UAnimInstance]] - 动画实例
- [[UAnimMontage]] - 动画蒙太奇
- [[ACharacter]] - Character 基类

## 来源

- [USkeletalMeshComponent.md](../../raw/API/Global/USkeletalMeshComponent.md)
