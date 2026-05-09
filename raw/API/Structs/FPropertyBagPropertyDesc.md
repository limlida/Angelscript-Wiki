### FPropertyBagPropertyDesc


Describes a property in the property bag.

**属性**:

- `FGuid ID [Unique ID for this property. Used as main identifier when copying values over.]`
- `UClass MetaClass [Editor-only meta class for IClassViewer]`
- `FName Name [Name for the property.]`
- `uint64 PropertyFlags [Flags that will get copied over to this property. uint64 since EPropertyFlags is not UEnum]`
- `EPropertyBagPropertyType ValueType [Type of the value described by this property.]`
- `const UObject ValueTypeObject [Pointer to object that defines the Enum, Struct, or Class.]`


**方法**:

- `FPropertyBagPropertyDesc& opAssign(FPropertyBagPropertyDesc Other)`

---

