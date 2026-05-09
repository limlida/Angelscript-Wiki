---
title: "UGameInstance"
category: entities
date: 2026-05-09
tags:
  - 游戏框架
  - GameInstance
---

## 概述

UGameInstance 是运行中游戏实例的高级管理器对象。在游戏创建时生成，直到游戏实例关闭时才销毁。

- **独立游戏**：只有一个 GameInstance
- **PIE（编辑器内播放）**：每个 PIE 实例生成一个 GameInstance

**核心用途**：存储跨关卡持久化的数据，管理本地玩家，处理网络错误等。

## 主要属性

### 事件

- `FOnUserInputDeviceConnectionChange OnInputDeviceConnectionChange` - 输入设备连接状态变化回调（手柄连接/断开）
- `FOnUserInputDevicePairingChange OnUserInputDevicePairingChange` - 输入设备配对变化回调
- `FOnPawnControllerChanged OnPawnControllerChangedDelegates` - Pawn 控制器变化回调

## 主要方法

### 本地玩家管理

- `ULocalPlayer CreateInitialPlayer(FString& OutError)` - 创建初始玩家
- `ULocalPlayer CreateLocalPlayer(int ControllerId, FString& OutError, bool bSpawnPlayerController)` - 创建本地玩家
- `int AddLocalPlayer(ULocalPlayer NewPlayer, FPlatformUserId UserId)` - 添加本地玩家
- `bool RemoveLocalPlayer(ULocalPlayer ExistingPlayer)` - 移除本地玩家
- `int GetNumLocalPlayers() const` - 获取本地玩家数量
- `ULocalPlayer GetLocalPlayerByIndex(int Index) const` - 按索引获取本地玩家
- `ULocalPlayer GetFirstGamePlayer() const` - 获取第一个游戏玩家
- `APlayerController GetFirstLocalPlayerController(const UWorld World = nullptr) const` - 获取第一个本地玩家的 PlayerController
- `ULocalPlayer FindLocalPlayerFromControllerId(int ControllerId) const` - 按 ControllerId 查找本地玩家
- `ULocalPlayer FindLocalPlayerFromUniqueNetId(FUniqueNetIdRepl UniqueNetId) const` - 按唯一网络 ID 查找本地玩家

### 生命周期

- `Init()` - 游戏实例初始化时可重写的事件
- `Shutdown()` - 游戏实例关闭时可重写的事件

### 错误处理

- `HandleNetworkError(ENetworkFailure FailureType, bool bIsServer)` - 处理网络错误
- `HandleTravelError(ETravelFailure FailureType)` - 处理旅行错误

## 示例

```angelscript
// 获取 GameInstance
UGameInstance GI = GetGameInstance();
if (GI != nullptr)
{
    // 获取本地玩家数量
    int PlayerCount = GI.GetNumLocalPlayers();
    Print("本地玩家数: " + PlayerCount);

    // 获取第一个本地玩家的控制器
    APlayerController PC = GI.GetFirstLocalPlayerController();
    if (PC != nullptr)
    {
        Print("第一个玩家控制器: " + PC.GetName());
    }
}
```

## 相关页面

- [[AGameModeBase]] - GameMode 基类
- [[UWorld]] - 世界对象

## 来源

- [UGameInstance.md](../../raw/API/Global/UGameInstance.md)
