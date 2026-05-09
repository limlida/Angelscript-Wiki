### ANarrativeLevelSequenceActor


Level sequence actor that has been modified to allow for extra functionality base UE5 sequencer can't do, such as moving NPCs into place before sequence begins to allow seamless transition, etc.

**属性**:

- `FNarrativeSequencePlaybackSettings NarrativeSequenceParams [The specialized narrative playback settings, containing some extra pieces of functionality.]`
- `APlayerController OwnerController [The specialized narrative playback settings, containing some extra pieces of functionality.]`


**方法**:

- `BlendOutAndStop()`  
  Remove the cinematic controlled tag from sequence participants, and wait 0.5s for anims to blend out.
Then, will destroy the sequence actor.
- `TArray<UObject> GetBoundObjects() const`
- `bool HandleBindingsAndStartSequence()`  
  Makes the bindings run to the correct positions if required, then will begin the sequence. Return false if we couldn't start due to tag requirements etc
- `SetBindingsUsingSpawner(ANPCSpawner Spawner)`  
  Given an NPCSpawner, bind any NPCs managed by that spawn into the sequence using their spawns Component name .
- `UpdateSequence(ULevelSequence LevelSequence, FNarrativeSequencePlaybackSettings InSettings)`  
  Update sequence and binding params etc.

---

