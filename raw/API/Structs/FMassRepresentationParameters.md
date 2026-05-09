### FMassRepresentationParameters


**属性**:

- `EMassRepresentationType LODRepresentation [What should be the representation of this entity for each specific LOD]`
- `float32 NotVisibleUpdateRate [At what rate should the not visible entity be updated in seconds]`
- `TSubclassOf<UMassRepresentationActorManagement> RepresentationActorManagementClass [Allow subclasses to override the representation actor management behavior]`
- `FName WorldPartitionGridNameContainingCollision [World Partition grid name to test collision against, default None will be the main grid]`
- `bool bCanModifyRepresentationActorManagementClass [the property is marked like this to ensure it won't show up in UI]`
- `bool bForceActorRepresentationForExternalActors [If true, forces UMassRepresentationProcessor to override the WantedRepresentationType to actor representation whenever an external (non Mass owned)
actor is set on an entitie's FMassActorFragment fragment. If / when the actor fragment is reset, WantedRepresentationType resumes selecting the
appropriate representation for the current representation LOD.

Useful for server-authoritative actor spawning to force actor representation on clients for replicated actors.]`
- `bool bKeepActorExtraFrame [When switching to ISM keep the actor an extra frame, helps cover rendering glitches (i.e. occlusion query being one frame late)]`
- `bool bKeepLowResActors [If true, LowRes actors will be kept around, disabled, whilst StaticMeshInstance representation is active]`
- `bool bSpreadFirstVisualizationUpdate [If true, will spread the first visualization update over the period specified in NotVisibleUpdateRate member]`


**方法**:

- `FMassRepresentationParameters& opAssign(FMassRepresentationParameters Other)`

---

