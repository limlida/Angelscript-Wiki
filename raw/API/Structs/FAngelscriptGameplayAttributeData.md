### FAngelscriptGameplayAttributeData


We use this subtype to be able to reflect on the property it belongs to for replication etc.

**属性**:

- `FName AttributeName []`
- `float32 BaseValue []`
- `float32 CurrentValue []`


**方法**:

- `float32 GetBaseValue() const`
- `float32 GetCurrentValue() const`
- `Initialize(float32 InitialData)`
- `SetBaseValue(float32 NewValue)`
- `SetCurrentValue(float32 NewValue)`
- `FAngelscriptGameplayAttributeData& opAssign(FAngelscriptGameplayAttributeData Other)`

---

