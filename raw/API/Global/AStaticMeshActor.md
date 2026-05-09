### AStaticMeshActor


StaticMeshActor is an instance of a UStaticMesh in the world.
Static meshes are geometry that do not animate or otherwise deform, and are more efficient to render than other types of geometry.
Static meshes dragged into the level from the Content Browser are automatically converted to StaticMeshActors.

@see https://docs.unrealengine.com/latest/INT/Engine/Actors/StaticMeshActor/
@see UStaticMesh

**属性**:

- `ENavDataGatheringMode NavigationGeometryGatheringMode []`
- `UStaticMeshComponent StaticMeshComponent`
- `EPhysicsReplicationMode StaticMeshPhysicsReplicationMode [Set which replication mode to use for this static mesh instance if it both replicates and simulates physics.]`
- `bool bStaticMeshReplicateMovement [This static mesh should replicate movement. Automatically sets the RemoteRole and bReplicateMovement flags. Meant to be edited on placed actors (those other two properties are not)]`


**方法**:

- `SetMobility(EComponentMobility InMobility)`  
  Function to change mobility type

---

