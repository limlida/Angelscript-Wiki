### FGameplayTagColumn


A column which filters rows by comparing Gameplay Tags.

**属性**:

- `FGameplayTagContainer DefaultRowValue [DefaultRowValue will be assigned to cells when new rows are created]`
- `FInstancedStruct InputValue [The GameplayTagCollection property this column will filter based on]`
- `EGameplayTagMatchDirection TagMatchDirection []`
- `EGameplayContainerMatchType TagMatchType []`
- `bool bDisabled []`
- `bool bInvertMatchingLogic [If true, rows that pass the normal tag filter will be rejected, and vice versa]`
- `bool bMatchExact [If true, leaf tags must match exactly.]`


**方法**:

- `FGameplayTagColumn& opAssign(FGameplayTagColumn Other)`

---

