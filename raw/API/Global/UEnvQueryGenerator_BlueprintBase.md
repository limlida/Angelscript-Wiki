### UEnvQueryGenerator_BlueprintBase


**属性**:

- `TSubclassOf<UEnvQueryContext> Context [context]`
- `TSubclassOf<UEnvQueryItemType> GeneratedItemType [@todo this should show up only in the generator's BP, but
    due to the way EQS editor is generating widgets it's there as well
    It's a bug and we'll fix it]`
- `FText GeneratorsActionDescription [A short description of what test does, like "Generate pawn named Joe"]`


**方法**:

- `AddGeneratedActor(AActor GeneratedActor) const`
- `AddGeneratedVector(FVector GeneratedVector) const`
- `DoItemGeneration(TArray<FVector> ContextLocations) const`
- `DoItemGenerationFromActors(TArray<AActor> ContextActors) const`
- `UObject GetQuerier() const`

---

