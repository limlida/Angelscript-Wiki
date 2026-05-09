### FCreateTextureObjectParams


FCreateTextureObjectParams is a collection of input data intended to be passed to
UModelingObjectsCreationAPI::CreateTextureObject(). Not all data necessarily needs
to be specified, this will depend on the particular implementation. The comments
below are representative of how this data structure is used in the Tools and
API implementation(s) provided with Unreal Engine, but end-user implementors
could abuse these fields as necessary.

The definition of a "texture object" is implementation-specific.
In the UE Editor this is generally a UTexture2D

**属性**:

- `FString BaseName [The base name of the new mesh object]`
- `FString FullAssetPath [A full path location to save the asset out to. If this parameter is not null, it overrides other work done to find a path]`
- `UTexture2D GeneratedTransientTexture [Texture source data. Generally assumed that this is a Texture created in the Transient package
that is intended to be saved in a permanent package.]`
- `UObject StoreRelativeToObject [An object to store the Texture relative to. For example the texture could be stored at the same path.]`
- `UWorld TargetWorld [The World/Level the new texture object should be created in (if known).
Note that Textures generally do not exist as objects in a Level.
However, it may be necessary to store the texture in a path relative to the
level (for example if the level is in a Plugin, this would be necessary in-Editor)]`
- `int TypeHintExtended [An arbitrary integer that can be used to pass data to an API implementation]`


**方法**:

- `FCreateTextureObjectParams& opAssign(FCreateTextureObjectParams Other)`

---

