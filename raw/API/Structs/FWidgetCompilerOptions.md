### FWidgetCompilerOptions


**属性**:

- `EPropertyBindingPermissionLevel PropertyBindingRule [Controls if you allow property bindings in widgets.  They can have a large performance impact if used.]`
- `TArray<TSoftClassPtr<UWidgetCompilerRule>> Rules [Custom rules.]`
- `bool bAllowBlueprintPaint [If you disable this, these widgets these compiler options apply to will not be allowed to implement Paint.]`
- `bool bAllowBlueprintTick [If you disable this, these widgets these compiler options apply to will not be allowed to implement Tick.]`


**方法**:

- `FWidgetCompilerOptions& opAssign(FWidgetCompilerOptions Other)`

---

