### UNiagaraDataInterfaceGeometryCollection


Data Interface for the Collisions

**属性**:

- `UGeometryCollection DefaultGeometryCollection [GeometryCollection used to sample from when not overridden by a source actor from the scene. This reference is NOT removed from cooked builds.]`
- `TSoftObjectPtr<AGeometryCollectionActor> GeometryCollectionActor [The source actor from which to sample. Takes precedence over the direct geometry collection. Note that this can only be set when used as a user variable on a niagara component in the world.]`
- `FNiagaraUserParameterBinding GeometryCollectionUserParameter [Reference to a user parameter if we're reading one.]`
- `TSoftObjectPtr<UGeometryCollection> PreviewCollection [Geometry collection used to sample from when not overridden by a source actor from the scene. Only available in editor for previewing. This is removed in cooked builds.]`
- `ENDIGeometryCollection_SourceMode SourceMode [Controls how to retrieve the Skeletal Mesh Component to attach to.]`
- `bool bIncludeIntermediateBones [If true then this data interface will also read and write intermediate bones or geometry, otherwise only leaf nodes are considered]`

---

