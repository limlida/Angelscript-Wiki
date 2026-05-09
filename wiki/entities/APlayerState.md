---
title: "APlayerState"
category: entities
date: 2026-05-09
tags:
  - Actor
  - PlayerState
  - 游戏框架
---

## 概述

APlayerState 为服务器上的每个玩家（或独立游戏中）创建。PlayerState 会复制到所有客户端，包含与网络游戏相关的玩家信息，如玩家名称、分数等。

**核心用途**：存储需要在所有客户端上可见的玩家信息（名称、分数、Ping 等），与仅在服务器上存在的 [[APlayerController]] 互补。

## 主要属性

- `float32 Score` - 玩家当前分数
- `int PlayerId` - 唯一网络 ID 数字，用作每个玩家的唯一标识
- `APawn PawnPrivate` - 由此 PlayerState 控制的 Pawn
- `uint8 CompressedPing` - 复制的压缩 Ping 值（以毫秒为单位的 Ping 除以 4）
- `FOnPlayerStatePawnSet OnPawnSet` - 当此玩家的附身 Pawn 被设置时广播
- `bool bIsABot` - 此 PlayerState 是否与 AIController 关联
- `bool bIsSpectator` - 此玩家当前是否为观战者
- `bool bShouldUpdateReplicatedPing` - 是否自动更新复制的 CompressedPing 值

## 主要方法

### 玩家信息

- `FString GetPlayerName() const` - 返回当前玩家名称
- `int GetPlayerId() const` - 获取 PlayerId 的值
- `float32 GetScore() const` - 获取分数的值
- `FUniqueNetIdRepl GetUniqueId() const` - 获取玩家的在线唯一 ID

### Ping 相关

- `uint8 GetCompressedPing() const` - 获取压缩 Ping 值（Ping = PingInMS / 4）
- `float32 GetPingInMilliseconds() const` - 返回以毫秒为单位的 Ping 值

### Pawn 和 Controller

- `APawn GetPawn() const` - 返回由此 PlayerState 控制的 Pawn
- `APlayerController GetPlayerController() const` - 返回创建此 PlayerState 的 PlayerController

### 状态查询

- `bool IsABot() const` - 是否为 AI 机器人
- `bool IsSpectator() const` - 是否为观战者
- `bool IsOnlyASpectator() const` - 是否仅为观战者

### 状态迁移

- `CopyProperties(APlayerState NewPlayerState)` - 旅行到新关卡时将属性复制到新 PlayerState
- `OverrideWith(APlayerState OldPlayerState)` - 重新连接时用旧 PlayerState 的属性覆盖

## 示例

```angelscript
// 获取玩家信息
APlayerState PS = GetPlayerState();
if (PS != nullptr)
{
    Print("玩家名称: " + PS.GetPlayerName());
    Print("分数: " + PS.GetScore());
    Print("Ping: " + PS.GetPingInMilliseconds() + "ms");
    Print("是否为机器人: " + PS.IsABot());
}

// 遍历所有玩家
AGameStateBase GS = GetGameState();
if (GS != nullptr)
{
    TArray<APlayerState> Players = GS.PlayerArray;
    for (int i = 0; i < Players.Num(); ++i)
    {
        Print("玩家 " + i + ": " + Players[i].GetPlayerName());
    }
}
```

## 继承关系

- [[APlayerState]] → [[ATkPlayerState]]（项目自定义 PlayerState）

## 相关页面

- [[AGameModeBase]] - GameMode 基类
- [[AGameStateBase]] - 游戏状态
- [[AController]] - 控制器基类

## 来源

- [APlayerState.md](../../raw/API/Global/APlayerState.md)
