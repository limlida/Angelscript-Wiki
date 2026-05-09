### UOptimusDeformerInstance


Class representing an instance of an Optimus Mesh Deformer, used in a OptimusDeformerDynamicInstanceManager
It contains the per instance deformer variable state and local state for each of the graphs in the deformer.

**方法**:

- `bool EnqueueTriggerGraph(FName InTriggerGraphName)`  
  Trigger a named trigger graph to run on the next tick
- `bool SetBoolArrayVariable(FName InVariableName, TArray<bool> InValue)`
- `bool SetBoolVariable(FName InVariableName, bool InValue)`  
  Set the value of a boolean variable.
- `bool SetFloatArrayVariable(FName InVariableName, TArray<float> InValue)`
- `bool SetFloatVariable(FName InVariableName, float InValue)`
- `bool SetInt2ArrayVariable(FName InVariableName, TArray<FIntPoint> InValue)`
- `bool SetInt2Variable(FName InVariableName, FIntPoint InValue)`
- `bool SetInt3ArrayVariable(FName InVariableName, TArray<FIntVector> InValue)`
- `bool SetInt3Variable(FName InVariableName, FIntVector InValue)`
- `bool SetInt4ArrayVariable(FName InVariableName, TArray<FIntVector4> InValue)`
- `bool SetInt4Variable(FName InVariableName, FIntVector4 InValue)`
- `bool SetIntArrayVariable(FName InVariableName, TArray<int> InValue)`
- `bool SetIntVariable(FName InVariableName, int InValue)`  
  Set the value of an integer variable.
- `bool SetLinearColorArrayVariable(FName InVariableName, TArray<FLinearColor> InValue)`
- `bool SetLinearColorVariable(FName InVariableName, FLinearColor InValue)`
- `bool SetNameArrayVariable(FName InVariableName, TArray<FName> InValue)`
- `bool SetNameVariable(FName InVariableName, FName InValue)`
- `bool SetQuatArrayVariable(FName InVariableName, TArray<FQuat> InValue)`
- `bool SetQuatVariable(FName InVariableName, FQuat InValue)`
- `bool SetRotatorArrayVariable(FName InVariableName, TArray<FRotator> InValue)`
- `bool SetRotatorVariable(FName InVariableName, FRotator InValue)`
- `bool SetTransformArrayVariable(FName InVariableName, TArray<FTransform> InValue)`
- `bool SetTransformVariable(FName InVariableName, FTransform InValue)`  
  Set the value of a transform variable.
- `bool SetVector2ArrayVariable(FName InVariableName, TArray<FVector2D> InValue)`
- `bool SetVector2Variable(FName InVariableName, FVector2D InValue)`
- `bool SetVector4ArrayVariable(FName InVariableName, TArray<FVector4> InValue)`
- `bool SetVector4Variable(FName InVariableName, FVector4 InValue)`
- `bool SetVectorArrayVariable(FName InVariableName, TArray<FVector> InValue)`
- `bool SetVectorVariable(FName InVariableName, FVector InValue)`

---

