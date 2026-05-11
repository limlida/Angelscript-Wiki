---
title: "GameplayTag 命名空间"
category: concepts
date: 2026-05-08
tags:
  - GameplayTag
  - 命名空间
  - 自动绑定
---

## 概述
Angelscript 自动将所有 GameplayTag 绑定到 `GameplayTags` 命名空间，提供类型安全的访问。

## 命名转换规则
- 点号 (`.`) → 下划线 (`_`)
- 其他非字母数字字符 → 下划线
- PascalCase 保留

## 示例

### 基础访问
```angelscript
// 假设有 GameplayTag "UI.Action.Escape"
FGameplayTag TheTag = GameplayTags::UI_Action_Escape;

// 假设有 GameplayTag "State.Combat.InCombat"
FGameplayTag CombatTag = GameplayTags::State_Combat_InCombat;
```

### 常见使用场景

#### 条件检查
```angelscript
if (Actor.HasTag(GameplayTags::State_Combat_InCombat))
{
    Print("Actor is in combat!");
}
```

#### 添加/移除标签
```angelscript
class AMyActor : AActor
{
    UFUNCTION()
    void EnterCombat()
    {
        AddTag(GameplayTags::State_Combat_InCombat);
    }
    
    UFUNCTION()
    void ExitCombat()
    {
        RemoveTag(GameplayTags::State_Combat_InCombat);
    }
}
```

#### 使用 InputTag
```angelscript
// 假设有 GameplayTag "Input.Action.Jump"
if (AbilitySystemComponent.HasMatchingTag(GameplayTags::Input_Action_Jump))
{
    Jump();
}
```

## 优势

### 1. 编译时检查
- 拼写错误在编译时发现
- IDE 自动补全支持

### 2. 性能
- 编译时解析
- 运行时零开销

### 3. 类型安全
- 编译器验证标签存在
- 避免运行时错误

## 来源
[[Source_GameplayTags]]、[[Source_SyntaxSugar]]

## 相关概念
- [[自动绑定]] - GameplayTag 的自动命名空间绑定是自动绑定机制的一部分
