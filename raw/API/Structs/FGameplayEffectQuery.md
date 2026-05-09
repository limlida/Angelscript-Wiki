### FGameplayEffectQuery


Every set condition within this query must match in order for the query to match. i.e. individual query elements are ANDed together.

**属性**:

- `FActiveGameplayEffectQueryCustomMatch_Dynamic CustomMatchDelegate_BP [BP-exposed delegate for providing custom matching conditions.]`
- `TSubclassOf<UGameplayEffect> EffectDefinition [Matches on GameplayEffects with this definition]`
- `const UObject EffectSource [Matches on GameplayEffects which come from this source]`
- `FGameplayTagQuery EffectTagQuery [Query that is matched against tags this GE has]`
- `FGameplayAttribute ModifyingAttribute [Matches on GameplayEffects which modify given attribute.]`
- `FGameplayTagQuery OwningTagQuery [Query that is matched against tags this GE gives]`
- `FGameplayTagQuery SourceAggregateTagQuery [Query that is matched against all tags the source of this GE has]`
- `FGameplayTagQuery SourceTagQuery [Query that is matched against spec tags the source of this GE has]`


**方法**:

- `FGameplayEffectQuery& opAssign(FGameplayEffectQuery Other)`

---

