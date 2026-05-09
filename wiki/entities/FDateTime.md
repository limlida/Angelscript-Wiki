---
title: "FDateTime"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 时间
  - 基础类型
---

## 概述

FDateTime 表示特定日期和时间的值，支持广泛的年份范围。常用于日志时间戳、定时事件、日期计算等场景。

## 主要方法

### 日期获取

- `int GetYear() const` - 获取年份
- `int GetMonth() const` - 获取月份（1~12）
- `int GetDay() const` - 获取日（1~31）
- `int GetDayOfYear() const` - 获取一年中的第几天
- `FDateTime GetDate() const` - 获取仅包含日期的部分
- `GetDate(int& OutYear, int& OutMonth, int& OutDay) const` - 获取年月日

### 时间获取

- `int GetHour() const` - 获取小时（0~23）
- `int GetHour12() const` - 获取12小时制的小时
- `int GetMinute() const` - 获取分钟
- `int GetSecond() const` - 获取秒
- `int GetMillisecond() const` - 获取毫秒

### 判断

- `bool IsMorning() const` - 是否为上午
- `bool IsAfternoon() const` - 是否为下午

### 转换

- `int64 ToUnixTimestamp() const` - 转换为 Unix 时间戳
- `FString ToIso8601() const` - 转换为 ISO 8601 格式字符串
- `FString ToHttpDate() const` - 转换为 HTTP 日期格式字符串
- `FString ToString() const` - 转换为字符串
- `FString ToString(FString Format) const` - 按格式转换为字符串
- `int64 GetTicks() const` - 获取刻度数

### 运算

- `FDateTime opAdd(FTimespan Other) const` - 加时间跨度
- `FTimespan opSub(FDateTime Other) const` - 两个时间相减得到时间跨度
- `FDateTime opSub(FTimespan Other) const` - 减时间跨度
- `int opCmp(FDateTime Other) const` - 排序比较

## 示例

```angelscript
// 获取当前时间
FDateTime Now = System.GetTime();
Print("当前时间: " + Now.ToString());
Print("年份: " + Now.GetYear());
Print("月份: " + Now.GetMonth());
Print("日: " + Now.GetDay());
Print("时: " + Now.GetHour());
Print("分: " + Now.GetMinute());
Print("秒: " + Now.GetSecond());

// 转换为 Unix 时间戳
int64 Timestamp = Now.ToUnixTimestamp();
Print("Unix 时间戳: " + Timestamp);

// 转换为 ISO 8601 格式
FString IsoStr = Now.ToIso8601();
Print("ISO 8601: " + IsoStr);

// 判断上午/下午
if (Now.IsMorning())
{
    Print("现在是上午");
}
```

## 相关页面

- [[System]] - 系统函数库

## 来源

- [FDateTime.md](../../raw/API/Structs/FDateTime.md)
