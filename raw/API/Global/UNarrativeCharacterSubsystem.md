### UNarrativeCharacterSubsystem


Character subsystem for Narrative. Allows us to easily load an Character/NPC, find an NPC in the world, ensures we don't spawn multiple NPC instances, etc.

**属性**:

- `FOnRequestedNPCSpawned OnNPCSpawned`


**方法**:

- `bool DestroyNPC(ANarrativeNPCCharacter NPC)`  
  Despawn an NPC.
- `ANarrativeCharacter FindCharacter(const UCharacterDefinition CharacterDefinition) const`  
  Return the first character in the world with this definition. Much, much more efficient than a GetActorOfClass.
      Extremely efficient as characters are cached via a TMap lookup.
- `FindCharacters(const UCharacterDefinition CharacterDefinition, TArray<ANarrativeCharacter>& OutActors) const`  
  Request all Characters of the given type. Much, much more efficient than a GetAllActorsOfClass.
      Extremely efficient as NPCs are cached via a TMap lookup.
- `ANarrativeNPCCharacter FindNPC(const UNPCDefinition NPCData, bool& bOutSucceeded) const`  
  Return the first NPC in the world with this type. Much, much more efficient than a GetActorOfClass.
      Extremely efficient as NPCs are cached via a TMap lookup.
- `ANarrativeNPCCharacter FindNPCByID(FName NPCID) const`  
  Return the first NPC in the world with this ID. Much, much more efficient than a GetActorOfClass.
      Extremely efficient as NPCs are cached via a TMap lookup.
- `FindNPCs(const UNPCDefinition NPCData, TArray<ANarrativeNPCCharacter>& OutActors) const`  
  Request all NPCs of the given type. Much, much more efficient than a GetAllActorsOfClass.
      Extremely efficient as NPCs are cached via a TMap lookup.
- `ANarrativeNPCCharacter FindOrSpawnNPC(UNPCDefinition NPCData, FTransform Transform)`  
  Same as spawn NPC, but will just return the NPC should it already exist in the level.
- `bool IsCharacterSpawned(const UCharacterDefinition CharacterDefinition) const`  
  Return whether a given character exists in the world
- `ANarrativeNPCCharacter SpawnNPC(UNPCDefinition NPCData, FTransform Transform, FNPCSpawnParams SpawnParams)`  
  Spawn an NPC in.
       @param Transform is optional, and is only used if the actor doesnt exist in the world and needs spawning

---

