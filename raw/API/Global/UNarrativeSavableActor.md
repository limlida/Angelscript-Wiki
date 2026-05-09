### UNarrativeSavableActor


**方法**:

- `Load()`  
  Tell the actor it has been loaded in from a save.
- `PrepareForSave()`  
  Tell the actor it is about to be saved, and needs to populate all its save data
- `SetActorGUID(FGuid SavedGUID)`  
  Used for dynamic actors to set the stable GUID to the one the save system got from the actors record - that way the save system will correctly save this actor again in future
- `bool ShouldRespawn() const`  
  Allows us to define whether we want the save system to auto-respawn a dynamic actor, or whether we'll do it ourselves manually.
At the moment we just have this feature for NPCs - they should't auto-respawn if part of a settlement, as the settlement spawns them instead.

---

