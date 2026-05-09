### FGameplayTagReponsePair


**属性**:

- `TArray<TSubclassOf<UGameplayEffect>> ResponseGameplayEffects [The GameplayEffects to apply in reponse to the tag]`
- `int SoftCountCap [The max "count" this response can achieve. This will not prevent counts from being applied, but will be used when calculating the net count of a tag. 0=no cap.]`
- `FGameplayTag Tag [Tag that triggers this response]`


**方法**:

- `FGameplayTagReponsePair& opAssign(FGameplayTagReponsePair Other)`

---

