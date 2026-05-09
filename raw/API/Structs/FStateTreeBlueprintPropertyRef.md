### FStateTreeBlueprintPropertyRef


FStateTreeBlueprintPropertyRef is a PropertyRef intended to be used in State Tree Blueprint nodes like tasks, conditions or evaluators, but also as a StateTree parameter.

**属性**:

- `EStateTreePropertyRefType RefType [Specifies the type of property to reference]`
- `UObject TypeObject [Specifies the type of property to reference together with RefType, used for Enums, Structs, Objects and Classes.]`
- `bool bIsOptional [If specified, the reference can be left unbound, otherwise the State Tree compiler report error if the reference is not bound.]`
- `bool bIsRefToArray [If specified, the reference is to an TArray<RefType>]`


**方法**:

- `FStateTreeBlueprintPropertyRef& opAssign(FStateTreeBlueprintPropertyRef Other)`

---

