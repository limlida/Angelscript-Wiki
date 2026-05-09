### UNPCSpawnComponent


Spawns an NPC when asked by our spawner.

**属性**:

- `FGuid NPCSaveGUID [The save GUID to assign to the NPC, so that its stats, items, etc are saved. You only need to set this if the NPC is non-unique
       and you actually want it to save.]`
- `UNPCDefinition NPCToSpawn [The NPC we want the spawn to spawn in]`
- `UNPCGoalItem OptionalGoal [Optional goal to assign to the NPC when it spawns in]`
- `FNPCSpawnParams SpawnParams [Optional spawn params we can use in the spawning process]`
- `float32 UntetherDistance [NPCs within this range of the player wont get despawned; we'll instead tether them to the player]`
- `bool bDontSpawnIfPreviouslyKilled [If true, we wont spawn the NPC in any more if it was previously killed.]`
- `bool bTetheredToPlayer [Whether the NPC was tethered to the player]`
- `bool bWasKilled [Whether the NPC this spawn created has been killed in the past. If they were we shouldnt spawn them]`


**方法**:

- `ANarrativeNPCCharacter GetSpawnedNPC() const`  
  Try grab the currently spawned NPC if one exists.

---

