### FPerkConfig


Represents a perk in our skill.

**属性**:

- `TArray<TSubclassOf<UTreePerk>> LinkedTo [Child perks this skill should link to go in here.]`
- `TSubclassOf<UTreePerk> Perk [The perk]`
- `FVector2D PerkCords [The location the perk should display at inside the skill tree UI.]`


**方法**:

- `FPerkConfig& opAssign(FPerkConfig Other)`

---

