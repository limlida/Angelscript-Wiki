---
title: "USceneComponent"
category: entities
date: 2026-05-08
tags:
  - Component
  - Scene
  - Transform
trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/USceneComponent.md
verified_by: agent
unverified_items: []
---

## 概述

A SceneComponent has a transform and supports attachment, but has no rendering or collision capabilities. Useful as a 'dummy' component in the hierarchy to offset others.

**官方文档**：[Scene Components](https://docs.unrealengine.com/latest/INT/Programming/UnrealArchitecture/Actors/Components/index.html#scenecomponents)

## 主要属性

### 变换属性
- `[[FVector]] RelativeLocation` - Location of the component relative to its parent
- `[[FRotator]] RelativeRotation` - Rotation of the component relative to its parent
- `[[FVector]] RelativeScale3D` - Non-uniform scaling of the component relative to its parent. Note that scaling is always applied in local space (no shearing etc)

### 绝对变换属性
- `bool bAbsoluteLocation` - If RelativeLocation should be considered relative to the world, rather than the parent
- `bool bAbsoluteRotation` - If RelativeRotation should be considered relative to the world, rather than the parent
- `bool bAbsoluteScale` - If RelativeScale3D should be considered relative to the world, rather than the parent

### 可见性属性
- `bool bVisible` - Whether to completely draw the primitive; if false, the primitive is not drawn, does not cast a shadow
- `bool bHiddenInGame` - Whether to hide the primitive in game, if the primitive is Visible

### 物理属性
- `EComponentMobility Mobility` - How often this component is allowed to move, used to make various optimizations. Only safe to set in constructor
- `bool bShouldUpdatePhysicsVolume` - Whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved
- `[[FPhysicsVolumeChanged]] PhysicsVolumeChangedDelegate` - Delegate that will be called when PhysicsVolume has been changed

### 其他属性
- `EDetailMode DetailMode` - Set the required detail level of this component
- `bool bUseAttachParentBound` - If true, this component uses its parents bounds when attached

## 主要方法

### 获取位置和变换

#### 获取世界变换
- `[[FVector]] GetWorldLocation() const` - Return location of the component, in world space
- `[[FRotator]] GetWorldRotation() const` - Returns rotation of the component, in world space
- `[[FVector]] GetWorldScale() const` - Returns scale of the component, in world space
- `[[FTransform]] GetWorldTransform() const` - Get the current component-to-world transform for this component

#### 获取相对变换
- `[[FTransform]] GetRelativeTransform() const` - Returns the transform of the component relative to its parent
- `[[FVector]] GetRelativeLocation() const`
- `[[FRotator]] GetRelativeRotation() const`
- `[[FVector]] GetRelativeScale3D() const`

#### 设置世界变换
- `SetWorldLocation([[FVector]] NewLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `SetWorldRotation([[FRotator]] NewRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `SetWorldLocationAndRotation([[FVector]] NewLocation, [[FRotator]] NewRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `SetWorldTransform([[FTransform]] NewTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `SetWorldScale3D([[FVector]] NewScale)`

#### 设置相对变换
- `SetRelativeLocation([[FVector]] NewLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `SetRelativeRotation([[FRotator]] NewRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `SetRelativeLocationAndRotation([[FVector]] NewLocation, [[FRotator]] NewRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `SetRelativeTransform([[FTransform]] NewTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `SetRelativeScale3D([[FVector]] NewScale3D)`
- `ResetRelativeTransform()` - Reset the transform of the component relative to its parent

### 变换修改方法

#### 增加偏移和旋转
- `AddLocalOffset([[FVector]] DeltaLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `AddLocalRotation([[FRotator]] DeltaRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `AddLocalTransform([[FTransform]] DeltaTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `AddRelativeLocation([[FVector]] DeltaLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `AddRelativeRotation([[FRotator]] DeltaRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `AddWorldOffset([[FVector]] DeltaLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `AddWorldRotation([[FRotator]] DeltaRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `AddWorldTransform([[FTransform]] DeltaTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`
- `AddWorldTransformKeepScale([[FTransform]] DeltaTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)`

### 方向向量
- `[[FVector]] GetForwardVector() const` - Get the forward (X) unit direction vector from this component, in world space
- `[[FVector]] GetRightVector() const` - Get the right (Y) unit direction vector from this component, in world space
- `[[FVector]] GetUpVector() const` - Get the up (Z) unit direction vector from this component, in world space

### 附加和分离

#### 附加方法
- `bool AttachTo(USceneComponent InParent, [[FName]] InSocketName = NAME_None, EAttachLocation AttachType = EAttachLocation::KeepRelativeOffset, bool bWeldSimulatedBodies = true)`
- `bool AttachToComponent(USceneComponent Parent, [[FName]] SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, bool bWeldSimulatedBodies)` - Attach this component to another scene component

#### 分离方法
- `DetachFromParent(bool bMaintainWorldPosition = false, bool bCallModify = true)`
- `DetachFromComponent(EDetachmentRule LocationRule = EDetachmentRule::KeepRelative, EDetachmentRule RotationRule = EDetachmentRule::KeepRelative, EDetachmentRule ScaleRule = EDetachmentRule::KeepRelative, bool bCallModify = true)`

#### 附加查询
- `USceneComponent GetAttachParent() const` - Get the SceneComponent we are attached to
- `[[FName]] GetAttachSocketName() const` - Get the socket we are attached to
- `bool IsAttachedTo(const USceneComponent CheckComponent) const`
- `bool IsAttachedTo(const [[AActor]] CheckActor) const`

### 子组件管理

#### 获取子组件
- `USceneComponent GetChildComponent(int ChildIndex) const` - Gets the attached child component at the specified location
- `GetChildrenComponents(bool bIncludeAllDescendants, [[TArray]]<USceneComponent>& Children) const` - Gets all components that are attached to this component
- `USceneComponent GetChildComponentByClass([[TSubclassOf]]<USceneComponent> ComponentClass) const`
- `[[TArray]]<USceneComponent> GetChildrenComponentsByClass([[TSubclassOf]]<[[UActorComponent]]> ComponentClass, bool bIncludeAllDescendants) const`

#### 子组件数量
- `int GetNumChildrenComponents() const` - Gets the number of attached children components

#### 父组件
- `GetParentComponents([[TArray]]<USceneComponent>& Parents) const` - Gets all attachment parent components up to and including the root component

### Socket相关方法

#### Socket查询
- `bool DoesSocketExist([[FName]] InSocketName) const` - Return true if socket with the given name exists
- `[[TArray]]<[[FName]]> GetAllSocketNames() const` - Gets the names of all the sockets on the component

#### Socket变换
- `[[FVector]] GetSocketLocation([[FName]] InSocketName) const` - Get world-space socket or bone location
- `[[FRotator]] GetSocketRotation([[FName]] InSocketName) const` - Get world-space socket or bone rotation
- `[[FTransform]] GetSocketTransform([[FName]] InSocketName, ERelativeTransformSpace TransformSpace = ERelativeTransformSpace::RTS_World) const`
- `[[FQuat]] GetSocketQuaternion([[FName]] SocketName)`

### 速度和物理
- `[[FVector]] GetComponentVelocity() const` - Get velocity of the component
- `SetComponentVelocity([[FVector]] Velocity)`
- `bool IsSimulatingPhysics([[FName]] BoneName = NAME_None) const` - Returns whether the specified body is currently using physics simulation
- `bool IsAnySimulatingPhysics() const`

### 物理Volume
- `[[APhysicsVolume]] GetPhysicsVolume() const` - Get the PhysicsVolume overlapping this component
- `bool GetShouldUpdatePhysicsVolume() const`
- `SetShouldUpdatePhysicsVolume(bool bInShouldUpdatePhysicsVolume)`

### 可见性
- `bool IsVisible() const` - Returns true if this component is visible in the current context
- `SetVisibility(bool bNewVisibility, bool bPropagateToChildren = false)` - Set visibility of the component
- `SetHiddenInGame(bool NewHidden, bool bPropagateToChildren = false)` - Changes the value of bHiddenInGame
- `ToggleVisibility(bool bPropagateToChildren = false)` - Toggle visibility of the component

### 其他设置
- `SetAbsolute(bool bNewAbsoluteLocation = false, bool bNewAbsoluteRotation = false, bool bNewAbsoluteScale = false)` - Set which parts of the relative transform should be relative to parent
- `SetMobility(EComponentMobility NewMobility)` - Set how often this component is allowed to move during runtime
- `SetbVisualizeComponent(bool bVisualize)`

### 边界
- `[[FBoxSphereBounds]] GetBounds() const`

### Quaternion支持
- `[[FQuat]] GetComponentQuat() const`
- `SetComponentQuat([[FQuat]] NewRotation)`
- `SetRelativeRotation([[FQuat]] NewRotation)`
- `SetRelativeLocationAndRotation([[FVector]] NewLocation, [[FQuat]] NewRotation)`
- `SetWorldRotation([[FQuat]] NewRotation)`
- `SetWorldLocationAndRotation([[FVector]] NewLocation, [[FQuat]] NewRotation)`

## 示例

```angelscript
// 设置组件的世界位置
[[FVector]] NewLocation = [[FVector]](100, 200, 50);
SceneComp.SetWorldLocation(NewLocation, false, HitResult, false);

// 获取组件的向前向量
[[FVector]] ForwardVec = SceneComp.GetForwardVector();

// 附加到其他组件
bool Attached = SceneComp.AttachToComponent(ParentComp, n"SocketName", 
    EAttachmentRule.KeepRelative, EAttachmentRule.KeepRelative, 
    EAttachmentRule.KeepRelative, true);

// 设置相对位置
SceneComp.SetRelativeLocation([[FVector]](0, 0, 100));

// 获取Socket位置
[[FVector]] SocketPos = SceneComp.GetSocketLocation(n"WeaponSocket");
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
