### FCreateProxyMeshActorOptions


**属性**:

- `FString BasePackageName [The package path you want to save to. ie: /Game/MyFolder]`
- `FMeshProxySettings MeshProxySettings`
- `FString NewActorLabel [Name of the new spawned Actor to replace the provided Actors.]`
- `bool bDestroySourceActors [Destroy the provided Actors after the operation.]`
- `bool bRenameComponentsFromSource [Rename StaticMeshComponents based on source Actor's name.]`
- `bool bSpawnMergedActor [Spawn the new merged actors]`


**方法**:

- `FCreateProxyMeshActorOptions& opAssign(FCreateProxyMeshActorOptions Other)`

---

