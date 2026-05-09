---
title: "AGameMode"
category: entities
date: 2026-05-09
tags:
  - Actor
  - GameMode
  - 游戏框架
---

## 概述

AGameMode 是 [[AGameModeBase]] 的子类，增加了基于多人比赛的默认行为，包括生成点选择和比赛状态管理。如果你需要更简单的基础，请继承 [[AGameModeBase]]。

**比赛状态机**：
- `WaitingToStart` → `InProgress` → `WaitingPostMatch` → `LeavingMap`

## 主要属性

- `float32 InactivePlayerStateLifeSpan` - 玩家登出后不活跃 PlayerState 的保留时间
- `int MaxInactivePlayers` - 不活跃玩家的最大数量，超过后踢出最老的
- `float32 MinRespawnDelay` - 玩家死亡后重生前的最短等待时间
- `int NumBots` - 非人类玩家（AI 控制但作为玩家参与）的数量
- `int NumPlayers` - 当前人类玩家数量
- `int NumSpectators` - 当前观战者数量
- `int NumTravellingPlayers` - 仍在从上一张地图旅行中的玩家数量
- `bool bDelayedStart` - 游戏是否应在第一个玩家登录后立即开始

## 主要方法

### 比赛状态管理

- `StartMatch()` - 从 WaitingToStart 转换到 InProgress。可以手动调用，也会在 ReadyToStartMatch 返回 true 时自动调用
- `EndMatch()` - 从 InProgress 转换到 WaitingPostMatch。可以手动调用，也会在 ReadyToEndMatch 返回 true 时自动调用
- `AbortMatch()` - 报告比赛因不可恢复的错误而失败
- `RestartGame()` - 重启游戏，默认旅行到当前地图

### 比赛状态查询

- `FName GetMatchState() const` - 返回当前比赛状态
- `bool IsMatchInProgress() const` - 比赛是否正在进行
- `bool ReadyToStartMatch()` - 是否准备好开始比赛，游戏应重写此方法
- `bool ReadyToEndMatch()` - 是否准备好结束比赛，游戏应重写此方法

### 比赛状态事件

- `OnSetMatchState(FName NewState)` - 响应比赛状态变更的可实现事件

### 其他

- `Say(FString Msg)` - 向所有玩家广播字符串

## 示例

```angelscript
// 检查比赛状态
AGameMode GM = Cast<AGameMode>(GetGameMode());
if (GM != nullptr)
{
    FName State = GM.GetMatchState();
    Print("当前比赛状态: " + State.ToString());

    if (GM.IsMatchInProgress())
    {
        Print("比赛正在进行");
    }
}

// 手动结束比赛
GM.EndMatch();

// 重写 ReadyToEndMatch 判断比赛结束条件
bool ReadyToEndMatch() override
{
    // 例如：当只剩一个玩家时结束
    return GM.GetNumPlayers() <= 1;
}
```

## 继承关系

- [[AGameModeBase]] → **AGameMode**

## 相关页面

- [[AGameModeBase]] - GameMode 基类
- [[AGameStateBase]] - 游戏状态

## 来源

- [AGameMode.md](../../raw/API/Global/AGameMode.md)
