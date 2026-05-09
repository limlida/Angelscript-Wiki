### UMassVisualizationTrait


This class has been soft-deprecated. Use MassStationaryVisualizationTrait or MassMovableVisualizationTrait

**属性**:

- `TSubclassOf<AActor> HighResTemplateActor [Actor class of this agent when spawned in high resolution]`
- `FMassVisualizationLODParameters LODParams [Configuration parameters for the visualization LOD processor]`
- `TSubclassOf<AActor> LowResTemplateActor [Actor class of this agent when spawned in low resolution]`
- `FMassRepresentationParameters Params [Configuration parameters for the representation processor]`
- `TSubclassOf<UMassRepresentationSubsystem> RepresentationSubsystemClass [Allow subclasses to override the representation subsystem to use]`
- `FStaticMeshInstanceVisualizationDesc StaticMeshInstanceDesc [Instanced static mesh information for this agent]`
- `bool bAllowServerSideVisualization [If set to true will result in the visualization-related fragments being added to server-size entities as well.
By default only the clients require visualization fragments]`
- `bool bCanModifyRepresentationSubsystemClass [the property is marked like this to ensure it won't show up in UI]`
- `bool bRequireValidStaticMeshInstanceDesc [When True, ValidateParams() will require a valid StaticMeshInstanceDesc.

When False, ValidateParams() skips checking the StaticMeshInstanceDesc.

Use False when you expect a given Trait to have invalid StaticMeshInstanceDesc
settings, and you don't want errors logged when it occurs.]`

---

