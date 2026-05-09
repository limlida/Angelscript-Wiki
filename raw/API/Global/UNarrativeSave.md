### UNarrativeSave


Save file that holds all actors that implement the INarrativeSavableActor interface.

**属性**:

- `FString LevelName [The name of the map we had loaded - note that the main menu loads whatever is saved in here, the subsystem doesn't use it on its end]`


**方法**:

- `OverrideLevelName(FString InLevelName)`  
  Overrides the level we have loaded on the save file. This is only used by the character creator, as it requires the save system to not save the creator map as the current level

---

