### UEnvQueryTest_GameplayTags


EnvQueryTest_GameplayTags attempts to cast items to IGameplayTagAssetInterface and test their tags with TagQueryToMatch.
The behavior of IGameplayTagAssetInterface-less items is configured by bRejectIncompatibleItems.

**属性**:

- `FGameplayTagQuery TagQueryToMatch []`
- `bool bRejectIncompatibleItems [This controls how to treat actors that do not implement IGameplayTagAssetInterface.
When set to True, actors that do not implement the interface will be ignored, meaning
they will not be scored and will not be considered when filtering.
When set to False, actors that do not implement the interface will be included in
filter and score operations with a zero score.]`
- `bool bSearchComponentsForTags [If the actor-item being tested doesn't implement IGameplayTagAssetInterface this flag controls whether the actor's components will be traversed in search of a one implementing IGameplayTagAssetInterface.
Note that only the first found component will be used.]`

---

