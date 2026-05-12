---
title: "UDataTable"
category: entities
date: 2026-05-09
tags:
  - DataAsset
  - 数据驱动

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UDataTable.md
verified_by: agent
unverified_items: []
---

## 概述

UDataTable 是导入的电子表格表，用于存储结构化的游戏数据。每行数据由 [[FName]] 作为键，行结构由 UScriptStruct 定义。DataTable 是数据驱动设计的核心工具，常用于配置物品、技能、敌人属性等。

## 主要属性

### 导入配置

- `UAssetImportData AssetImportData` - 导入源文件信息
- `FString ImportKeyField` - 导入数据中用作键的字段名
- `bool bIgnoreExtraFields` - 是否忽略导入数据中的多余字段
- `bool bIgnoreMissingFields` - 是否忽略缺失字段
- `bool bPreserveExistingValues` - 是否保留缺失字段的现有值
- `bool bStripFromClientBuilds` - 是否从客户端构建中移除（用于仅服务器需要的敏感数据）

## 主要方法

### 行操作

- `AddRow(FName RowName, ? InRow)` - 添加行
- `RemoveRow(FName RowName)` - 移除行
- `bool FindRow(FName RowName, ? OutRow) const` - 查找行数据
- `GetAllRows(? OutArray) const` - 获取所有行数据
- `bool DoesRowExist(FName RowName) const` - 行是否存在
- `EmptyTable()` - 清空表
- `TArray<FName> GetRowNames() const` - 获取所有行名

### 列操作

- `TArray<FString> GetColumnAsString(FName PropertyName) const` - 获取指定列的所有行数据（字符串形式）
- `GetColumnNames(TArray<FName>& OutColumnNames) const` - 获取所有列名
- `GetColumnExportNames(TArray<FString>& OutExportColumnNames) const` - 获取所有列的导出名
- `bool GetColumnNameFromExportName(FString ColumnExportName, FName& OutColumnName) const` - 从导出名获取属性名

### 导入导出

- `bool ExportToCSVFile(FString CSVFilePath) const` - 导出到 CSV 文件
- `bool ExportToCSVString(FString& OutCSVString) const` - 导出到 CSV 字符串
- `bool ExportToJSONFile(FString JSONFilePath) const` - 导出到 JSON 文件
- `bool ExportToJSONString(FString& OutJSONString) const` - 导出到 JSON 字符串
- `bool FillFromCSVFile(FString CSVFilePath, UScriptStruct ImportRowStruct = nullptr)` - 从 CSV 文件填充
- `bool FillFromCSVString(FString CSVString, UScriptStruct ImportRowStruct = nullptr)` - 从 CSV 字符串填充
- `bool FillFromJSONFile(FString JSONFilePath, UScriptStruct ImportRowStruct = nullptr)` - 从 JSON 文件填充
- `bool FillFromJSONString(FString JSONString, UScriptStruct ImportRowStruct = nullptr)` - 从 JSON 字符串填充

### 其他

- `const UScriptStruct GetRowStruct() const` - 获取行结构类型

## 示例

```angelscript
// 查找行数据
UDataTable ItemTable = Cast<UDataTable>(ItemTableAsset);
FLootTableRow OutRow;
if (ItemTable.FindRow(n"Sword_01", OutRow))
{
    Print("找到物品: " + OutRow.ItemName.ToString());
}

// 获取所有行名
TArray<FName> RowNames = ItemTable.GetRowNames();
for (int i = 0; i < RowNames.Num(); ++i)
{
    Print("行名: " + RowNames[i].ToString());
}

// 检查行是否存在
if (ItemTable.DoesRowExist(n"Potion_01"))
{
    Print("药水行存在");
}

// 导出为 JSON
FString JsonStr;
ItemTable.ExportToJSONString(JsonStr);
```

## 相关页面

- [[FName]] - 行键类型

## 来源

- [UDataTable.md](../../raw/API/Global/UDataTable.md)
