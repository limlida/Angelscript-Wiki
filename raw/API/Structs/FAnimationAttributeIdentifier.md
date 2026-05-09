### FAnimationAttributeIdentifier


Script-friendly structure for identifying an attribute (curve).
Wrapping the attribute name, bone name and index, and underlying data type for use within the AnimDataController API.

**属性**:

- `int BoneIndex []`
- `FName BoneName []`
- `FName Name []`
- `UScriptStruct ScriptStruct []`
- `FSoftObjectPath ScriptStructPath []`


**方法**:

- `bool IsValid()`  
  @return       Whether or not the Attribute Identifier is valid
- `FAnimationAttributeIdentifier& opAssign(FAnimationAttributeIdentifier Other)`

---

