---
title: "AGameStateBase"
category: entities
date: 2026-05-09
tags:
  - Actor
  - GameState
  - 游戏框架
---

## 概述

AGameStateBase 是管理游戏全局状态的类，由 [[AGameModeBase]] 生成。**与 GameMode 不同，GameState 同时存在于客户端和服务端，并且完全复制。** 这使得客户端也能访问游戏的全局状态信息。

**核心用途**：存储所有客户端都需要知道的游戏全局数据，如玩家列表、服务器时间、比赛状态等。

## 主要属性

- `TArray<TObjectPtr<APlayerState>> PlayerArray` - 所有 PlayerState 的数组，在服务端和客户端都维护（PlayerState 始终相关）
- `AGameModeBase AuthorityGameMode` - 当前 GameMode 实例，仅存在于服务器，非权威客户端上为 NULL
- `TSubclassOf<AGameModeBase> GameModeClass` - 服务器 GameMode 的类，由 GameModeBase 分配
- `TSubclassOf<ASpectatorPawn> SpectatorClass` - 观战者使用的类，由 GameModeBase 分配
- `float32 ServerWorldTimeSecondsUpdateFrequency` - 服务器更新复制 TimeSeconds 的频率（秒），0 表示禁用周期性更新

## 主要方法

### 时间相关

- `float GetServerWorldTimeSeconds() const` - 返回服务器上的模拟 TimeSeconds，在客户端和服务端同步

### 比赛状态

- `bool HasMatchStarted() const` - 比赛是否已开始（是否调用了 MatchStarted 回调）
- `bool HasMatchEnded() const` - 比赛是否已结束，默认为 false
- `bool HasBegunPlay() const` - 世界是否已开始播放（是否调用了 BeginPlay）

### 玩家相关

- `float32 GetPlayerRespawnDelay(AController Controller) const` - 返回玩家重生前需要等待的时间
- `float32 GetPlayerStartTime(AController Controller) const` - 返回玩家开始时间

## 示例

```angelscript
// 获取游戏状态
AGameStateBase GS = GetGameState();
if (GS != nullptr)
{
    // 检查比赛状态
    if (GS.HasMatchStarted())
    {
        Print("比赛已开始");
    }

    // 获取服务器时间
    float ServerTime = GS.GetServerWorldTimeSeconds();
    Print("服务器时间: " + ServerTime);

    // 遍历所有玩家
    TArray<APlayerState> Players = GS.PlayerArray;
    for (int i = 0; i < Players.Num(); ++i)
    {
        Print("玩家: " + Players[i].GetPlayerName());
    }
}
```

## 继承关系

- [[AGameStateBase]] → [[AGameState]]（增加了比赛状态管理）

## 相关页面

- [[AGameModeBase]] - GameMode 基类
- [[APlayerState]] - 玩家状态

## 来源

- [AGameStateBase.md](../../raw/API/Global/AGameStateBase.md)
