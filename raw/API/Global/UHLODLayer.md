### UHLODLayer


**属性**:

- `int CellSize [Cell size of the runtime grid created to encompass HLOD actors generated for this HLOD Layer]`
- `TSubclassOf<AWorldPartitionHLOD> HLODActorClass [Specify a custom HLOD Actor class, the default is AWorldPartitionHLOD]`
- `TSubclassOf<UHLODBuilder> HLODBuilderClass [HLOD Builder class]`
- `UHLODBuilderSettings HLODBuilderSettings []`
- `TSubclassOf<UWorldPartitionHLODModifier> HLODModifierClass [HLOD Modifier class, to allow changes to the HLOD at runtime]`
- `EHLODLayerType LayerType [Type of HLOD generation to use]`
- `UHLODLayer LinkedLayer [HLOD Layer used to control visiblity of Custom HLOD Actors. Custom HLOD Actors become visible when actors from the linked HLOD Layer are unloaded.]`
- `float LoadingRange [Loading range of the runtime grid created to encompass HLOD actors generated for this HLOD Layer]`
- `UHLODLayer ParentLayer [HLOD Layer to assign to the generated HLOD actors]`
- `bool bIsSpatiallyLoaded [Whether HLOD actors generated for this layer will be spatially loaded]`

---

