### ULevel


A Level is a collection of Actors (lights, volumes, mesh instances etc.).
Multiple Levels can be loaded and unloaded into the World to create a streaming experience.

@see https://docs.unrealengine.com/latest/INT/Engine/Levels
@see UActor

**属性**:

- `FLevelSimplificationDetails LevelSimplification [Level simplification settings for each LOD]`
- `bool bUseActorFolders [Use actor folder objects, actor folders of this level will be persistent in their own object.]`
- `bool bUseExternalActors [Use external actors, new actor spawned in this level will be external and existing external actors will be loaded on load.]`


**方法**:

- `ALevelScriptActor GetLevelScriptActor() const`
- `bool IsVisible() const`
- `bool IsBeingRemoved() const`
- `TArray<AActor> GetActors() const`

---

