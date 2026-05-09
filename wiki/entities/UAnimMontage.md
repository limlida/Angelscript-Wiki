---
title: "UAnimMontage"
category: entities
date: 2026-05-09
tags:
  - 动画
  - Montage
---

## 概述

UAnimMontage 是动画蒙太奇资产，用于在动画蓝图中播放复杂的多段动画序列。Montage 支持混合、段落跳转、同步组等高级功能，是实现游戏动画逻辑的核心工具。

**核心用途**：通过 [[UAnimInstance]] 的 `Montage_Play()` 等方法播放，常用于攻击动画、技能动画、交互动画等。

## 主要属性

### 混合设置

- `FAlphaBlend BlendIn` - 混入选项
- `FAlphaBlend BlendOut` - 混出选项（仅当蒙太奇自行混出时使用，被中断时使用新蒙太奇的 BlendIn）
- `EMontageBlendMode BlendModeIn` - 混入模式
- `EMontageBlendMode BlendModeOut` - 混出模式
- `UBlendProfile BlendProfileIn` - 混入混合配置
- `UBlendProfile BlendProfileOut` - 混出混合配置
- `float32 BlendOutTriggerTime` - 从序列末尾触发混出的时间（<0 使用 BlendOutTime，>=0 使用 SequenceEnd - BlendOutTriggerTime）
- `bool bEnableAutoBlendOut` - 到达末尾时是否自动混出（false 则保持最后姿势直到显式停止）

### 同步

- `FName SyncGroup` - 同步组名称（用于基于标记的同步）
- `int SyncSlotIndex` - 用于收集同步标记的 Slot 轨道索引

### 时间拉伸

- `FTimeStretchCurve TimeStretchCurve` - 时间拉伸曲线（仅在非默认播放速率时使用）
- `FName TimeStretchCurveName` - 可选的时间拉伸曲线名称

## 主要方法

### 混合信息

- `FAlphaBlendArgs GetBlendInArgs() const` - 获取混入参数
- `FAlphaBlendArgs GetBlendOutArgs() const` - 获取混出参数
- `float32 GetDefaultBlendInTime() const` - 获取默认混入时间
- `float32 GetDefaultBlendOutTime() const` - 获取默认混出时间

### 段落信息

- `int GetNumSections() const` - 获取段落数量
- `int GetSectionIndex(FName InSectionName) const` - 从段落名获取索引
- `FName GetSectionName(int SectionIndex) const` - 从索引获取段落名
- `bool IsValidSectionName(FName InSectionName) const` - 段落名是否有效

### 其他

- `FName GetGroupName() const` - 获取蒙太奇组名
- `UAnimSequenceBase GetFirstAnimReference() const` - 获取第一个动画引用
- `bool IsDynamicMontage() const` - 是否为动态蒙太奇
- `bool IsValidAdditiveSlot(FName SlotNodeName) const` - 指定 Slot 是否有有效的叠加动画

## 示例

```angelscript
// 播放蒙太奇
UAnimInstance AnimInst = Mesh.GetAnimInstance();
float32 Duration = AnimInst.Montage_Play(AttackMontage, 1.0f);

// 跳转到特定段落
AnimInst.Montage_JumpToSection(n"Combo2", AttackMontage);

// 获取段落信息
int SectionCount = AttackMontage.GetNumSections();
Print("段落数: " + SectionCount);

FName SectionName = AttackMontage.GetSectionName(0);
Print("第一段: " + SectionName.ToString());

// 检查段落有效性
if (AttackMontage.IsValidSectionName(n"Finish"))
{
    Print("Finish 段落有效");
}
```

## 相关页面

- [[UAnimInstance]] - 动画实例（播放 Montage 的入口）

## 来源

- [UAnimMontage.md](../../raw/API/Global/UAnimMontage.md)
