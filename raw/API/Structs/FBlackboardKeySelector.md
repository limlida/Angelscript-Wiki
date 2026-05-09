### FBlackboardKeySelector


helper struct for defining types of allowed blackboard entries
(e.g. only entries holding points and objects derived form actor class)

**属性**:

- `TArray<TObjectPtr<UBlackboardKeyType>> AllowedTypes [array of allowed types with additional properties (e.g. uobject's base class)
EditAnywhere is required for FBlackboardSelectorDetails::CacheBlackboardData()]`
- `int SelectedKeyID [ID of selected key]`
- `FName SelectedKeyName [name of selected key]`
- `TSubclassOf<UBlackboardKeyType> SelectedKeyType [class of selected key]`
- `bool bNoneIsAllowedValue`


**方法**:

- `AddBoolFilter(UObject Owner, FName PropertyName)`
- `AddClassFilter(UObject Owner, FName PropertyName, TSubclassOf<UObject> AllowedClass)`
- `AddEnumFilter(UObject Owner, FName PropertyName, UEnum AllowedEnum)`
- `AddFloatFilter(UObject Owner, FName PropertyName)`
- `AddIntFilter(UObject Owner, FName PropertyName)`
- `AddNameFilter(UObject Owner, FName PropertyName)`
- `AddObjectFilter(UObject Owner, FName PropertyName, TSubclassOf<UObject> AllowedClass)`
- `AddRotatorFilter(UObject Owner, FName PropertyName)`
- `AddStringFilter(UObject Owner, FName PropertyName)`
- `AddStructFilter(UObject Owner, FName PropertyName, const UScriptStruct AllowedStruct)`
- `AddVectorFilter(UObject Owner, FName PropertyName)`
- `FBlackboardKeySelector& opAssign(FBlackboardKeySelector Other)`

---

