### FActorDesc


Snapshot of an actor descriptor, which represents the state of an actor on disk.
The actor may or may not be loaded.

**属性**:

- `FName ActorPackage [Actor's package name.]`
- `FName ActorPath [Actor's path name.]`
- `FBox Bounds [Streaming bounds of this actor.]`
- `FSoftObjectPath Class [Actor class, can point to a native or Blueprint class and may be redirected.]`
- `TArray<FSoftObjectPath> DataLayerAssets [Actor's data layer assets.]`
- `FGuid Guid [The actor GUID of this descriptor.]`
- `FName Label [Actor's label.]`
- `FName Name [Internal name of the actor.]`
- `UClass NativeClass [Actor first native class.]`
- `FName RuntimeGrid [Actor's target runtime grid.]`
- `bool bActorIsEditorOnly [Actor's editor-only property.]`
- `bool bIsSpatiallyLoaded [Actor's streaming state.]`


**方法**:

- `FActorDesc& opAssign(FActorDesc Other)`

---

