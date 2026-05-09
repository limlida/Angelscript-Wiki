### UInterchangeMaterialReferenceNode


Describes a reference to an existing (as in, not imported) material.

The idea is that mesh / actor nodes can reference one of these nodes as a slot dependency, and
Interchange will assign that existing material to the corresponding slot during import

**方法**:

- `bool GetCustomContentPath(FString& AttributeValue) const`  
  Gets the content path of the target material (e.g. "/Game/MyFolder/Red.Red")
- `bool SetCustomContentPath(FString AttributeValue) const`  
  Sets the content path of the target material (e.g. "/Game/MyFolder/Red.Red")

---

