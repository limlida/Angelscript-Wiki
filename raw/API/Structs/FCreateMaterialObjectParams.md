### FCreateMaterialObjectParams


FCreateMaterialObjectParams is a collection of input data intended to be passed to
UModelingObjectsCreationAPI::CreateMaterialObject().

**属性**:

- `FString BaseName [The base name of the new Material object]`
- `UMaterialInterface MaterialToDuplicate [The parent UMaterial of this material will be duplicated to create the new UMaterial Asset.]`
- `UObject StoreRelativeToObject [An object to store the Material relative to.]`
- `UWorld TargetWorld [The World/Level the new Material object should be created in (if known).
Note that Material generally do not exist as objects in a Level.
However, it may be necessary to store the texture in a path relative to the
level (for example if the level is in a Plugin, this would be necessary in-Editor)]`


**方法**:

- `FCreateMaterialObjectParams& opAssign(FCreateMaterialObjectParams Other)`

---

