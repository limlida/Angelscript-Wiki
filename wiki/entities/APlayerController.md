﻿---
title: "APlayerController"
category: entities
date: 2026-05-08
tags:
  - Actor
  - Controller
  - Player
---

## 概述

PlayerControllers are used by human players to control Pawns. ControlRotation (accessed via GetControlRotation()), determines the aiming orientation of the controlled Pawn.

In networked games, PlayerControllers exist on the server for every player-controlled pawn, and also on the controlling client's machine. They do NOT exist on a client's machine for pawns controlled by remote players elsewhere on the network.

**官方文档**：[Player Controllers](https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Controller/PlayerController/)

## 主要属性

### 核心组件
- `[[APlayerCameraManager]] PlayerCameraManager` - Camera manager associated with this Player Controller
- `[[TSubclassOf]]<[[APlayerCameraManager]]> PlayerCameraManagerClass` - PlayerCamera class should be set for each game

### 鼠标和输入
- `bool bShowMouseCursor` - Whether the mouse cursor should be displayed
- `bool bEnableClickEvents` - Whether actor/component click events should be generated
- `bool bEnableMouseOverEvents` - Whether actor/component mouse over events should be generated
- `bool bEnableTouchEvents` - Whether actor/component touch events should be generated
- `bool bEnableTouchOverEvents` - Whether actor/component touch over events should be generated
- `bool bEnableMotionControls` - Whether or not to consider input from motion sources

### 鼠标设置
- `EMouseCursor DefaultMouseCursor` - Type of mouse cursor to show by default
- `EMouseCursor CurrentMouseCursor` - Currently visible mouse cursor

### 点击和碰撞
- `ECollisionChannel DefaultClickTraceChannel` - Default trace channel used for determining what world object was clicked on
- `ECollisionChannel CurrentClickTraceChannel` - Trace channel currently being used for determining what world object was clicked on
- `float HitResultTraceDistance` - Distance to trace when computing click events
- `[[TArray]]<[[FKey]]> ClickEventKeys` - List of keys that will cause click events to be forwarded, default to left click

### 相机和视图
- `bool bAutoManageActiveCameraTarget` - True to allow this player controller to manage the camera target

### 作弊系统
- `[[TSubclassOf]]<[[UCheatManager]]> CheatClass` - Class of my CheatManager
- `[[UCheatManager]] CheatManager` - Object that manages "cheat" commands

### 力反馈
- `bool bForceFeedbackEnabled`

### 流送和加载
- `bool bEnableStreamingSource` - Whether the PlayerController should be used as a World Partiton streaming source
- `EStreamingSourcePriority StreamingSourcePriority` - PlayerController streaming source priority
- `[[TArray]]<[[FStreamingSourceShape]]> StreamingSourceShapes` - Optional aggregated shape list used to build a custom shape
- `bool bStreamingSourceShouldActivate` - Whether the PlayerController streaming source should activate cells after loading
- `bool bStreamingSourceShouldBlockOnSlowStreaming` - Whether the PlayerController streaming source should block on slow streaming
- `[[FColor]] StreamingSourceDebugColor` - Color used for debugging

### 暂停和等待
- `bool bShouldPerformFullTickWhenPaused` - Whether we fully tick when the game is paused
- `bool bPlayerIsWaiting` - True if PlayerController is currently waiting for the match to start or to respawn

### 输入类
- `[[TSubclassOf]]<[[UPlayerInput]]> OverridePlayerInputClass` - If set, then this [[UPlayerInput]] class will be used instead

### 视图旋转平滑
- `float SmoothTargetViewRotationSpeed` - Interp speed for blending remote view rotation for smoother client updates

## 主要方法

### 旋转输入
- `AddPitchInput(float Val)` - Add Pitch (look up) input
- `AddRollInput(float Val)` - Add Roll input
- `AddYawInput(float Val)` - Add Yaw (turn) input

### 玩家和输入控制
- `SetPlayer([[UPlayer]] InPlayer)`
- `[[ULocalPlayer]] GetLocalPlayer() const`
- `bool CanRestartPlayer()` - Returns true if this controller thinks it's able to restart

### 触摸界面
- `ActivateTouchInterface([[UTouchInterface]] NewTouchInterface)`

### 鼠标位置和投影
- `bool DeprojectMousePositionToWorld([[FVector]]& WorldLocation, [[FVector]]& WorldDirection) const` - Convert current mouse 2D position to World Space 3D position and direction
- `bool DeprojectScreenPositionToWorld(float ScreenX, float ScreenY, [[FVector]]& WorldLocation, [[FVector]]& WorldDirection) const` - Convert 2D screen position to World Space 3D position and direction

### 光标碰撞检测
- `bool GetHitResultUnderCursorByChannel(ETraceTypeQuery TraceChannel, bool bTraceComplex, [[FHitResult]]& HitResult) const` - Performs a collision query under the mouse cursor, looking on a trace channel
- `bool GetHitResultUnderCursorForObjects([[TArray]]<EObjectTypeQuery> ObjectTypes, bool bTraceComplex, [[FHitResult]]& HitResult) const` - Performs a collision query under the mouse cursor, looking for object types
- `bool GetHitResultUnderFingerByChannel(ETouchIndex FingerIndex, ETraceTypeQuery TraceChannel, bool bTraceComplex, [[FHitResult]]& HitResult) const`

### 焦点位置
- `[[FVector]] GetFocalLocation() const` - Returns the location the PlayerController is focused on

### 音频监听
- `ClearAudioListenerAttenuationOverride()`
- `ClearAudioListenerOverride()`

### 已过时输入缩放
- `float GetDeprecatedInputPitchScale() const`
- `float GetDeprecatedInputRollScale() const`
- `float GetDeprecatedInputYawScale() const`

## 客户端RPC方法（大量）

- `ClientAckTimeDilation(float TimeDilation, int ServerStep)`
- `ClientAddTextureStreamingLoc([[FVector]] InLoc, float Duration, bool bOverrideLocation)`
- `ClientCancelPendingMapChange()`
- `ClientCapBandwidth(int Cap)`
- `ClientClearCameraLensEffects()`
- `ClientCommitMapChange()`
- `ClientEnableNetworkVoice(bool bEnable)`
- `ClientEndOnlineSession()`
- `ClientFlushLevelStreaming()`
- `ClientForceGarbageCollection()`
- `ClientGameEnded([[AActor]] EndGameFocus, bool bIsWinner)`
- `ClientGotoState([[FName]] NewState)`
- `ClientIgnoreLookInput(bool bIgnore)`
- `ClientIgnoreMoveInput(bool bIgnore)`
- `ClientMessage([[FString]] S, [[FName]] Type, float MsgLifeTime)`
- `ClientMutePlayer([[FUniqueNetIdRepl]] PlayerId)`
- `ClientPlaySound([[USoundBase]] Sound, float VolumeMultiplier, float PitchMultiplier)`
- `ClientPlaySoundAtLocation([[USoundBase]] Sound, [[FVector]] Location, float VolumeMultiplier, float PitchMultiplier)`
- `ClientPrepareMapChange([[FName]] LevelName, bool bFirst, bool bLast)`
- `ClientPrestreamTextures([[AActor]] ForcedActor, float ForceDuration, bool bEnableStreaming, int CinematicTextureGroups)`
- `ClientReceiveLocalizedMessage([[TSubclassOf]]<[[ULocalMessage]]> Message, int Switch, [[APlayerState]] RelatedPlayerState_1, [[APlayerState]] RelatedPlayerState_2, [[UObject]] OptionalObject)`
- `ClientRepObjRef([[UObject]] Object)`
- `ClientReset()`
- `ClientRestart([[APawn]] NewPawn)`
- `ClientRetryClientRestart([[APawn]] NewPawn)`
- `ClientReturnToMainMenuWithTextReason([[FText]] ReturnReason)`
- `ClientSetBlockOnAsyncLoading()`
- `ClientSetCameraFade(bool bEnableFading, [[FColor]] FadeColor, [[FVector2D]] FadeAlpha, float FadeTime, bool bFadeAudio, bool bHoldWhenFinished)`
- `ClientSetCameraMode([[FName]] NewCamMode)`
- `ClientSetCinematicMode(bool bInCinematicMode, bool bAffectsMovement, bool bAffectsTurning, bool bAffectsHUD)`
- `ClientSetForceMipLevelsToBeResident([[UMaterialInterface]] Material, float ForceDuration, int CinematicTextureGroups)`
- `ClientSetHUD([[TSubclassOf]]<[[AHUD]]> NewHUDClass)`
- `ClientSetSpectatorWaiting(bool bWaiting)`
- `ClientSetViewTarget([[AActor]] A, [[FViewTargetTransitionParams]] TransitionParams)`
- `ClientSpawnGenericCameraLensEffect([[TSubclassOf]]<[[AActor]]> LensEffectEmitterClass)`
- `ClientStartCameraShake([[TSubclassOf]]<[[UCameraShakeBase]]> Shake, float Scale, ECameraShakePlaySpace PlaySpace, [[FRotator]] UserPlaySpaceRot)`
- `ClientStartCameraShakeFromSource([[TSubclassOf]]<[[UCameraShakeBase]]> Shake, [[UCameraShakeSourceComponent]] SourceComponent)`
- `ClientStartOnlineSession()`
- `ClientStopCameraShake([[TSubclassOf]]<[[UCameraShakeBase]]> Shake, bool bImmediately)`
- `ClientStopCameraShakesFromSource([[UCameraShakeSourceComponent]] SourceComponent, bool bImmediately)`
- `ClientStopForceFeedback([[UForceFeedbackEffect]] ForceFeedbackEffect, [[FName]] Tag)`
- `ClientTeamMessage([[APlayerState]] SenderPlayerState, [[FString]] S, [[FName]] Type, float MsgLifeTime)`
- `ClientTravelInternal([[FString]] URL, ETravelType TravelType, bool bSeamless, [[FGuid]] MapPackageGuid)`
- `ClientUnmutePlayer([[FUniqueNetIdRepl]] PlayerId)`
- `ClientUnmutePlayers([[TArray]]<[[FUniqueNetIdRepl]]> PlayerIds)`
- `ClientVoiceHandshakeComplete()`
- `ClientWasKicked([[FText]] KickReason)`

## 示例

```angelscript
// 添加旋转输入
PlayerController.AddYawInput(1.0);
PlayerController.AddPitchInput(0.5);

// 显示光标
PlayerController.bShowMouseCursor = true;

// 获取光标下的碰撞
[[FHitResult]] Hit;
if (PlayerController.GetHitResultUnderCursorByChannel(ECC_Visibility, false, Hit)) {
    [[Print]]("Hit: " + Hit.Actor.GetName());
}
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
