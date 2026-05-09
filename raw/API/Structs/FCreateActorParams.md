### FCreateActorParams


FCreateActorParams is a collection of input data intended to be passed to
UModelingObjectsCreationAPI::CreateNewActor().

**属性**:

- `FString BaseName [The base name of the new Actor]`
- `UWorld TargetWorld [The World/Level the new Actor should be created in (if known).]`
- `UObject TemplateAsset [A template Asset used to determine the type of Actor to spawn.]`
- `FTransform Transform [The 3D local-to-world transform for the new actor]`


**方法**:

- `FCreateActorParams& opAssign(FCreateActorParams Other)`

---

