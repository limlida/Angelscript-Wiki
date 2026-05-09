### ANarrativeGameMode


Default Game Mode class for Narrative pro.

**属性**:

- `TArray<TObjectPtr<UPlayerDefinition>> PlayerDefinitions [By default, Narrative assigns each player a definition using this list for each joining player. If you need different functionality, simply override GetPlayerDefinitionForController]`


**方法**:

- `UPlayerDefinition GetPlayerDefinitionForController(AController InController)`  
  Returns default player definition class for a controller joining the game.

---

