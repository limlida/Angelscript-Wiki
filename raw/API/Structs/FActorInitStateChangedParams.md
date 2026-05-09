### FActorInitStateChangedParams


Parameters struct for Init State change functions

**属性**:

- `FName FeatureName [Name of the feature that changed]`
- `FGameplayTag FeatureState [The new state of the feature]`
- `UObject Implementer [The object (often a component) that implements the feature]`
- `AActor OwningActor [The actor owning the feature that changed]`


**方法**:

- `FActorInitStateChangedParams& opAssign(FActorInitStateChangedParams Other)`

---

