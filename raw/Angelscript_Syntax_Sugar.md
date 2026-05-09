# Angelscript 语法糖详细总结

基于官方文档和知乎文章的详细归纳

---

## 目录

1. [FName 字面量语法糖](#1-fname-字面量语法糖)
2. [格式化字符串 (Format Strings)](#2-格式化字符串-format-strings)
3. [默认关键字 (default)](#3-默认关键字-default)
4. [Mixin 方法](#4-mixin-方法)
5. [属性访问器 (Accessors)](#5-属性访问器-accessors)
6. [自动绑定简化](#6-自动绑定简化)
7. [Delegate 和 Event 简化](#7-delegate-和-event-简化)
8. [UFUNCTION 默认行为](#8-ufunction-默认行为)
9. [UPROPERTY 默认行为](#9-uproperty-默认行为)
10. [指针和引用简化](#10-指针和引用简化)
11. [热重载支持](#11-热重载支持)
12. [GameplayTag 命名空间](#12-gameplaytag-命名空间)

---

## 1. FName 字面量语法糖

### 标准 C++ 方式
```cpp
// C++ 中创建 FName
FName MyName = FName("MyString");  // 运行时哈希计算
```

### Angelscript 语法糖
```angelscript
// 使用 n"" 语法 - 编译时确定，零运行时开销
FName MyName = n"MyString";

// 实际使用示例
FName EventId = n"Combat.Attack.Begin";
FName SocketName = n"WeaponSocket";

// 在函数调用中使用
Events.RegisterListener(n"MyEvent", this, n"OnEvent");
```

### 优势
- **编译时处理**: 在编译时计算哈希值，运行时无开销
- **类型安全**: 编译器确保是有效的 FName 格式
- **简洁**: 比 `FName("...")` 更短更易读

---

## 2. 格式化字符串 (Format Strings)

### 标准方式
```angelscript
// 传统字符串拼接
FString Message = "Called from actor " + GetName() + " at location " + ActorLocation.ToString();
```

### Angelscript 语法糖 - f"" 字符串
```angelscript
// 使用 f"" 语法，支持表达式插值
Print(f"Called from actor {GetName()} at location {ActorLocation}");

// 支持复杂表达式
Print(f"Health: {Health} / {MaxHealth} ({Health / MaxHealth * 100}%)");

// 支持函数调用
Print(f"Distance: {GetDistanceTo(Target)} meters");
```

### 格式化说明符
```angelscript
// 小数精度
Print(f"Three Decimals: {ActorLocation.Z :.3}");           // 输出: 123.456

// 前导零填充
Print(f"Extended to 10 digits: {400 :010d}");              // 输出: 0000000400

// 十六进制
Print(f"Hexadecimal: {20 :#x}");                           // 输出: 0x14

// 二进制
Print(f"Binary: {1574 :b}");                               // 输出: 11000100110

// 科学计数法
Print(f"Scientific: {12345.6789 :.2e}");                   // 输出: 1.23e+04
```

### 多行格式化字符串
```angelscript
FString MultiLine = f""
    Player: {PlayerName}
    Health: {CurrentHealth}/{MaxHealth}
    Position: {GetActorLocation()}
"";
```

---

## 3. 默认关键字 (default)

### 标准 C++ 构造函数方式
```cpp
// C++ 中在构造函数中设置默认值
AExampleActor::AExampleActor()
{
    ConfigurableValue = 5.0f;
    CapsuleComponent->CapsuleHalfHeight = 88.0f;
}
```

### Angelscript 语法糖 - default 关键字
```angelscript
class AExampleActor : AActor
{
    // 直接在类体中设置默认值
    UPROPERTY()
    float ConfigurableValue = 5.0;

    UPROPERTY(DefaultComponent)
    UCapsuleComponent CapsuleComponent;
    
    // 使用 default 关键字设置组件默认值
    default CapsuleComponent.CapsuleHalfHeight = 88.0;
    default CapsuleComponent.CapsuleRadius = 40.0;
    default CapsuleComponent.bGenerateOverlapEvents = true;
    
    // 也可以设置布尔值和枚举
    default bReplicates = true;
    default NetUpdateFrequency = 100.0;
}
```

### default 关键字的优势
- **避免构造函数**: 不需要写构造函数，减少代码量
- **热重载友好**: 构造函数在热重载时可能运行不可预测，default 不会
- **可读性高**: 默认值直接声明在属性附近

### default 使用场景
```angelscript
class AMyActor : AActor
{
    UPROPERTY(DefaultComponent, RootComponent)
    USceneComponent Root;
    
    UPROPERTY(DefaultComponent, Attach = "Root")
    USkeletalMeshComponent Mesh;
    
    // 设置默认附件
    default Mesh.Attach = Root;
    default Mesh.AttachSocket = n"RootSocket";
    
    // 设置默认材质
    default Mesh.Materials[0] = MaterialInstance;
}
```

---

## 4. Mixin 方法

### 标准扩展类方式
```cpp
// C++ 中需要继承或使用工具类
class UMyActorLibrary : public UBlueprintFunctionLibrary
{
    UFUNCTION(BlueprintCallable)
    static void TeleportToOrigin(AActor* Actor);
};
```

### Angelscript 语法糖 - Mixin
```angelscript
// 为现有类型添加方法，无需继承
mixin void TeleportToOrigin(AActor Self)
{
    Self.SetActorLocation(FVector::ZeroVector);
}

// 使用方式 - 像原生方法一样调用
AActor MyActor;
MyActor.TeleportToOrigin();
```

### Mixin 带参数
```angelscript
// 带参数的 Mixin
mixin void TeleportTo(AActor Self, FVector Location)
{
    Self.SetActorLocation(Location);
}

// 使用
MyActor.TeleportTo(FVector(100, 200, 300));
```

### Struct Mixin（带引用）
```angelscript
// 为 FVector 添加方法
mixin void SetToZero(FVector& Vector)
{
    Vector = FVector::ZeroVector;
}

// 使用
FVector MyVec = FVector(1, 2, 3);
MyVec.SetToZero();  // MyVec 现在是 (0, 0, 0)
```

### C++ 中的 ScriptMixin 库
```cpp
// C++ 中定义 Mixin 库
UCLASS(Meta = (ScriptMixin = "AActor"))
class UMyActorMixinLibrary : public UObject
{
    UFUNCTION(ScriptCallable)
    static void TeleportToOrigin(AActor* Actor);
};
```

```angelscript
// Angelscript 中直接使用
MyActor.TeleportToOrigin();
```

---

## 5. 属性访问器 (Accessors)

### 标准方式
```angelscript
// 传统方式需要显式 Get/Set 方法
UFUNCTION(BlueprintPure)
float GetHealth() const { return Health; }

UFUNCTION(BlueprintCallable)
void SetHealth(float NewHealth) { Health = NewHealth; }
```

### Angelscript 语法糖 - 属性访问器
```angelscript
class AMyActor : AActor
{
    UPROPERTY()
    float Health = 100.0;
    
    // 定义 Getter
    float GetHealth() const
    {
        return Health;
    }
    
    // 定义 Setter
    void SetHealth(float NewHealth)
    {
        Health = FMath::Clamp(NewHealth, 0.0, MaxHealth);
    }
}

// 使用方式 - 像属性一样访问
AMyActor Actor;
float CurrentHealth = Actor.Health;  // 调用 GetHealth()
Actor.Health = 50.0;                  // 调用 SetHealth(50.0)
```

### 自动属性（C#风格）
```angelscript
class AMyActor : AActor
{
    // 自动实现属性
    UPROPERTY()
    float Health { get; set; } = 100.0;
    
    // 只读属性
    UPROPERTY()
    float MaxHealth { get; private set; } = 100.0;
    
    // 带自定义逻辑的属性
    UPROPERTY()
    float Shield
    {
        get { return ShieldValue; }
        set { ShieldValue = FMath::Max(0.0, value); }
    }
    
    private float ShieldValue = 0.0;
}
```

---

## 6. 自动绑定简化

### 标准 C++ 绑定
```cpp
// C++ 中需要手动绑定到 Angelscript
FAngelscriptBinds::FNamespace ns("FVector");
ns.Method("float Size() const", &FVector::Size);
```

### Angelscript 自动绑定语法糖
```angelscript
// 自动绑定 BlueprintCallable 函数
// C++ 中：UFUNCTION(BlueprintCallable)
// Angelscript 中直接可用

// 自动绑定属性
// C++ 中：UPROPERTY(BlueprintReadWrite)
// Angelscript 中可直接读写

// 示例：AActor 的自动绑定方法
AActor Actor;
FVector Loc = Actor.GetActorLocation();  // 自动绑定的 C++ 方法
Actor.SetActorLocation(FVector(0, 0, 100));
```

### ScriptCallable - 仅脚本可用
```cpp
// C++ 中标记为仅脚本可用
UFUNCTION(ScriptCallable)
static void ScriptOnlyFunction();
```

```angelscript
// Angelscript 中可以调用
UMyClass::ScriptOnlyFunction();
```

---

## 7. Delegate 和 Event 简化

### 标准 C++ Delegate
```cpp
// C++ 中复杂的 Delegate 声明
DECLARE_DYNAMIC_DELEGATE(FMyDelegate);
DECLARE_DYNAMIC_MULTICAST_DELEGATE(FMyMulticastDelegate);
```

### Angelscript 语法糖 - Delegate
```angelscript
// 简单声明 Delegate 类型
delegate void FMyDelegate(int32 Value, FString Name);

class AMyActor : AActor
{
    // 存储 Delegate
    FMyDelegate MyDelegate;
    
    UFUNCTION()
    void BindDelegate()
    {
        // 绑定到函数
        MyDelegate.BindUFunction(this, n"OnDelegateCalled");
    }
    
    UFUNCTION()
    void OnDelegateCalled(int32 Value, FString Name)
    {
        Print(f"Called with {Value}, {Name}");
    }
    
    UFUNCTION()
    void ExecuteDelegate()
    {
        // 执行 Delegate
        MyDelegate.ExecuteIfBound(42, "Test");
    }
}
```

### Event（多播 Delegate）语法糖
```angelscript
// 声明 Event 类型
event void FMyEvent(int32 Counter);

class AMyActor : AActor
{
    // 声明 Event
    UPROPERTY()
    FMyEvent OnMyEvent;
    
    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        // 添加多个监听者
        OnMyEvent.AddUFunction(this, n"FirstHandler");
        OnMyEvent.AddUFunction(this, n"SecondHandler");
    }
    
    UFUNCTION()
    void FirstHandler(int32 Counter)
    {
        Print(f"First: {Counter}");
    }
    
    UFUNCTION()
    void SecondHandler(int32 Counter)
    {
        Print(f"Second: {Counter}");
    }
    
    UFUNCTION()
    void BroadcastEvent()
    {
        // 广播给所有监听者
        OnMyEvent.Broadcast(10);
    }
}
```

---

## 8. UFUNCTION 默认行为

### 标准 C++ 显式标记
```cpp
// C++ 中需要显式指定 BlueprintCallable
UFUNCTION(BlueprintCallable)
void MyFunction();
```

### Angelscript 语法糖 - 默认 BlueprintCallable
```angelscript
class AMyActor : AActor
{
    // 默认就是 BlueprintCallable，不需要显式指定
    UFUNCTION()
    void MyFunction()
    {
        // 自动可从蓝图调用
    }
    
    // 如果不想从蓝图调用，需要显式标记
    UFUNCTION(NotBlueprintCallable)
    void InternalFunction()
    {
        // 仅脚本内部使用
    }
}
```

### 可配置默认行为
```angelscript
// 在项目设置中可以配置：
// - 默认 BlueprintCallable: 开/关
// - 默认 BlueprintPure: 开/关
```

---

## 9. UPROPERTY 默认行为

### 标准 C++ 显式标记
```cpp
// C++ 中需要显式指定 EditAnywhere 和 BlueprintReadWrite
UPROPERTY(EditAnywhere, BlueprintReadWrite)
float MyProperty;
```

### Angelscript 语法糖 - 默认可编辑
```angelscript
class AMyActor : AActor
{
    // 默认就是 EditAnywhere 和 BlueprintReadWrite
    UPROPERTY()
    float MyProperty = 10.0;
    
    // 如果不想蓝图可写
    UPROPERTY(NotBlueprintCallable)
    float InternalProperty = 5.0;
    
    // 如果不可编辑
    UPROPERTY(NotEditable)
    float ReadOnlyProperty = 1.0;
}
```

### 默认行为配置
```angelscript
// 项目设置中可以配置默认的 UPROPERTY 行为
// 通常默认是 EditAnywhere + BlueprintReadWrite
```

---

## 10. 指针和引用简化

### 标准 C++ 指针语法
```cpp
// C++ 中需要处理指针
AActor* ActorPtr = GetActor();
ActorPtr->SetActorLocation(Location);
```

### Angelscript 语法糖 - 无指针
```angelscript
// Angelscript 中没有指针，只有对象引用
AActor Actor = GetActor();
Actor.SetActorLocation(Location);  // 使用 . 而不是 ->

// 所有 UObject 类型都是引用
USceneComponent Comp = GetRootComponent();
Comp.SetWorldLocation(FVector::ZeroVector);
```

### 引用传递
```angelscript
// 使用 & 传递引用
void ModifyVector(FVector& Vector)
{
    Vector.X += 10.0;
}

// 调用
FVector MyVec = FVector(1, 2, 3);
ModifyVector(MyVec);  // MyVec 现在被修改了
```

### 自动垃圾回收
```angelscript
// 不需要 UPROPERTY 来防止 GC
// 所有对象引用自动被 GC 管理

class AMyActor : AActor
{
    // 不需要 UPROPERTY() 来防止 GC
    AActor CachedTarget;  // 自动 GC 管理
    
    UFUNCTION()
    void CacheTarget(AActor Target)
    {
        CachedTarget = Target;  // 安全，自动 GC
    }
}
```

---

## 11. 热重载支持

### 标准 C++ 开发流程
```cpp
// 修改 C++ 代码
// -> 编译
// -> 重启编辑器
// -> 等待加载
// 耗时：数分钟
```

### Angelscript 语法糖 - 热重载
```angelscript
// 1. 修改 Angelscript 代码
class AMyActor : AActor
{
    UFUNCTION(BlueprintOverride)
    void Tick(float DeltaTime)
    {
        // 修改这里的逻辑
        Print("Updated!");  // <- 修改这一行
    }
}

// 2. 保存文件 (Ctrl+S)
// 3. 编辑器自动热重载（毫秒级）
// 4. 继续测试，无需重启
```

### 热重载最佳实践
```angelscript
class AMyActor : AActor
{
    // 使用 default 而不是构造函数
    // 构造函数在热重载时可能运行不可预测
    
    UPROPERTY()
    float Health = 100.0;  // 好的做法
    
    // 避免在构造函数中做复杂初始化
    // 使用 BeginPlay 代替
    
    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        // 在这里初始化
        InitializeActor();
    }
}
```

---

## 12. GameplayTag 命名空间

### 标准方式
```angelscript
// 传统方式获取 GameplayTag
FGameplayTag Tag = FGameplayTag::RequestGameplayTag(FName("UI.Action.Escape"));
```

### Angelscript 语法糖 - 全局命名空间
```angelscript
// 所有 GameplayTag 自动绑定到 GameplayTags 命名空间
// 非字母数字字符转为下划线

// 假设有 GameplayTag "UI.Action.Escape"
FGameplayTag TheTag = GameplayTags::UI_Action_Escape;

// 其他示例
FGameplayTag CombatTag = GameplayTags::State_Combat_Idle;
FGameplayTag InputTag = GameplayTags::Input_Action_Jump;

// 在条件中使用
if (Actor.HasTag(GameplayTags::State_Combat_InCombat))
{
    // ...
}
```

### 优势
- **编译时检查**: 拼写错误在编译时发现
- **IDE 支持**: 自动补全可用
- **性能**: 编译时解析，运行时无开销

---

## 13. 其他语法糖

### 13.1 浮点数类型简化
```angelscript
// Angelscript 中 float 默认是 64-bit double
float Value = 1.0;  // 实际上是 double

// 如果需要 32-bit float，显式使用 float32
float32 SinglePrecision = 1.0f;

// 64-bit double（与 float 相同）
float64 DoublePrecision = 1.0;
```

### 13.2 数组和容器简化
```angelscript
// TArray 简化为数组语法
TArray<int32> Numbers;
Numbers.Add(1);
Numbers.Add(2);

// TMap 简化为字典语法
TMap<FName, float> Stats;
Stats.Add(n"Health", 100.0);
Stats.Add(n"Mana", 50.0);

// 范围 for 循环
for (int32 Number : Numbers)
{
    Print(f"Number: {Number}");
}

// 遍历 Map
for (auto Kvp : Stats)
{
    Print(f"{Kvp.GetKey()}: {Kvp.GetValue()}");
}
```

### 13.3 类型推断
```angelscript
// 使用 auto 进行类型推断
auto Player = Cast<APlayerCharacter>(GetOwner());
auto Location = GetActorLocation();
auto Tags = GetGameplayTags();
```

### 13.4 空值检查简化
```angelscript
// 使用 nullptr 检查
AActor Target = GetTarget();
if (Target != nullptr)
{
    Target.DoSomething();
}

// 简化为
if (Target != nullptr)
{
    Target.DoSomething();
}

// 或者使用 IsValid
if (IsValid(Target))
{
    Target.DoSomething();
}
```

### 13.5 类型转换简化
```angelscript
// C++ 风格的 Cast
APlayerCharacter Player = Cast<APlayerCharacter>(Actor);

// 在 Angelscript 中同样适用
if (Player != nullptr)
{
    Player.DoPlayerThing();
}

// 也可以使用 as 关键字（如果支持）
APlayerCharacter Player = Actor as APlayerCharacter;
```

---

## 14. 与 C++ 的主要差异总结

| 特性 | C++ | Angelscript |
|------|-----|-------------|
| 指针 | `AActor*` | `AActor`（引用）|
| 访问成员 | `->` | `.` |
| FName 创建 | `FName("...")` | `n"..."` |
| 格式化字符串 | `FString::Printf` | `f"...{expr}"` |
| 构造函数 | 在构造函数中初始化 | `default` 关键字 |
| GC 管理 | 需要 `UPROPERTY()` | 自动管理 |
| 方法绑定 | 显式 `BlueprintCallable` | 默认 `BlueprintCallable` |
| 属性绑定 | 显式 `EditAnywhere` | 默认 `EditAnywhere` |
| 热重载 | 不支持 | 支持 |
| Mixin | 需要继承 | `mixin` 关键字 |

---

## 15. 最佳实践建议

1. **使用 `default` 代替构造函数**
   ```angelscript
   // 好的做法
   default MyComponent.SomeProperty = 10.0;
   
   // 避免在构造函数中做复杂初始化
   ```

2. **使用 `n""` 创建 FName**
   ```angelscript
   // 好的做法
   FName MyName = n"MyName";
   
   // 避免
   FName MyName = FName("MyName");
   ```

3. **使用 `f""` 进行字符串格式化**
   ```angelscript
   // 好的做法
   Print(f"Health: {Health}");
   
   // 避免
   Print("Health: " + FString::FromInt(Health));
   ```

4. **利用 Mixin 扩展功能**
   ```angelscript
   // 为常用类型添加便捷方法
   mixin bool IsValidAndAlive(AActor Self)
   {
       return IsValid(Self) && !Self.IsPendingKill();
   }
   ```

5. **使用属性访问器**
   ```angelscript
   // 封装数据访问
   UPROPERTY()
   float Health
   {
       get { return HealthValue; }
       set { HealthValue = FMath::Clamp(value, 0.0, MaxHealth); }
   }
   ```

---

*文档基于 UnrealEngine-Angelscript 官方文档和项目实践整理*
*生成时间: 2026-05-07*
