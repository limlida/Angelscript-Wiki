---
title: "脚本测试摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - 测试
  - 单元测试
  - 集成测试
  - 代码覆盖率
---

## 概述
本文档介绍了 Angelscript 的测试框架，包括 xUnit 风格的单元测试和集成测试框架。

## 核心要点

### 单元测试
- 函数签名：`void Test_NameOfTheTestCase(FUnitTest& T)`
- 断言方法：`T.AssertTrue()`, `T.AssertEquals()`, `T.AssertNotNull()`
- 热重载时自动运行
- 命名约定：`File_Test.as` 对应 `File.as`

### 运行单元测试
- 编辑器 Output Log 中查看结果
- Session Frontend > Automation Tab 中查看
- 命令行运行：`-run=AngelscriptTest`

### 集成测试
- 函数签名：`void IntegrationTest_MyTestName(FIntegrationTest& T)`
- 需要对应的测试地图（`/Content/Testing/` 目录）
- 可自定义地图路径：`IntegrationTest_MyTestName_GetMapName()`

### 潜伏自动化命令
- `T.AddLatentAutomationCommand()` 添加多帧执行的命令
- 继承 `ULatentAutomationCommand`，实现 `Update()` 和 `Describe()`
- `Update()` 返回 `true` 表示测试通过
- 默认超时 5 秒

### 动态测试用例
- `ComplexIntegrationTest_Name_GetTests()` 生成动态测试用例

### 代码覆盖率
- 项目设置 > Editor > Angelscript Test settings 启用
- 或命令行参数 `-as-enable-code-coverage`
- 报告输出到 `Saved/CodeCoverage`

## 相关概念
- [[脚本测试]]

## 来源
[script-tests.md](../../raw/script-tests.md)
