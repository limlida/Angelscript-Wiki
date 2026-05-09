---
title: "ATriggerBox"
category: entities
date: 2026-05-09
tags:
  - Actor
  - 触发器
---

## 概述

ATriggerBox 是盒形触发器，在关卡中用于生成重叠事件。它包含一个 [[UBoxComponent]] 作为碰撞体，当其他 Actor 进入或离开时触发事件。

## 示例

```angelscript
// 在关卡中放置 TriggerBox 并绑定事件
ATriggerBox MyTrigger = Cast<ATriggerBox>(TriggerActor);
UBoxComponent BoxComp = MyTrigger.GetCollisionComponent();

// 使用 System 函数库绑定重叠事件
BoxComp.OnComponentBeginOverlap.AddUFunction(this, n"OnTriggerEnter");
BoxComp.OnComponentEndOverlap.AddUFunction(this, n"OnTriggerExit");

void OnTriggerEnter(UPrimitiveComponent OverlappedComponent, AActor OtherActor, UPrimitiveComponent OtherComp, int OtherBodyIndex, bool bFromSweep, FHitResult SweepResult)
{
    Print("进入触发区域: " + OtherActor.GetName());
}

void OnTriggerExit(UPrimitiveComponent OverlappedComponent, AActor OtherActor, UPrimitiveComponent OtherComp, int OtherBodyIndex)
{
    Print("离开触发区域: " + OtherActor.GetName());
}
```

## 相关页面

- [[UBoxComponent]] - 盒形碰撞组件
- [[AActor]] - Actor 基类

## 来源

- [ATriggerBox.md](../../raw/API/Global/ATriggerBox.md)
