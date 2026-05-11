# Angelscript Wiki 索引

欢迎使用 Angelscript Wiki！这是一个关于 UnrealEngine-Angelscript 的知识库，旨在帮助开发者快速查找和理解相关概念。

## 快速开始

### 入门指南
- [[Source_Home]] - 了解项目背景和特性
- [[Source_Installation]] - 如何安装和配置
- [[Source_ScriptingIntroduction]] - 创建第一个 Actor 的完整教程

### 核心区别
- [[Source_CPPDifferences]] - 了解 Angelscript 与 Unreal C++ 的主要区别

---

## 实体 (Entities)

### 核心基类
- [[UObject]] - 所有 UE 对象的基类
- [[AActor]] - 所有 Actor 的基类
- [[APawn]] - 所有 Pawn 的基类
- [[ACharacter]] - 所有 Character 的基类
- [[UWorld]] - 世界（地图）对象
- [[UActorComponent]] - 组件基类

### 核心组件
- [[USceneComponent]] - 场景组件基类
- [[UStaticMeshComponent]] - 静态网格组件（关卡装饰、道具）
- [[USkeletalMeshComponent]] - 骨骼网格组件（角色模型、动画播放）
- [[UMeshComponent]] - 网格组件基类（材质管理）

### 碰撞组件
- [[UCapsuleComponent]] - 胶囊体碰撞（角色默认碰撞形状）
- [[UBoxComponent]] - 盒形碰撞（触发区域）
- [[USphereComponent]] - 球形碰撞（高效碰撞检测）

### 输入系统
- [[UInputAction]] - 输入动作（定义"做什么"）
- [[UInputMappingContext]] - 输入映射上下文（定义"怎么触发"）
- [[UEnhancedInputComponent]] - 增强输入组件（绑定动作到委托）

### GAS 能力系统
- [[UAbilitySystemComponent]] - 能力系统组件（GAS 核心协调器）
- [[UGameplayAbility]] - 游戏能力（定义能力逻辑）
- [[UGameplayAbility_Montage]] - 引擎内置蒙太奇能力（播放蒙太奇 + 应用效果）
- [[UAbilityTask_PlayMontageAndWait]] - 蒙太奇能力任务（GA 中播放蒙太奇的推荐方式）
- [[UGameplayEffect]] - 游戏效果（修改属性、授予标签）
- [[UAttributeSet]] - 属性集（定义角色属性）

### 音频和粒子
- [[UAudioComponent]] - 音频组件（3D声音、衰减、淡入淡出）
- [[UNiagaraComponent]] - Niagara 粒子组件（参数设置、播放控制）

### 游戏框架
- [[AController]] - 控制器基类（附身/释放 Pawn、控制旋转）
- [[AAIController]] - AI 控制器（移动、行为树、感知）
- [[APlayerController]] - 玩家控制器
- [[AGameModeBase]] - GameMode 基类（仅在服务器，定义游戏规则）
- [[AGameMode]] - 比赛型 GameMode（增加比赛状态管理）
- [[APlayerState]] - 玩家状态（名称、分数、Ping，复制到所有客户端）
- [[AGameStateBase]] - 游戏状态（全局状态，客户端和服务端都存在）
- [[UGameInstance]] - 游戏实例（跨关卡持久化管理器）

### 游戏特定类
- [[ATkPlayerCharacter]] - 项目自定义玩家角色
- [[ATkPlayerController]] - 项目自定义玩家控制器（输入配置绑定）
- [[ATkPlayerState]] - 项目自定义玩家状态（方向、GameplayTag、目标距离）
- [[ATkNpcCharacter]] - 项目自定义 NPC 角色
- [[UTkAbilitySystemComponent]] - 项目自定义 ASC（输入缓存、事件处理）
- [[UTkGameplayAbility]] - 项目自定义能力（激活策略、激活组）
- [[UTkAbilitySet]] - 项目自定义能力集（批量授予 GAS 能力）
- [[UTkAttributeSetBase]] - 项目自定义属性集（攻击力、格挡）
- [[UTkAbilityTagRelationshipMapping]] - 能力标签关系映射
- [[UTkWalkingMode]] - 项目自定义行走模式（速度、加速度、转向）
- [[UTkInputConfig]] - 项目自定义输入配置（输入动作与 GameplayTag 映射）
- [[UMoverComponent]] - Mover 2.0 移动组件（模式驱动移动架构）
- [[UFallingMode]] - 下落移动模式
- [[UFlyingMode]] - 飞行移动模式

### 动画系统
- [[UAnimInstance]] - 动画蓝图实例（Montage 播放、曲线、姿势快照）
- [[UAnimMontage]] - 动画蒙太奇（多段动画、混合、段落跳转）
- [[UAnimSequence]] - 动画序列（关键帧骨骼动画数据）
- [[UBlendSpace]] - 混合空间（根据参数混合动画）
- [[UAnimNotify]] - 动画通知（瞬时事件触发）
- [[UAnimNotifyState]] - 状态型动画通知（持续范围事件）

### AI 系统
- [[UBehaviorTree]] - 行为树资产
- [[UBlackboardData]] - 黑板数据（AI 数据存储结构）
- [[UBTTaskNode]] - 行为树任务节点（叶节点，执行动作）
- [[UBTTask_MoveTo]] - 移动任务（导航到目标位置）
- [[UBTTask_Wait]] - 等待任务（等待指定时间）
- [[UBTDecorator]] - 行为树装饰器（条件守卫）
- [[UBTService]] - 行为树服务（后台周期性更新）
- [[UAIPerceptionComponent]] - AI 感知组件（视觉、听觉等刺激监听）
- [[UAIPerceptionStimuliSourceComponent]] - AI 感知刺激源组件（让 AI 能感知到此 Actor）
- [[UNavigationSystemV1]] - 导航系统（NavMesh 生成和查询）

### UI 系统
- [[UUserWidget]] - 用户控件基类（添加到视口、动画、输入事件）
- [[UButton]] - 按钮控件（点击、悬停事件）
- [[UTextBlock]] - 文本控件（文本显示、字体、阴影）
- [[UImage]] - 图片控件（纹理、材质显示）
- [[UProgressBar]] - 进度条控件（血条、加载条）
- [[UOverlay]] - 堆叠布局控件（控件重叠）
- [[UBorder]] - 边框容器控件（背景、填充）
- [[UScrollBox]] - 滚动容器控件（可滚动列表）
- [[UEditableTextBox]] - 文本输入控件（单行输入）
- [[UCanvasPanel]] - 画布面板（绝对定位、锚点）
- [[UCheckBox]] - 复选框控件（切换状态）
- [[UComboBoxString]] - 下拉选择框控件

### 材质和渲染
- [[UMaterialInterface]] - 材质接口基类
- [[UMaterialInstanceDynamic]] - 动态材质实例（运行时修改参数）

### 音频
- [[USoundBase]] - 声音资产基类
- [[UAudioComponent]] - 音频组件（3D声音、衰减、淡入淡出）

### 渲染和光照
- [[UCameraComponent]] - 相机组件（FOV、投影、后处理）
- [[ULightComponent]] - 灯光组件基类（强度、颜色、阴影）

### 常用 Actor 类型
- [[AStaticMeshActor]] - 静态网格 Actor
- [[ATriggerBox]] - 盒形触发器
- [[APlayerStart]] - 玩家生成点
- [[AHUD]] - 平视显示器（Canvas 绘制、坐标转换）

### 子系统
- [[UEngineSubsystem]] - 引擎级子系统（与引擎同生同灭）
- [[UGameInstanceSubsystem]] - GameInstance 级子系统（跨关卡持久化）
- [[UWorldSubsystem]] - World 级子系统（关卡级）
- [[UTkInputContextSubsystem]] - 项目自定义输入上下文子系统

### 移动组件
- [[UCharacterMovementComponent]] - 传统 Character 移动组件
- [[UMoverComponent]] - Mover 2.0 移动组件（项目使用）

### 物理和材质
- [[UPhysicalMaterial]] - 物理材质（摩擦力、弹性、密度）

### 曲线和时间线
- [[UCurveFloat]] - 浮点曲线资产
- [[UTimelineComponent]] - 时间线组件（驱动简单动画和渐变）

### 数据资产
- [[UDataAsset]] - 数据资产基类（存储系统相关数据）
- [[UDataTable]] - 数据表（结构化表格数据，CSV/JSON 导入导出）
- [[UDamageType]] - 伤害类型（区分不同伤害形式）

### 核心宏和关键字
- [[UFUNCTION]] - 蓝图可调用函数和事件
- [[UPROPERTY]] - 编辑器可访问属性
- [[delegate]] - 单播委托类型
- [[event]] - 多播事件类型

### 核心类和类型
- [[TSubclassOf]] - 引用类类型的模板

### 全局函数
- [[Print]] - 调试输出函数
- [[SpawnActor]] - 动态生成 Actor
- [[GetAllActorsOfClass]] - 获取指定类的所有 Actor
- [[GetWorld]] - 获取 World 对象

### 函数库命名空间
- [[Math]] - 数学函数库（对应 C++ FMath）
- [[System]] - 系统函数库（定时器、射线检测等）
- [[Gameplay]] - 游戏逻辑函数库（玩家、关卡、伤害等）
- [[Niagara]] - 粒子系统函数库
- [[Widget]] - UMG 控件函数库

### GAS 委托类型
- [[FMontageWaitSimpleDelegate]] - AbilityTask 蒙太奇回调委托（无参数）
- [[FOnMontageEndedMCDelegate]] - 蒙太奇结束多播委托（传递 Montage 和中断状态）

### 核心结构体
- [[FVector]] - 3D 向量
- [[FRotator]] - 旋转（角度旋转）
- [[FTransform]] - 完整的变换（位置+旋转+缩放）
- [[FHitResult]] - 碰撞/射线检测结果
- [[FGameplayTag]] - GameplayTag（层级标签，GAS 核心）
- [[FLinearColor]] - 线性颜色（32位浮点 RGBA）
- [[FColor]] - 8位整数颜色（BGRA）
- [[FName]] - 轻量级字符串标识符
- [[FGuid]] - 全局唯一标识符
- [[FDateTime]] - 日期时间
- [[FInputState]] - 项目自定义输入状态（行走/冲刺/蹲下/跳跃/翻越）
- [[FGameplayTagContainer]] - GameplayTag 容器（标签集合查询）
- [[FTimerHandle]] - 定时器句柄
- [[FInputActionValue]] - 输入动作值（布尔/单轴/双轴/三轴）
- [[FMargin]] - UI 边距
- [[FCollisionShape]] - 碰撞形状（盒体/球体/胶囊体/线）
- [[FQuat]] - 四元数旋转（无万向锁、平滑插值）
- [[FLatentActionInfo]] - 延迟动作信息
- [[FOnMontageEndedMCDelegate]] - 蒙太奇结束委托（回调参数：Montage + bInterrupted）
- [[FMontageWaitSimpleDelegate]] - AbilityTask 蒙太奇回调委托（无参数）

---

## 概念 (Concepts)

### 核心特性
- [[热重载]] - 无需重启的快速迭代
- [[格式化字符串]] - 灵活的字符串格式化
- [[default语句]] - 设置组件默认值
- [[Mixin模式]] - 扩展现有类型的方法

### 语法糖专题
- [[FName字面量]] - 高性能 FName 创建
- [[GameplayTag命名空间]] - 类型安全的标签访问
- [[类型系统与引用]] - 指针、引用和 GC 的关系

### 脚本开发
- [[编辑器脚本]] - 编辑器专用代码和预处理器
- [[子系统]] - 使用和创建 Unreal 子系统
- [[脚本测试]] - 单元测试和集成测试框架
- [[预编译脚本]] - 性能优化和 C++ 转译

### C++ 集成
- [[自动绑定]] - C++ 类型自动暴露给脚本
- [[结构体与引用]] - 值类型语义和引用传递

---

## 来源摘要 (Sources)

### 入门
- [[Source_Home]]
- [[Source_Installation]]
- [[Source_ScriptingIntroduction]]

### 脚本特性
- [[Source_FunctionsAndEvents]]
- [[Source_PropertiesAndAccessors]]
- [[Source_ActorsComponents]]
- [[Source_FunctionLibraries]]
- [[Source_Delegates]]
- [[Source_NetworkingFeatures]]
- [[Source_CPPDifferences]]
- [[Source_FNameLiterals]]
- [[Source_FormatStrings]]
- [[Source_GameplayTags]]
- [[Source_MixinMethods]]

### C++ 集成
- [[Source_AutomaticBindings]]
- [[Source_ScriptMixinLibraries]]
- [[Source_PrecompiledData]]

### 开发工具
- [[Source_EditorScript]]
- [[Source_Subsystems]]
- [[Source_ScriptTests]]
- [[Source_StructsRefs]]

### 补充文档
- [[Source_AngelscriptAPI]] - 18,000+ 类型参考
- [[Source_SyntaxSugar]] - 所有语法糖特性详解
- [[Source_DevelopmentStatus]] - 平台支持和已知限制
- [[Source_Resources]] - 社区、工具和游戏列表
- [[Source_License]] - MIT + zlib 许可

---

## 综合/教程 (Syntheses)

- [[GA_Montage_PlayAndEnd]] - GA与蒙太奇结合的完整实现方案

---

## 导航
- 要了解如何使用此 Wiki，请参阅：`AGENTS.md`
- 要查看操作历史，请参阅：`log.md`
- 原始文档存放于：`raw/` 目录
