### FDefaultContextSetting


Represents a single input mapping context and the priority that it should be applied with

**属性**:

- `TSoftObjectPtr<UInputMappingContext> InputMappingContext [Input Mapping Context that should be Added to the EnhancedInputEditorSubsystem when it starts listening for input]`
- `int Priority [The prioirty that should be given to this mapping context when it is added]`
- `bool bAddImmediately [If true, then this IMC will be applied immediately when the EI subsystem is ready]`
- `bool bRegisterWithUserSettings [If true, then this IMC will be registered with the User Input Settings (if one is available) immediately when the Enhanced Input subsystem starts.]`


**方法**:

- `FDefaultContextSetting& opAssign(FDefaultContextSetting Other)`

---

