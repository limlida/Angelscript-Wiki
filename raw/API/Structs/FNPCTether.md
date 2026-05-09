### FNPCTether


When an NPC spawn gets streamed out, it can optionally keep the NPC around by "tethering" it to our player controller.
That way we can save those NPCs to disk, even though their spawns are no longer streamed in to the world.

**属性**:

- `ANarrativeNPCCharacter NPCCharacter [The currently spawned in NPC]`
- `UNPCDefinition NPCDef [The NPC Definition for the NPC]`
- `FGuid NPCSaveGUID [We need to store the NPCs save GUID so we can restore it after spawning the NPC, and their save record is fetched correctly.]`


**方法**:

- `FNPCTether& opAssign(FNPCTether Other)`

---

