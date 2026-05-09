### UInterchangeMaterialFunctionCallExpressionFactoryNode


**方法**:

- `bool GetCustomMaterialFunctionDependency(FString& AttributeValue) const`
- `bool SetCustomMaterialFunctionDependency(FString AttributeValue)`  
  Set the unique ID of the material function that the function call expression
is referring to.
Note that a call to AddFactoryDependencyUid is made to guarantee that
the material function is created before the function call expression

---

