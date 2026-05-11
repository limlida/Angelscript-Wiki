# Angelscript Wiki — Agent Schema

> 本文档定义了 Angelscript-Wiki 知识库的目录结构、命名约定、工作流和维护规范。
> 所有 Agent 在操作本知识库前必须先阅读此文件。

---

## 0. 硬性执行协议

> 本节优先级高于后续说明。Agent 若无法满足任一强制步骤，必须停下并说明缺少的证据，而不是继续推测。

### 0.1 任务触发矩阵

| 用户意图 | 必须执行的流程 | 可省略项 |
|---------|----------------|---------|
| 查询某个 API / 写代码示例 / 判断接口是否存在 | 4.2 Query + 4.4 Trust 决策；必要时回查 raw | 不需要修改 wiki，除非发现错误 |
| 新增或更新 wiki 页面 | 4.5 Verify + 写入 trust frontmatter + 更新 index/log | 不可省略验证 |
| 修复页面错误 / TODO / trust | 4.6 TODO 生命周期或 4.7 Trust 升降级 + log | 不可仅删除 TODO |
| 批量整理、健康检查 | 4.3 Lint + 抽样验证 + log | 不要求一次解决全部问题 |

### 0.2 回答前检查清单

Agent 在最终回答前必须自检：

1. 是否读取了 `index.md`（Query / Ingest / Verify / Lint 必需）？
2. 是否检查了相关页面 frontmatter 的 `trust`？
3. 若引用具体方法/属性，是否按 4.4 决定了能否信任 wiki，或回查了 `raw/API/{Global,Structs}/<TypeName>.md`？
4. 若修改了 wiki 页面，是否补齐或更新 `trust` / `verified_at` / `verified_against` / `verified_by` / `unverified_items`？
5. 若留下 `[TODO: verify]`，是否使用标准格式，并说明可追溯证据缺口？
6. 若修改了索引、页面结构、trust 或 TODO，是否更新 `log.md`？

### 0.3 禁止事项

- 不得在未核对 raw 的情况下，把“常见 UE/C++ 用法”写成 Angelscript 可用 API。
- 不得把无 `trust` 字段的存量页面当成可信页面直接引用具体接口。
- 不得在 frontmatter、代码块、inline code、函数签名内部做自动 Wiki 链接。
- 不得批量生成低质量实体页面；批量脚本只能用于检查、统计、格式迁移，不能替代内容验证。

---

## 1. 目录结构

```
Angelscript-Wiki/
├── AGENTS.md              # 本文件：Schema 与 Agent 工作流规范
├── raw/                   # 原始资料层（只读，Agent 不可修改）
│   ├── assets/            # 图片、附件等静态资源
│   └── ...                # 原始文档、代码片段、网页剪辑等
├── wiki/                  # 知识库层（Agent 全权维护）
│   ├── entities/          # 实体页面：类、函数、变量、对象等
│   ├── concepts/          # 概念页面：设计模式、语法特性、最佳实践等
│   ├── sources/           # 来源摘要：每份原始资料的摘要页面
│   └── syntheses/         # 综合页面：对比、教程、FAQ、索引等
├── index.md               # 内容导向的总索引
└── log.md                 # 按时间顺序的操作日志
```

---

## 2. 文件命名约定

| 类型 | 命名规则 | 示例 |
|------|----------|------|
| 实体页面 | 使用 PascalCase 或原始名称 | `FInputState.md`, `TkCharacterABP.md` |
| 概念页面 | 使用 PascalCase 或简短名词 | `MixinPattern.md`, `GameplayTags.md` |
| 来源摘要 | `Source_` + 简短标识 | `Source_TkAnimMain_Spec.md` |
| 综合页面 | 使用描述性名称 | `CombatSystemOverview.md`, `GASFAQ.md` |

---

## 3. 页面格式规范

### 3.1 YAML Frontmatter

每篇 wiki 页面开头**应**包含以下 frontmatter。其中 `trust` 相关字段在写入或更新页面时**必须**填写（详见 **4.4 Trust 系统**）：

```yaml
---
title: 页面标题
category: entities | concepts | sources | syntheses
date: YYYY-MM-DD
tags:
  - tag1
  - tag2

# Trust 元数据（写入/更新时必填）
trust: verified | partial | unverified
verified_at: YYYY-MM-DD          # 最后核对日期
verified_against:                # 核对的 raw 来源（可多个）
  - raw/API/Global/UXxx.md
verified_by: agent | user | both
unverified_items: []             # partial 时列出未核对的方法/属性名
---
```

**未带 `trust` 字段的存量页面**：仅可作为背景阅读。凡是要引用具体方法、属性、参数或返回值，必须回查 raw；下次任何 agent 修改该页面时**必须补全 trust 字段**。

### 3.2 交叉引用

- 引用其他 wiki 页面时，使用 Obsidian 风格的 Wiki 链接：`[[页面名称]]`
- 引用原始资料时，使用 Markdown 链接：`[资料名称](../raw/xxx.md)`
- 首次提及某个实体或概念时，优先创建链接
- 不得在 frontmatter、代码块、inline code、函数签名、类型名片段中自动插入 Wiki 链接；例如禁止把 `USceneComponent` 改成 `[[UScene]]Component`

### 3.3 内容风格

- 使用中文或英文均可，但同一页面内保持一致
- 代码块使用对应的语法高亮标签（如 ```angelscript）
- 关键结论使用 **加粗** 标注
- 存疑或待验证内容使用 `[TODO: verify]` 标记，**必须使用以下标准格式**：

```
[TODO: verify | reason: <为什么存疑，例如"仅在全量 API 中出现，无方法签名"> | added: YYYY-MM-DD]
```

  - `reason` 字段说明 **应该去验证什么**（缺签名 / 工厂方法未找到 / 仅推测自 C++ 用法 等）
  - `added` 字段记录**加入日期**，便于 lint 时按时间排序清理陈旧 TODO
  - 简短的 `[TODO: verify]` 标记**不再被允许**——任何未带 reason 与 added 的标记应在下次 lint 时补全或 resolve
  - TODO 的合法终态见 **4.6 TODO 生命周期管理**

---

## 4. 核心工作流

### 4.1 Ingest（摄入）

当用户添加新的原始资料时，按以下步骤处理：

1. **阅读资料**：通读原始文档，提取关键信息
2. **创建来源摘要**：在 `wiki/sources/` 下创建摘要页面
3. **更新实体页面**：提取资料中涉及的类、函数、变量，在 `wiki/entities/` 下创建或更新对应页面
4. **更新概念页面**：提取设计模式、语法特性等，在 `wiki/concepts/` 下创建或更新对应页面
5. **更新综合页面**：如有必要，更新相关的综合/概述页面
6. **执行 Verify**：对本次新增/更新的页面按 **4.5 Verify** 流程核对 raw 来源
7. **打 trust 戳**：在每个新增/更新页面的 frontmatter 中填写 `trust`、`verified_at`、`verified_against`、`verified_by`、`unverified_items`（详见 **4.4 Trust 系统**）
8. **更新索引**：更新 `index.md`，添加新页面链接和摘要
9. **记录日志**：在 `log.md` 末尾追加摄入记录

日志条目格式：
```markdown
## [YYYY-MM-DD] ingest | 资料名称或简短描述
- 来源：`raw/文件名`
- 摘要页面：`wiki/sources/xxx.md`
- 新增/更新实体：[[实体1]] (trust: verified), [[实体2]] (trust: partial)
- 新增/更新概念：[[概念1]] (trust: verified)
```

### 4.2 Query（查询）

当用户提出问题时：

1. **读取索引**：先读取 `index.md`，定位相关页面
2. **检查 trust 戳**：读取相关 wiki 页面的 frontmatter，对每个用到的接口按 **4.4 查询决策流程** 决定是否回查 raw
   - 🟢 verified：直接引用，零回查
   - 🟡 partial：检查 `unverified_items` 与方法旁标注，必要时回查
   - 无 trust 字段：只能作为背景；引用具体接口前必须回查 raw
   - 🔴 unverified：必须回查 raw
3. **生成答案**：基于 wiki 内容生成回答，并引用来源页面；若发现页面错误或缺失，进入 **4.7 Demote/Promote**
4. **归档价值内容（可选）**：仅当用户要求归档、答案具有长期复用价值、或本次修正了 wiki 内容时，才保存为新的综合页面到 `wiki/syntheses/`，并打 trust 戳（综合页面默认 🟡 起步，需 promote 才能 🟢）
5. **记录日志（有条件）**：只有发生 wiki 修改、trust/TODO 变更、归档综合页面，或用户要求记录时，才在 `log.md` 中记录；普通一次性问答不写日志

日志条目格式：
```markdown
## [YYYY-MM-DD] query | 问题简短描述
- 回答形式：markdown / 对比表 / 其他
- 引用页面：[[页面1]] (trust: verified), [[页面2]] (trust: partial)
- 回查 raw：raw/API/.../xxx.md（如有）
- 归档页面：wiki/syntheses/xxx.md (trust: partial)（如有）
```

### 4.3 Lint（健康检查）

用户要求或定期执行：

1. **扫描矛盾**：检查不同页面间的矛盾陈述
2. **发现孤儿页面**：找出没有入站链接的页面，补充引用
3. **识别缺失页面**：发现被频繁提及但尚未创建的实体/概念
4. **更新过时内容**：标记或修正被新资料取代的旧结论
5. **TODO 清扫**：参见 **4.6 TODO 生命周期管理**
   - 用 `rg "\[TODO: verify"` 扫描全 wiki，列出所有未 resolve 的 TODO
   - 按 `added:` 日期排序，超过 30 天的标为陈旧（stale）
   - 每条逐项推进到 confirmed / rejected / downgraded 之一
6. **Trust 升降级**：参见 **4.7 Trust 升降级**
   - 抽样高频引用页面做 promote（🔴/🟡 → 🟢）
   - 把已知有错的页面 demote（🟢 → 🟡 / 🟡 → 🔴）
7. **记录日志**：在 `log.md` 中记录 lint 结果和修正动作

日志条目格式：
```markdown
## [YYYY-MM-DD] lint | 检查范围或主题
- 发现问题：N 个矛盾，M 个孤儿页面，K 个缺失页面，T 个未 resolve 的 TODO
- 修正动作：...
- Trust 变更：[[页面1]] partial → verified, [[页面2]] verified → partial
```

### 4.4 Trust 系统

Wiki 的核心价值在于**直接查询得到答案**，不必每次回查 raw。但 wiki 不可信也是大问题——为此每个页面在 frontmatter 中**显式声明可信级别**，查询时按级别决策：可信的直接引用，不可信的才回查 raw。

#### 三级 trust 等级

| 戳 | 含义 | 查询行为 |
|----|------|---------|
| 🟢 **verified** | 整页已从对应 `raw/API/{Global,Structs}/<TypeName>.md` 完整核对（方法名/参数/返回值都对照过） | **直接引用，零回查** |
| 🟡 **partial** | 类签名核对过，但部分方法/属性未逐一核对（多数手工编写但未 promote 的页面） | 检查 `unverified_items` 与方法旁 `✓`/`⚠️` 标注，**只对未核对的方法回查** raw |
| 🔴 **unverified** | 批量生成、推测、起草中、或来源不明 | **必须回查 raw** 才能引用，或先 promote |

#### Frontmatter 字段（写入/更新时必填）

```yaml
trust: verified | partial | unverified
verified_at: YYYY-MM-DD
verified_against:
  - raw/API/Global/UXxx.md
verified_by: agent | user | both
unverified_items:                    # 仅 partial 时填写
  - 方法名 1
  - 属性名 2
```

#### 方法级标注（可选，partial 页面用）

对内容多、verify 进度不一的页面（如 `UAnimInstance` 几十个方法），可在方法标题旁加单字符戳：

```markdown
### Montage_Play(Montage, PlayRate) ✓
播放蒙太奇...

### SomeRareMethod() ⚠️
[TODO: verify | reason: 仅在全量 API 中提及,签名未确认 | added: 2026-05-09]
```

- `✓` 已逐项对照 raw
- `⚠️` 有 TODO 待验证
- 无标记 = 等同页面整体 trust 等级

#### 查询决策流程

```
查询某接口 X:

1. 读 index.md → 找到 wiki 页面 P
2. 读 P 的 frontmatter:
   ├─ trust: verified  → ✅ 直接引用 (零回查成本)
   ├─ trust: partial   → 检查 P.unverified_items + 方法旁标注:
   │                     ├─ X 方法旁有 ✓        → ✅ 直接引用
   │                     ├─ X 在 unverified_items 或方法旁 ⚠️ → 🔍 回查 raw
   │                     └─ X 无标记            → ✅ 按页面整体级别(信)
   ├─ trust: unverified → 🔴 回查 raw 才能引用
   └─ 无 trust 字段     → ⚠️ 只能作背景；引用具体接口前必须回查 raw
```

> ⚠️ **关键经验**（来自 GA 蒙太奇 lint）：即使 wiki 实体页面已存在,也不能仅凭"页面存在"就放心引用具体方法。
> 误写 `RemoveUFunction`（正确为 `Unbind`）、引用不存在的 `ASC.PlayMontage`、漏掉 `GetOwningComponentFromActorInfo`,
> 都是因为没有 trust 戳兜底。**trust 戳是绕开"全部回查"的唯一可信机制**——但它只在写入时严格 verify 的前提下才有效。

#### 综合页面（syntheses）的特殊规则

`wiki/syntheses/` 是高风险区——跨多实体、容易脑补衔接代码：

- **默认 trust 起步等级：🟡 partial**，需经过 promote 才能 🟢
- 每段代码必须注明对应的实体页面 + raw 来源
- 凡是"两个接口怎么衔接"的逻辑（委托绑定/解绑配对、AbilityTask 工厂方法等），如果在 raw 中找不到完整示例，**必须打标准格式的 `[TODO: verify | reason: ... | added: YYYY-MM-DD]`**

### 4.5 Verify（写入时验证）

撰写新页面、更新现有页面，或对页面执行 promote 时，按以下三级验证执行,**最终产出 trust 戳**：

#### 验证步骤

1. **读 `index.md`** → 定位 wiki 入口与相关页面
2. **读相关 wiki 实体页面** → 检查"相关页面"链路
3. **回查 `raw/API/{Global,Structs}/<TypeName>.md`** → 核对每个**具体方法名/参数签名**

#### 接口清单 review 表

撰写综合页面或多接口内容前，列出所有用到的接口，分类标记：

| 接口/方法 | 来源（raw 路径 + 文件名/行号） | wiki 页面 | 状态 |
|----------|------------------------------|----------|------|
| `UAnimInstance.Montage_Play` | `raw/API/Global/UAnimInstance.md` | `[[UAnimInstance]]` | ✅ 可用 |
| `FOnMontageEndedMCDelegate.Unbind` | `raw/API/Structs/FOnMontageEndedMCDelegate.md` | `[[FOnMontageEndedMCDelegate]]` | ✅ 可用 |
| `UGameplayAbility_Montage` | `raw/AngelScript_API.md:145657` | 待创建 | ⚠️ TODO: verify |
| `ASC.PlayMontage` | ❌ raw 中未找到 | — | ❌ 拒绝使用 |

#### 三种来源情况的处置

| 来源情况 | 处置 |
|---------|------|
| `raw/API/{Global,Structs}/<TypeName>.md` 有完整签名 | ✅ **可用**——直接引用并写入 wiki |
| 仅在 `raw/AngelScript_API.md` 全量文档中提及（无方法签名） | ⚠️ **必须打 `[TODO: verify]`**（见 **3.3** 标准格式） |
| 在 raw 中**完全找不到**（含工厂方法、辅助函数等） | ❌ **拒绝写入**，或在文档中明确标注"未在 Angelscript API 中找到，需替代方案" |

#### 写入完成后：打 trust 戳（必做）

撰写/更新结束时,**必须**在每个被修改页面的 frontmatter 中填写 trust 元数据。判定规则：

| 满足条件 | 应打的戳 |
|---------|--------|
| 全部方法/属性都对照过 raw，无 TODO，无错误 | 🟢 verified |
| 类签名核对过，但仅核对了部分方法（其余在 `unverified_items` 中列出） | 🟡 partial |
| 仅起草、未对照 raw、或刚批量生成 | 🔴 unverified |
| 综合页面（syntheses） | 🟡 起步,需 promote 才能 🟢 |

填写示例：

```yaml
trust: partial
verified_at: 2026-05-09
verified_against:
  - raw/API/Global/UGameplayAbility.md
verified_by: agent
unverified_items:
  - GetCurrentMontage          # 仅在全量 API 中出现
  - K2_HasAuthority            # [TODO: verify | added: 2026-05-09]
```

### 4.6 TODO 生命周期管理

`[TODO: verify]` 是**中间状态**，绝不能成为永久债务。每条 TODO 必须最终走向以下三种终态之一：

#### 三种合法终态

| 终态 | 触发条件 | 动作 |
|------|---------|------|
| ✅ **confirmed**（确认） | 在 `raw/API/{Global,Structs}/<TypeName>.md` 找到完整签名；或用户实际运行代码确认成功；或外部权威来源（带链接）佐证 | 删除 `[TODO: verify]` 标记 → 添加 `来源：raw/...` 引用 → 必要时升级页面 trust → log.md 写 `verify` 条目 |
| ❌ **rejected**（否决） | 详尽搜索 raw 后确认不存在；或用户实测失败 | **删除整段相关代码/结论**（不留半截）→ 用"在 Angelscript 中**未找到**对应 API"的说明替代 → log.md 写 `verify` 条目 |
| 🔄 **downgraded**（降级） | 找到差不多的替代 API（不是原方案，但能达成同样目标） | 重写示例为替代方案 → 标注"原方案 X 在 raw 中未找到，使用 Y 替代" → log.md 写 `verify` 条目 |

> 🚫 **严禁**："看起来没问题就直接删 TODO"——必须有上述三类之一的明确证据。

#### Resolve 权限

| 角色 | 可执行的 resolve | 不可执行的 |
|------|----------------|-----------|
| Agent（基于 raw/） | confirmed（找到 raw 来源）/ rejected（穷举搜索后） | 不能基于"语言推理"或"类比常见 UE 用法"resolve |
| User | confirmed（实测）/ rejected（实测失败）/ downgraded（指定替代） | — |
| Agent（基于外部网络资源） | 仅当用户明确允许，且**链接被记录到 log.md**时 | 默认禁止 |

**核心原则**：resolve TODO 的证据**必须可追溯**——raw 路径 / 实测命令 / 带 URL 的外部来源——不能是"我觉得"。

### 4.7 Trust 升降级

Trust 戳不是静态的，应随知识库的成熟而演进。

#### Promote（升级 🔴 → 🟡 → 🟢）

**触发场景**：
- 写入新页面时（默认从 verify 步骤产出 trust 戳）
- 用户明确要求"把 X 页面 promote 到 verified"
- Lint 时批量挑选高频引用页面升级

**动作**：
1. 通读该 wiki 页面，**逐项对照** `raw/API/{Global,Structs}/<TypeName>.md`
2. 补齐缺失方法、改正错误（每项可在方法标题旁加 `✓` 标注已核对）
3. 决定新 trust 等级：
   - 全部方法/属性都核对且无错 → 🟢 **verified**
   - 类签名核对过但有部分方法未核对 → 🟡 **partial**，列入 `unverified_items`
   - 否则保持 🔴
4. 更新 frontmatter（`trust` / `verified_at` / `verified_against` / `verified_by` / `unverified_items`）
5. log.md 写 `verify` 条目（操作类型：promote）

#### Demote（降级 🟢 → 🟡 / 🟡 → 🔴）

**触发场景**：
- Lint 发现页面有错
- Query 时发现引用的方法签名与 raw 不符
- 用户报告页面错误

**动作**：
1. 修正错误内容（拒绝凭空猜测，必须以 raw 为准）
2. 把 trust 降到对应等级
3. 把未通过验证的项加入 `unverified_items` 或打 `⚠️` 方法级标注
4. log.md 写 `verify` 条目（操作类型：demote）

#### Verify 日志统一格式

`verify` 类型的日志条目可以是 promote / demote / resolve（resolve TODO）三种之一：

```markdown
## [YYYY-MM-DD] verify | <被验证的页面/接口/结论>
- 操作类型：promote | demote | resolve
- 页面：[[页面1]], [[页面2]]
- 旧 trust：partial    新 trust：verified         # promote/demote 必填
- 原 TODO 标记：[TODO: verify | reason: ... | added: ...]   # resolve 必填
- 终态：confirmed | rejected | downgraded                    # resolve 必填
- 证据：raw/API/.../xxx.md / 实测命令 `...` / 外部链接 ...
- 涉及条目：列出本次验证/修改的具体方法/属性
```

---

## 5. 特殊文件说明

### 5.1 index.md

- 内容导向的目录，按类别组织所有 wiki 页面
- 每个条目包含：链接、一行摘要、可选的元数据
- Agent 回答查询前应先读取此文件定位相关内容
- 每次 ingest 后必须更新

### 5.2 log.md

- 按时间顺序的追加日志
- 每条记录以 `## [YYYY-MM-DD] 类型 | 描述` 开头
- 保持简洁，聚焦"做了什么"和"影响了哪些页面"
- 合法的**类型**：
  - `ingest` — 摄入新原始资料（详见 **4.1**）
  - `query` — 回答用户查询（详见 **4.2**）
  - `lint` — 健康检查与修正（详见 **4.3**）
  - `verify` — Trust 升降级（promote/demote）或 resolve 一条 `[TODO: verify]` 标记（详见 **4.6** 与 **4.7**），统一日志格式见 **4.7 Verify 日志统一格式**
  - `setup` / `fix` / `improvement` / `rebuild` — 仓库维护类操作

---

## 6. Angelscript 领域特定约定

鉴于本知识库专注于 Angelscript 与 Unreal Engine 开发：

- **实体页面**优先覆盖：类（UClass）、结构体（UStruct）、函数、枚举、GameplayTag、组件
- **概念页面**优先覆盖：Mixin 模式、GAS 集成、动画蓝图交互、事件驱动架构
- 代码示例优先使用 Angelscript 语法
- 涉及 C++ 与 Angelscript 交互时，明确标注代码所属语言

---

## 7. 版本与协作

- 本 wiki 是一个 Git 仓库，所有变更都应通过 Git 追踪
- Agent 在批量修改后应建议用户提交（但不要自动提交）
- 重大结构调整前，先在 `log.md` 中记录计划
