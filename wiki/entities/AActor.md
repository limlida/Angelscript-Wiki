﻿---
title: "AActor"
category: entities
date: 2026-05-08
tags:
  - Actor
  - 基类
---

## 概述

Actor 是可以放置或生成在关卡中的对象的基类。Actor 可以包含 ActorComponent 集合，用于控制 Actor 的移动、渲染等。Actor 的另一个主要功能是在游戏中跨网络复制属性和函数调用。

- **官方文档**: https://docs.unrealengine.com/Programming/UnrealArchitecture/Actors
- **Actor 生命周期**: https://docs.unrealengine.com/Programming/UnrealArchitecture/Actors/ActorLifecycle

## Actor 初始化流程

Actor 初始化有多个步骤，重要虚函数的调用顺序如下：

1. `[[UObject]]::PostLoad` - 对于静态放置在关卡中的 Actor，在编辑器和游戏中都会调用。新生成的 Actor 不会调用。
2. `[[UActorComponent]]::OnComponentCreated` - 当在编辑器或游戏中生成 Actor 时，对原生组件调用。对于蓝图创建的组件，在该组件的构建过程中调用。对于从关卡加载的组件不调用。
3. `AActor::PreRegisterAllComponents` - 对于有原生根组件的静态放置和生成的 Actor，现在会调用。对于没有原生根组件的蓝图 Actor，这些注册函数会在构建后期调用。
4. `[[UActorComponent]]::RegisterComponent` - 所有组件在编辑器和运行时注册，创建它们的物理/视觉表示。
5. `AActor::PostRegisterAllComponents` - 在编辑器和游戏中对所有 Actor 调用，这是在所有情况下最后调用的函数。
6. `AActor::PostActorCreated` - 在编辑器或游戏中创建 Actor 时，在构建前调用。对于从关卡加载的组件不调用。
7. `AActor::UserConstructionScript` - 对于实现了构建脚本的蓝图调用。
8. `AActor::OnConstruction` - 在 ExecuteConstruction 结束时调用，调用蓝图构建脚本。在所有蓝图创建的组件完全创建和注册后调用。
9. `AActor::PreInitializeComponents` - 在对 Actor 的组件调用 InitializeComponent 之前调用。仅在游戏运行时和某些编辑器预览窗口中调用。
10. `[[UActorComponent]]::Activate` - 仅当组件设置了 bAutoActivate 时调用。
11. `[[UActorComponent]]::InitializeComponent` - 仅当组件设置了 bWantsInitializeComponent 时调用。每个游戏会话只调用一次。
12. `AActor::PostInitializeComponents` - 在 Actor 的组件初始化后调用，仅在游戏运行时和某些编辑器预览中调用。
13. `AActor::BeginPlay` - 关卡开始 tick 时调用，仅在实际游戏中。通常在 PostInitializeComponents 之后立即，但对于网络或子 Actor 可能延迟。

## 主要属性

### 身份相关

- `[[FGuid]] ActorGuid` - 此 Actor 的 GUID；对于来自实例化流送关卡的 Actor，此 GUID 相同。
- `[[FGuid]] ActorInstanceGuid` - 此 Actor 的实例 GUID；对于来自实例化流送关卡的 Actor，此 GUID 唯一。
- `EAutoReceiveInput AutoReceiveInput` - 自动注册此 Actor 从玩家接收输入。
- `[[FName]] RuntimeGrid` - 确定此 Actor 在分区世界中将放置在哪个分区网格中。如果为 None，决定权留给分区。

### 位置和变换

- `[[FVector]] PivotOffset` - Actor 在编辑器中的局部空间枢轴偏移。
- `[[USceneComponent]] RootComponent` - 定义此 Actor 在世界中变换（位置、旋转、缩放）的组件，所有其他组件必须以某种方式附加到此组件。

### 游戏逻辑

- `float InitialLifeSpan` - 此 Actor 死亡前的存活时间，0=永远。注意这是初始值，游戏开始后不应修改。
- `[[APawn]] Instigator` - 负责此 Actor 造成的伤害和其他游戏事件的 Pawn。
- `[[TArray]]<[[FName]]> Tags` - 可用于分组和分类的标签数组。
- `[[TArray]]<[[FName]]> Layers` - Actor 所属的图层。这在编辑器数据之外，允许在运行时为了分析而隐藏 LD 指定的图层。

### 网络相关

- `bool bReplicates` - 如果为 true，此 Actor 将复制到远程机器。
- `bool bReplicateMovement` - 如果为 true，复制移动/位置相关属性。
- `bool bAlwaysRelevant` - 始终与网络相关（覆盖 bOnlyRelevantToOwner）。
- `bool bOnlyRelevantToOwner` - 如果为 true，此 Actor 仅对其所有者相关。
- `bool bNetUseOwnerRelevancy` - 如果 Actor 有有效所有者，调用所有者的 IsNetRelevantFor 和 GetNetPriority。
- `bool bNetLoadOnClient` - 此 Actor 将在地图加载时在网络客户端上加载。
- `ENetDormancy NetDormancy` - 休眠设置，用于在未被破坏的情况下将自身从复制列表中移除。
- `float NetPriority` - 低带宽或饱和情况下此 Actor 复制的优先级，优先级越高越可能被复制。
- `float NetUpdateFrequency` - 此对象被考虑复制的频率。
- `float MinNetUpdateFrequency` - 当复制的属性变化不频繁时，节流到的频率。
- `float NetCullDistanceSquared` - 客户端视距的平方，超过此距离此 Actor 相关且将被复制。
- `[[FRepMovement]] ReplicatedMovement` - 用于复制 RootComponent 的位置和速度。

### 视觉相关

- `bool bHidden` - 允许我们仅在编辑器中看到此 Actor，在实际游戏中看不到。
- `float SpriteScale` - 在编辑器构建中应用于任何广告牌组件的缩放。
- `bool bIsEditorOnlyActor` - 此 Actor 是否仅限编辑器使用。

### 碰撞和物理

- `EPhysicsReplicationMode PhysicsReplicationMode` - 通过网络为该 Actor 复制物理的模式。仅当该 Actor 复制移动且有模拟物理的组件时才相关。

### 事件委托

- `[[FActorBeginOverlapSignature]] OnActorBeginOverlap` - 另一个 Actor 开始重叠此 Actor 时调用。
- `[[FActorEndOverlapSignature]] OnActorEndOverlap` - 另一个 Actor 停止重叠此 Actor 时调用。
- `[[FActorHitSignature]] OnActorHit` - 此 Actor 撞到某物或被某物撞到时调用。
- `[[FActorBeginCursorOverSignature]] OnBeginCursorOver` - 当鼠标光标移到此 Actor 上时调用。
- `[[FActorOnClickedSignature]] OnClicked` - 当鼠标光标在此 Actor 上时左击鼠标时调用。
- `[[FActorDestroyedSignature]] OnDestroyed` - 当 Actor 被显式销毁时触发的事件。
- `[[FActorEndCursorOverSignature]] OnEndCursorOver` - 当鼠标光标移开此 Actor 时调用。
- `[[FActorEndPlaySignature]] OnEndPlay` - 当 Actor 被删除或从关卡中移除时触发的事件。
- `[[FActorOnInputTouchBeginSignature]] OnInputTouchBegin` - 当触摸事件启用时在此 Actor 上接收到触摸输入时调用。
- `[[FActorOnInputTouchEndSignature]] OnInputTouchEnd` - 当触摸事件启用时在此组件上接收到触摸输入时调用。
- `[[FActorBeginTouchOverSignature]] OnInputTouchEnter` - 当触摸重叠事件启用时手指移到此 Actor 上时调用。
- `[[FActorEndTouchOverSignature]] OnInputTouchLeave` - 当触摸重叠事件启用时手指移开此 Actor 时调用。
- `[[FActorOnReleasedSignature]] OnReleased` - 当鼠标光标在此 Actor 上时释放左击鼠标时调用。
- `[[FTakeAnyDamageSignature]] OnTakeAnyDamage` - 当 Actor 以任何方式受到伤害时调用。
- `[[FTakePointDamageSignature]] OnTakePointDamage` - 当 Actor 受到点伤害时调用。
- `[[FTakeRadialDamageSignature]] OnTakeRadialDamage` - 当 Actor 受到径向伤害时调用。

### 其他属性

- `bool bCanBeDamaged` - 此 Actor 是否可以受到伤害。
- `bool bCanBeInCluster` - 如果为 true，此 Actor 可以放入 GC 集群以提高垃圾回收性能。
- `bool bEnableAutoLODGeneration` - 此 Actor 是否应在 HLOD 生成中被考虑。
- `bool bFindCameraComponentWhenViewTarget` - 如果为 true，当用作视口目标时，此 Actor 应搜索拥有的相机组件以通过其查看。
- `bool bGenerateOverlapEventsDuringLevelStreaming` - 如果为 true，当作为关卡流送的一部分生成时，此 Actor 将触发重叠的开始/结束事件。
- `bool bIsMainWorldOnly` - 如果勾选，此 Actor 将仅在主世界（持久关卡）中加载，它不会通过关卡实例加载。
- `bool bIsSpatiallyLoaded` - 确定放置在分区世界中的此 Actor 是否是空间加载的。
- `bool bMigratingAsset` - 如果为 true，即使已从磁盘加载，此 Actor 也可以迁移到另一台服务器。
- `bool bOptimizeBPComponentData` - 是否烹饪额外数据以在运行时加快此 Actor 任何蓝图类的生成事件。
- `bool bRelevantForLevelBounds` - 如果为 true，此 Actor 的组件边界将包含在关卡边界框中。
- `bool bReplayRewindable` - 如果为 true，只有在回放重置到该 Actor 存在之前的时间时，此 Actor 才会被销毁。
- `bool bReplicateUsingRegisteredSubObjectList` - 当为 true 时，复制系统仅复制注册的子对象和复制的 Actor 组件列表。
- `bool bTemporarilyHiddenInEditor` - 此 Actor 是否在当前编辑器会话期间在编辑器中被显式隐藏。

## 主要方法

### 生命周期相关

- `bool IsActorInitialized() const` - Actor 是否已初始化。
- `bool HasActorBegunPlay() const` - Actor 是否已开始播放。
- `bool IsActorBeingDestroyed() const` - Actor 当前是否正在被销毁。
- `DestroyActor()` - 销毁 Actor。

### 位置和变换

#### 位置获取

- `[[FVector]] GetActorLocation() const` - 返回此 Actor 的 RootComponent 的位置。
- `[[FVector]] GetActorForwardVector() const` - 获取此 Actor 在世界空间中的前向（X）向量（长度为 1.0）。
- `[[FVector]] GetActorRightVector() const` - 获取此 Actor 在世界空间中的右向（Y）向量（长度为 1.0）。
- `[[FVector]] GetActorUpVector() const` - 获取此 Actor 在世界空间中的向上（Z）向量（长度为 1.0）。
- `[[FTransform]] GetActorTransform() const` - 获取 Actor 到世界的变换。

#### 位置设置

- `bool SetActorLocation([[FVector]] NewLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 将 Actor 移动到指定位置。
- `bool SetActorRotation([[FRotator]] NewRotation, bool bTeleportPhysics)` - 将 Actor 的旋转立即设置为指定的旋转。
- `bool SetActorTransform([[FTransform]] NewTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 设置 Actor 的变换为指定变换。
- `bool SetActorLocationAndRotation([[FVector]] NewLocation, [[FRotator]] NewRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 立即将 Actor 移动到指定位置和旋转。
- `bool Teleport([[FVector]] DestLocation, [[FRotator]] DestRotation)` - 将此 Actor 传送到新位置。

#### 位置修改

- `AddActorLocalOffset([[FVector]] DeltaLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 在此组件的局部参考系中为位置添加一个增量。
- `AddActorLocalRotation([[FRotator]] DeltaRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 在此组件的局部参考系中为旋转添加一个增量。
- `AddActorLocalTransform([[FTransform]] NewTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 在此组件的局部参考系中为变换添加一个增量。
- `AddActorWorldOffset([[FVector]] DeltaLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 在此 Actor 的世界空间中为位置添加一个增量。
- `AddActorWorldRotation([[FRotator]] DeltaRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 在此 Actor 的世界空间中为旋转添加一个增量。
- `AddActorWorldTransform([[FTransform]] DeltaTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 在此 Actor 的世界空间中为变换添加一个增量。
- `AddActorWorldTransformKeepScale([[FTransform]] DeltaTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 在此 Actor 的世界空间中为变换添加一个增量，缩放不变。

#### 相对位置设置

- `SetActorRelativeLocation([[FVector]] NewRelativeLocation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 将 Actor 的 RootComponent 设置为指定的相对位置。
- `SetActorRelativeRotation([[FRotator]] NewRelativeRotation, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 将 Actor 的 RootComponent 设置为指定的相对旋转。
- `SetActorRelativeTransform([[FTransform]] NewRelativeTransform, bool bSweep, [[FHitResult]]& SweepHitResult, bool bTeleport)` - 将 Actor 的 RootComponent 设置为指定的相对变换。

#### 旋转获取

- `[[FRotator]] GetActorRotation() const` - 返回此 Actor 的 RootComponent 的旋转。
- `[[FVector]] GetActorRelativeScale3D() const` - 返回 Actor 的相对 3D 缩放。
- `[[FVector]] GetActorScale3D() const` - 返回 Actor 的世界空间缩放。

#### 视图点

- `GetActorEyesViewPoint([[FVector]]& OutLocation, [[FRotator]]& OutRotation) const` - 返回 Actor 的视点。注意这不是相机，而是 Actor 的“眼睛”。
- `OnBecomeViewTarget([[APlayerController]] PC)` - 当此 Actor 成为给定 PlayerController 的视口目标时调用的事件。
- `OnEndViewTarget([[APlayerController]] PC)` - 当此 Actor 不再是给定 PlayerController 的视口目标时调用的事件。

### 组件相关

- `[[USceneComponent]] GetRootComponent() const` - 返回此 Actor 的 RootComponent。
- `[[UActorComponent]] GetComponentByClass([[TSubclassOf]]<[[UActorComponent]]> ComponentClass) const` - 搜索组件数组并返回指定类的第一个遇到的组件。
- `[[TArray]]<[[UActorComponent]]> GetComponentsByClass([[TSubclassOf]]<[[UActorComponent]]> ComponentClass) const` - 获取所有继承自给定类的组件。
- `[[TArray]]<[[UActorComponent]]> GetComponentsByInterface([[TSubclassOf]]<[[UInterface]]> Interface) const` - 获取所有实现给定接口的组件。
- `[[TArray]]<[[UActorComponent]]> GetComponentsByTag([[TSubclassOf]]<[[UActorComponent]]> ComponentClass, [[FName]] Tag) const` - 获取所有继承自给定类并带有给定标签的组件。
- `[[UActorComponent]] FindComponentByTag([[TSubclassOf]]<[[UActorComponent]]> ComponentClass, [[FName]] Tag) const` - 搜索组件数组并返回第一个遇到的带有给定标签的组件。

### 附加和分离

- `AttachRootComponentTo([[USceneComponent]] InParent, [[FName]] InSocketName = NAME_None, EAttachLocation AttachLocationType = EAttachLocation :: KeepRelativeOffset, bool bWeldSimulatedBodies = true)` - 将 RootComponent 附加到指定的父组件。
- `AttachRootComponentToActor(AActor InParentActor, [[FName]] InSocketName = NAME_None, EAttachLocation AttachLocationType = EAttachLocation :: KeepRelativeOffset, bool bWeldSimulatedBodies = true)` - 将 RootComponent 附加到指定的父 Actor。
- `bool AttachToActor(AActor ParentActor, [[FName]] SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, bool bWeldSimulatedBodies)` - 将此 Actor 的 RootComponent 附加到提供的 Actor。
- `bool AttachToComponent([[USceneComponent]] Parent, [[FName]] SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, bool bWeldSimulatedBodies)` - 将此 Actor 的 RootComponent 附加到提供的组件。
- `DetachRootComponentFromParent(bool bMaintainWorldPosition = true)` - 将 RootComponent 从其父组件分离。
- `DetachFromActor(EDetachmentRule LocationRule = EDetachmentRule :: KeepRelative, EDetachmentRule RotationRule = EDetachmentRule :: KeepRelative, EDetachmentRule ScaleRule = EDetachmentRule :: KeepRelative)` - 将此 Actor 的 RootComponent 从当前附加的任何 SceneComponent 分离。
- `AActor GetAttachParentActor() const` - 从 RootComponent 向上遍历附加链，直到遇到不同的 Actor，并返回它。
- `[[FName]] GetAttachParentSocketName() const` - 从 RootComponent 向上遍历附加链，直到遇到不同的 Actor，并返回组件中的套接字名称。

### 重叠和碰撞

- `GetOverlappingActors([[TArray]]<AActor>& OverlappingActors, [[TSubclassOf]]<AActor> ClassFilter = nullptr) const` - 返回此 Actor 正在重叠的 Actor 列表（任何组件重叠任何组件）。
- `GetOverlappingComponents([[TArray]]<[[UPrimitiveComponent]]>& OverlappingComponents) const` - 返回此 Actor 正在重叠的组件列表。
- `bool IsOverlappingActor(const AActor Other) const` - 检查此 Actor 的任何组件是否与另一个 Actor 的任何组件重叠。
- `bool GetActorEnableCollision() const` - 获取整个 Actor 当前的碰撞状态。
- `GetActorBounds(bool bOnlyCollidingComponents, [[FVector]]& Origin, [[FVector]]& BoxExtent, bool bIncludeFromChildActors = false) const` - 返回构成此 Actor 的所有组件的边界框（不包括 ChildActorComponents）。
- `EActorUpdateOverlapsMethod UpdateOverlapsMethodDuringLevelStreaming` - 在关卡流送期间加载时调用 UpdateOverlaps 以初始化重叠状态的条件。

### 标签

- `bool ActorHasTag([[FName]] Tag) const` - 检查此 Actor 的 Tags 数组是否包含提供的名称标签。
- `[[TArray]]<[[FName]]> Tags` - 可用于分组和分类的标签数组。

### 网络相关

- `bool HasAuthority() const` - 返回此 Actor 是否拥有网络权威。
- `ENetRole GetLocalRole() const` - 返回本地机器对此 Actor 有多少控制权。
- `ENetRole GetRemoteRole() const` - 返回远程机器对此 Actor 有多少控制权。
- `FlushNetDormancy()` - 强制休眠 Actor 进行复制，但不改变 NetDormancy 状态。
- `ForceNetUpdate()` - 强制 Actor 更新到客户端/演示网络驱动程序。
- `float GetNetUpdateFrequency() const` - 获取当前频率，该对象将被考虑复制。
- `float GetMinNetUpdateFrequency() const` - 获取当复制属性变化不频繁时节流到的频率。
- `float GetNetCullDistanceSquared() const` - 获取客户端视距的平方，超过此距离该 Actor 相关且将被复制。
- `EPhysicsReplicationMode GetPhysicsReplicationMode()` - 通过 EPhysicsReplicationMode 获取该主体的物理复制模式。
- `float GetResimulationThreshold() const` - 获取在该对象应强制重新模拟触发之前，以厘米为单位的误差阈值。
- `bool CanTriggerResimulation() const` - 当启用物理预测时，该主体是否可以触发重新模拟。

### 输入相关

- `CreateInputComponent([[TSubclassOf]]<[[UInputComponent]]> InputComponentToCreate)` - 从传入的输入组件创建一个输入组件。
- `DisableInput([[APlayerController]] PlayerController)` - 从 PlayerController 处理的输入堆栈中移除此 Actor。
- `EnableInput([[APlayerController]] PlayerController)` - 将此 Actor 推送到 PlayerController 处理的输入堆栈上。
- `int InputPriority` - 推入堆栈时此输入组件的优先级。

### Tick 相关

- `[[FActorTickFunction]] PrimaryActorTick` - 主要 Actor tick 函数，调用 TickActor()。
- `AddTickPrerequisiteActor(AActor PrerequisiteActor)` - 使此 Actor 在 PrerequisiteActor 之后 tick。
- `AddTickPrerequisiteComponent([[UActorComponent]] PrerequisiteComponent)` - 使此 Actor 在 PrerequisiteComponent 之后 tick。
- `bool IsActorTickEnabled() const` - 返回此 Actor 是否启用了 tick。
- `float GetActorTickInterval() const` - 返回此 Actor 的主要 tick 函数的 tick 间隔。
- `bool GetTickableWhenPaused()` - 获取此 Actor 在暂停时是否可以 tick。
- `bool bAllowTickBeforeBeginPlay` - 是否允许此 Actor 在收到 BeginPlay 事件之前 tick。

### 所有者和父级

- `AActor GetOwner() const` - 获取此 Actor 的所有者，主要用于网络复制。
- `AActor GetParentActor() const` - 如果此 Actor 由 ChildActorComponent 创建，则返回拥有该 ChildActorComponent 的 Actor。
- `[[UChildActorComponent]] GetParentComponent() const` - 如果此 Actor 由 ChildActorComponent 创建，则返回该 ChildActorComponent。
- `GetAttachedActors([[TArray]]<AActor>& OutActors, bool bResetArray = true, bool bRecursivelyIncludeAttachedActors = false) const` - 查找直接附加到此 Actor 的组件的所有 Actor。
- `GetAllChildActors([[TArray]]<AActor>& ChildActors, bool bIncludeDescendants = true) const` - 返回由我们的 ChildActorComponents 生成的所有 Actor 的列表，包括子级的子级。

### 可见性

- `bool IsHidden() const` - Actor 是否隐藏。
- `bool IsHiddenEd() const` - Actor 在编辑器视口中是否隐藏。
- `bool IsHiddenEdAtStartup() const` - 该 Actor 在编辑器启动时/默认是否隐藏。
- `bool IsTemporarilyHiddenInEditor(bool bIncludeParent = false) const` - 返回此 Actor 是否在当前编辑器会话期间在编辑器中被显式隐藏。

### 编辑器相关

- `bool IsEditable() const` - 返回 true 如果此 Actor 允许被编辑器显示、选择和操作。
- `bool IsSelectable() const` - 返回 true 如果此 Actor 永远可以在编辑器的关卡中被选择。可以被特定的 Actor 重写以使其不可选择。
- `[[FString]] GetActorLabel(bool bCreateIfNone = true) const` - 返回此 Actor 的当前标签。Actor 标签仅在开发版本中可用。
- `[[FString]] GetDefaultActorLabel() const` - 返回此 Actor 的默认标签（不包括任何数字后缀）。Actor 标签仅在开发版本中可用。
- `[[FName]] GetFolderPath() const` - 返回此 Actor 的文件夹路径。Actor 文件夹路径仅在开发版本中可用。
- `[[FString]] GetActorNameOrLabel() const` - 返回 Actor 名称或标签（如果可用）。

### 距离和方向

- `float GetDistanceTo(const AActor OtherActor) const` - 返回此 Actor 到 OtherActor 的距离。
- `float GetDotProductTo(const AActor OtherActor) const` - 返回此 Actor 到 OtherActor 的点积。失败时返回 -2.0。对于重合的 Actor 返回 0.0。
- `float GetHorizontalDistanceTo(const AActor OtherActor) const` - 返回此 Actor 到 OtherActor 的距离，忽略 Z。
- `float GetHorizontalDotProductTo(const AActor OtherActor) const` - 返回此 Actor 到 OtherActor 的点积，忽略 Z。
- `float GetSquaredDistanceTo(const AActor OtherActor) const` - 返回此 Actor 到 OtherActor 的平方距离。
- `float GetSquaredHorizontalDistanceTo(const AActor OtherActor) const` - 返回此 Actor 到 OtherActor 的平方距离，忽略 Z。
- `float GetVerticalDistanceTo(const AActor OtherActor) const` - 返回此 Actor 到 OtherActor 的距离，忽略 XY。

### 速度

- `[[FVector]] GetVelocity() const` - 如果 RootComponent 使用物理或有关联的 MovementComponent，则返回其速度（厘米/秒，虚幻单位/秒）。

### 生命时长

- `float GetLifeSpan() const` - 获取此 Actor 的剩余生命值。如果返回 0，则该 Actor 永远存在。
- `float GetGameTimeSinceCreation() const` - 自创建此 Actor 以来的秒数（游戏时间），相对于 GetGameTimeInSeconds。

### 关卡相关

- `[[ULevel]] GetLevel() const` - 返回此 Actor 所属的 [[ULevel]]。
- `[[FTransform]] GetLevelTransform() const` - 返回此 Actor 所属关卡的 [[FTransform]]。

### Instigator 相关

- `[[APawn]] GetInstigator() const` - 返回此 Actor 的 instigator，如果没有则返回 nullptr。
- `[[APawn]] GetActorInstigator() const` - 返回此 Actor 的 instigator。
- `[[AController]] GetInstigatorController() const` - 返回此 Actor 的 instigator 的控制器，如果没有则返回 nullptr。
- `[[AController]] GetActorInstigatorController() const` - 返回此 Actor 的 instigator 的控制器。

### GameInstance

- `[[UGameInstance]] GetGameInstance() const` - 返回此对象相关联的 GameInstance（如果有）。

### Ray Tracing

- `int GetRayTracingGroupId() const` - 返回此 Actor 的 RayTracingGroupId。

### 其他

- `OnReset()` - 当此 Actor 重置为其初始状态时调用的事件 - 在不重新加载的情况下重启关卡时使用。

## 示例

```angelscript
// 设置 Actor 位置
[[FVector]] NewLocation = [[FVector]](100, 200, 50);
Actor.SetActorLocation(NewLocation, false, HitResult, false);

// 获取 Actor 位置
[[FVector]] Location = Actor.GetActorLocation();
[[Print]]("位置: " + Location.ToString());

// 检查是否有标签
if (Actor.ActorHasTag(n"Enemy")) {
    [[Print]]("这是敌人");
}

// 获取 RootComponent
[[USceneComponent]] Root = Actor.GetRootComponent();

// 获取指定类型组件
[[UStaticMeshComponent]] Mesh = [[UStaticMeshComponent]].Get(Actor);
if (Mesh != nullptr) {
    [[Print]]("找到了 StaticMeshComponent");
}

// 附加到另一个 Actor
bool Attached = Actor.AttachToActor(OtherActor, n"HandSocket",
    EAttachmentRule.KeepRelative,
    EAttachmentRule.KeepRelative,
    EAttachmentRule.KeepRelative,
    true);

// 销毁 Actor
Actor.DestroyActor();
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
