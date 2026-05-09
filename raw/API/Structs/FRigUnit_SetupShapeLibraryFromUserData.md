### FRigUnit_SetupShapeLibraryFromUserData


Allows to set / add a shape library on the running control rig from user data

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FString LibraryName [* Optionally provide the namespace of the shape library to use.
* This is only useful if you have multiple shape libraries and you
* want to override a specific one.]`
- `bool LogShapeLibraries [* If this is checked we'll output the resulting shape libraries to the log for debugging.]`
- `FString NameSpace [* The name space of the user data to look the shape library up within]`
- `FString Path [* The path within the user data for the shape library]`


**方法**:

- `FRigUnit_SetupShapeLibraryFromUserData& opAssign(FRigUnit_SetupShapeLibraryFromUserData Other)`

---

