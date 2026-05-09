### UWalkingMode


WalkingMode: a default movement mode for traversing surfaces and movement bases (walking, running, sneaking, etc.)

**属性**:

- `EStaticFloorCheckPolicy FloorCheckPolicy [Choice of behavior for floor checks while not moving.]`
- `UObject TurnGenerator [Optional modular object for generating rotation towards desired orientation. If not specified, linear interpolation will be used.]`


**方法**:

- `UObject GetTurnGenerator()`  
  Returns the active turn generator. Note: you will need to cast the return value to the generator you expect to get, it can also be none
- `SetTurnGeneratorClass(TSubclassOf<UObject> TurnGeneratorClass)`  
  Sets the active turn generator to use the class provided. Note: To set it back to the default implementation pass in none

---

