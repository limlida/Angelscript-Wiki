### FBooleanCameraVariableReference


All camera references have:

- Variable: a variable chosen by the user.
- VariableID: the ID of the variable to use for this reference.

When Variable is set, VariableID is the ID of that variable.
When Variable is not set, VariableID is the ID of something else that
the caller code should use, such as a camera rig parameter override.

**属性**:

- `UBooleanCameraVariable Variable []`


**方法**:

- `FBooleanCameraVariableReference& opAssign(FBooleanCameraVariableReference Other)`

---

