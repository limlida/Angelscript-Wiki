---
title: "AHUD"
category: entities
date: 2026-05-09
tags:
  - Actor
  - HUD
  - 渲染
---

## 概述

AHUD 是平视显示器的基类，提供画布绘制接口。它包含用于渲染文本、纹理、矩形和材质的简单方法，以及用于简单点击检测的 HitBox 系统。

**核心用途**：Canvas 绘制、调试文本、屏幕坐标转换。

## 主要属性

- `APlayerController PlayerOwner` - 拥有此 HUD 的 PlayerController
- `bool bShowHUD` - 是否绘制 HUD
- `bool bShowDebugInfo` - 是否显示调试信息
- `bool bShowOverlays` - 是否渲染 Actor 覆盖层
- `bool bEnableDebugTextShadow` - 调试文本是否带阴影

## 主要方法

### 绘制

- `DrawHUD(int SizeX, int SizeY)` - HUD 绘制入口，可重写
- `DrawText(FString Text, FLinearColor TextColor, float32 ScreenX, float32 ScreenY, UFont Font = nullptr, float32 Scale = 1.0, bool bScalePosition = false)` - 绘制文本
- `DrawLine(float32 StartScreenX, float32 StartScreenY, float32 EndScreenX, float32 EndScreenY, FLinearColor LineColor, float32 LineThickness = 0.0)` - 绘制线条
- `DrawRect(FLinearColor RectColor, float32 ScreenX, float32 ScreenY, float32 ScreenW, float32 ScreenH)` - 绘制矩形
- `DrawTexture(UTexture Texture, float32 ScreenX, float32 ScreenY, ...)` - 绘制纹理
- `DrawTextureSimple(UTexture Texture, float32 ScreenX, float32 ScreenY, float32 Scale = 1.0, bool bScalePosition = false)` - 简单绘制纹理
- `DrawMaterial(UMaterialInterface Material, float32 ScreenX, float32 ScreenY, ...)` - 绘制材质
- `DrawMaterialSimple(UMaterialInterface Material, float32 ScreenX, float32 ScreenY, float32 ScreenW, float32 ScreenH, ...)` - 简单绘制材质

### 坐标转换

- `FVector Project(FVector Location, bool bClampToZeroPlane = true) const` - 3D 世界坐标 → 2D 屏幕坐标
- `Deproject(float32 ScreenX, float32 ScreenY, FVector& WorldPosition, FVector& WorldDirection) const` - 2D 屏幕坐标 → 3D 世界位置和方向

### 文本测量

- `GetTextSize(FString Text, float32& OutWidth, float32& OutHeight, UFont Font = nullptr, float32 Scale = 1.0) const` - 获取文本尺寸

### 调试文本

- `AddDebugText(FString DebugText, AActor SrcActor, float32 Duration, ...)` - 添加调试文本
- `RemoveDebugText(AActor SrcActor, bool bLeaveDurationText)` - 移除调试文本
- `RemoveAllDebugStrings()` - 移除所有调试文本

### HitBox

- `AddHitBox(FVector2D Position, FVector2D Size, FName InName, bool bConsumesInput, int Priority = 0)` - 添加点击区域
- `HitBoxClick(FName BoxName)` - 点击区域被点击
- `HitBoxRelease(FName BoxName)` - 点击区域被释放

### 其他

- `APawn GetOwningPawn() const` - 获取拥有者 Pawn
- `APlayerController GetOwningPlayerController() const` - 获取拥有者 PlayerController
- `GetActorsInSelectionRectangle(TSubclassOf<AActor> ClassFilter, FVector2D FirstPoint, FVector2D SecondPoint, TArray<AActor>& OutActors, ...)` - 获取选择框内的 Actor

## 示例

```angelscript
// 在 HUD 上绘制文本
void DrawHUD(int SizeX, int SizeY) override
{
    Super::DrawHUD(SizeX, SizeY);

    DrawText("Hello World", FLinearColor::White, 100.0f, 100.0f);

    DrawLine(0.0f, 0.0f, 100.0f, 100.0f, FLinearColor::Red, 2.0f);

    DrawRect(FLinearColor(0.0f, 0.0f, 0.0f, 0.5f), 50.0f, 50.0f, 200.0f, 50.0f);
}

// 3D → 2D 坐标转换
FVector ScreenPos = HUD.Project(ActorLocation);
if (ScreenPos.Z > 0.0f)
{
    DrawText("目标", FLinearColor::Green, ScreenPos.X, ScreenPos.Y);
}

// 2D → 3D 坐标转换
FVector WorldPos;
FVector WorldDir;
HUD.Deproject(MouseX, MouseY, WorldPos, WorldDir);
```

## 相关页面

- [[APlayerController]] - 玩家控制器
- [[UUserWidget]] - 用户控件（UMG 方式的 UI）

## 来源

- [AHUD.md](../../raw/API/Global/AHUD.md)
