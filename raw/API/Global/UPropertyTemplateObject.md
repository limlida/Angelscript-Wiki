### UPropertyTemplateObject


In order to use PropertyEditorModule.CreateSingleProperty we have to give it an object instance
and the name of the target property to edit. It will then iterate the object for a property with that
name and create a property editor widget.

This is very limiting when editing a single entry within an FArrayProperty, as the inner and the
array prop will have the same name, leading it to create an array editor. Also, since we have to
give it an instance, modifying the widget will automatically modify the object, which we may not
want, we may just want a property editor of a particular type.

This class is a hack around all that: It has an instance of most property types,
so that you can instantiate one of these and just pass along the name of the property type you want.
They are all be named Captured<propertyType> (e.g. CapturedFloatProperty, CapturedObjectProperty,
bCapturedBoolProperty) but you can use the helper function to get the name of the property you want.
// TODO: Convert this into a static dictionary that maps to a small separate class for each property type
// Maybe even template it for array/map/set property types

**属性**:

- `uint8 CapturedByteProperty [Captured byte property]`
- `float CapturedDoubleProperty [Captured double property]`
- `float32 CapturedFloatProperty [Captured float property]`
- `int16 CapturedInt16Property [Captured int16 property]`
- `int64 CapturedInt64Property [Captured int64 property]`
- `int8 CapturedInt8Property [Captured int8 property]`
- `int CapturedIntProperty [Captured int32 property]`
- `FName CapturedNameProperty [Captured FName property]`
- `UObject CapturedObjectProperty [Captured UObject property]`
- `TSoftObjectPtr<UObject> CapturedSoftObjectProperty [Captured Soft UObject property]`
- `FString CapturedStrProperty [Captured FString property]`
- `FText CapturedTextProperty [Captured FText property]`
- `uint16 CapturedUInt16Property [Captured uint16 property]`
- `uint CapturedUInt32Property [Captured uint32 property]`
- `uint64 CapturedUInt64Property [Captured uint16 property]`
- `FVector CapturedVectorProperty [Captured FVector property]`
- `bool bCapturedBoolProperty [Captured boolean property]`

---

