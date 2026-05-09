---
title: "AGameModeBase"
category: entities
date: 2026-05-09
tags:
  - Actor
  - GameMode
  - 游戏框架
---

## 概述

AGameModeBase 定义了正在进行的游戏。它管理游戏规则、得分、允许存在的 Actor 类型以及谁可以进入游戏。**GameModeBase 仅在服务器上实例化，永远不会存在于客户端上。**

GameModeBase Actor 在关卡为游戏初始化时由 `UGameEngine::LoadMap()` 实例化。其类由以下顺序决定：URL `?game=xxx`、World Settings 中的 GameMode Override、或项目设置中的 DefaultGameMode。

- **官方文档**: https://docs.unrealengine.com/latest/INT/Gameplay/Framework/GameMode/index.html

## 主要属性

### 类配置

- `TSubclassOf<APawn> DefaultPawnClass` - 玩家使用的默认 Pawn 类
- `TSubclassOf<APlayerController> PlayerControllerClass` - 玩家登录时生成的 PlayerController 类
- `TSubclassOf<APlayerState> PlayerStateClass` - 每个玩家关联的 PlayerState 类
- `TSubclassOf<AGameStateBase> GameStateClass` - 与此 GameMode 关联的 GameState 类
- `TSubclassOf<AHUD> HUDClass` - 此游戏使用的 HUD 类
- `TSubclassOf<AGameSession> GameSessionClass` - 处理登录审批和在线游戏接口的 GameSession 类
- `TSubclassOf<ASpectatorPawn> SpectatorClass` - 观战玩家使用的 Pawn 类
- `TSubclassOf<APlayerController> ReplaySpectatorPlayerControllerClass` - 观战网络回放时使用的 PlayerController 类

### 游戏设置

- `FText DefaultPlayerName` - 未指定名称的玩家的默认名称
- `FString OptionsString` - 保存选项字符串
- `bool bPauseable` - 游戏是否可暂停
- `bool bStartPlayersAsSpectators` - 玩家登录后是否立即生成，还是保持观战状态
- `bool bUseSeamlessTravel` - 是否使用无缝旅行进行地图切换

## 主要方法

### 玩家管理

- `HandleStartingNewPlayer(APlayerController NewPlayer)` - 通知玩家准备好进入游戏
- `OnPostLogin(APlayerController NewPlayer)` - 玩家成功登录后的通知
- `OnLogout(AController ExitingController)` - 带有 PlayerState 的控制器离开游戏时的事件
- `ChangeName(AController Controller, FString NewName, bool bNameChange)` - 设置控制器对应的玩家名称
- `OnChangeName(AController Other, FString NewName, bool bNameChange)` - 名称变更时可重写的事件

### 生成与重生

- `RestartPlayer(AController NewPlayer)` - 尝试在 FindPlayerStart 返回的位置生成玩家 Pawn
- `RestartPlayerAtPlayerStart(AController NewPlayer, AActor StartSpot)` - 在指定 PlayerStart 的位置生成玩家 Pawn
- `RestartPlayerAtTransform(AController NewPlayer, FTransform SpawnTransform)` - 在指定变换位置生成玩家 Pawn
- `APawn SpawnDefaultPawnAtTransform(AController NewPlayer, FTransform SpawnTransform)` - 在指定变换位置实际生成玩家 Pawn
- `APawn SpawnDefaultPawnFor(AController NewPlayer, AActor StartSpot)` - 在指定 StartSpot 位置实际生成玩家 Pawn
- `bool PlayerCanRestart(APlayerController Player)` - 是否可以调用 RestartPlayer
- `OnRestartPlayer(AController NewPlayer)` - RestartPlayer 结束时可重写的事件

### PlayerStart 选择

- `AActor ChoosePlayerStart(AController Player)` - 返回最佳 PlayerStart，默认实现查找随机未占用的位置
- `AActor FindPlayerStart(AController Player, FString IncomingName)` - 返回下次生成应使用的 PlayerStart Actor
- `AActor K2_FindPlayerStart(AController Player, FString IncomingName = "")` - 蓝图版本的 FindPlayerStart

### 游戏状态

- `bool HasMatchStarted() const` - 比赛是否已开始
- `bool HasMatchEnded() const` - 比赛是否已结束
- `int GetNumPlayers()` - 返回活跃人类玩家数（不含观战者）
- `int GetNumSpectators()` - 返回当前观战的人类玩家数

### 其他

- `ResetLevel()` - 重置关卡时调用的可重写函数
- `bool ShouldReset(AActor ActorToReset)` - 判断 Actor 是否应在游戏重置时调用 Reset
- `InitializeHUDForPlayer(APlayerController NewPlayer)` - 为玩家初始化 HUD
- `ReturnToMainMenuHost()` - 返回主菜单并断开所有玩家
- `bool CanSpectate(APlayerController Viewer, APlayerState ViewTarget)` - Viewer 是否被允许观战 ViewTarget
- `bool MustSpectate(APlayerController NewPlayerController) const` - 新玩家是否只能以观战者身份加入

## 示例

```angelscript
// 获取 GameMode
AGameModeBase GM = GetGameMode();
if (GM != nullptr)
{
    // 检查比赛状态
    if (GM.HasMatchStarted())
    {
        Print("比赛已开始");
    }

    // 获取玩家数量
    int PlayerCount = GM.GetNumPlayers();
    Print("当前玩家数: " + PlayerCount);
}

// 在 GameMode 中重写玩家登录逻辑
void OnPostLogin(APlayerController NewPlayer) override
{
    Super::OnPostLogin(NewPlayer);
    Print("新玩家登录: " + NewPlayer.GetPlayerState().GetPlayerName());
}
```

## 继承关系

- [[AGameModeBase]] → [[AGameMode]]（增加了比赛状态管理）

## 相关页面

- [[AGameStateBase]] - 游戏状态（客户端和服务端都存在）
- [[APlayerState]] - 玩家状态
- [[AController]] - 控制器基类

## 来源

- [AGameModeBase.md](../../raw/API/Global/AGameModeBase.md)
