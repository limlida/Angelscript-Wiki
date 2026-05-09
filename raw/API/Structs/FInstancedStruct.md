### FInstancedStruct


FInstancedStruct works similarly as instanced UObject* property but is USTRUCTs.

Example:

    UPROPERTY(EditAnywhere, Category = Foo, meta = (BaseStruct = "/Script/ModuleName.TestStructBase"))
    FInstancedStruct Test;

    UPROPERTY(EditAnywhere, Category = Foo, meta = (BaseStruct = "/Script/ModuleName.TestStructBase"))
    TArray<FInstancedStruct> TestArray;

**方法**:

- `bool opEquals(FInstancedStruct Other) const`  
  Comparison operators. Deep compares the struct instance when identical.
- `InitializeAs(? Struct)`  
  Initializes from struct type and emplace construct.
- `InitializeAs(const UScriptStruct StructType)`  
  Default initializes a struct of this type
- `FScriptStructWildcard Get(const UScriptStruct StructType) const`  
  Returns struct data of a particular type. Throws an exception if the instanced struct does not contain a struct of this type.
- `FScriptStructWildcard& GetMutable(const UScriptStruct StructType)`  
  Returns struct data of a particular type. Throws an exception if the instanced struct does not contain a struct of this type.
- `Reset()`
- `bool Contains(const UScriptStruct StructType) const`  
  Check whether the instanced struct contains a struct of this type
- `bool IsValid() const`  
  Returns True if the struct is valid.
- `UScriptStruct GetScriptStruct() const`  
  Get the type of struct contained within the instanced struct
- `FInstancedStruct& opAssign(FInstancedStruct Other)`

---

