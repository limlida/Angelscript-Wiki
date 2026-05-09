### FMassEntityConfig


Describes a Mass agent to spawn. The struct can be embedded to allow last minute changes to the agent (i.e. for debugging).
The agent config describes a unique list of features which are used to create an entity template.
Derived configs can override parent features.

**属性**:

- `const UMassEntityConfigAsset Parent [Reference to parent config asset]`
- `TArray<TObjectPtr<UMassEntityTraitBase>> Traits [Array of unique traits of this config]`


**方法**:

- `FMassEntityConfig& opAssign(FMassEntityConfig Other)`

---

