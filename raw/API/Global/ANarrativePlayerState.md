### ANarrativePlayerState


Base player state for Narrative Pro core.

**属性**:

- `UNarrativeAbilitySystemComponent AbilitySystemComponent`
- `FGameplayTagContainer Factions [Our affiliation]`
- `USkillTreeComponent SkillTreeComponent [The skill tree component - this holds our perks, skills, and skill tree points.]`


**方法**:

- `float32 GetHealth() const`
- `USkillTreeComponent GetSkillTreeComponent() const`
- `bool IsAlive() const`
- `SetFactions(FGameplayTagContainer NewFactions)`

---

