### USkillTreeComponent


Add to the PlayerState.

The skill tree component holds the players skills! Skills consist of a linked number of nodes called perks. Both perks and skills have levels - you can have a stealth skill
which may be level 19, and within that skill you might have a perk called featherlight which may be purchased, and leveled up. IE 5% quieter footsteps at level 1, 10% at level 2, etc.

Narrative ships with a Perk_AttributeMod which allows for easy attribute modifier perks, ie 5% higher attack damage, 10% higher sneak, etc.

Perks are what you'd expect - hold 15% more weight, gain a new ability, etc! They are saved to disk via the FSavedPerk, which the component loads
back in automatically.

**属性**:

- `TMap<TSubclassOf<UTreePerk>,FPerkArray> PrerequisiteMap [Given a perk class, the map will give you all the perks you need to have purchased before you can buy that perk. We cache them in here for tidyness and efficiency]`
- `TArray<TObjectPtr<UTreePerk>> PurchasedPerks [All perks we've purchased go in here.]`
- `int SkillTreePoints [The amount of skill tree points we have available.]`
- `TArray<UTreeSkill> SkillTreeSkills [The skills in the skill tree, and the perks. Current perks are only set on the server - replication has not yet been supported.]`


**方法**:

- `bool BuyPerk(TSubclassOf<UTreePerk> Perk, UTreeSkill OwnerSkill)`  
  Attempt to buy a perk. Will check that the prerequisite perks are purchased first.
- `bool CanBuyPerk(TSubclassOf<UTreePerk> Perk, FText& OutCantBuyReason)`  
  Return whether or not we can purchase a perk.
- `UTreePerk GetPerk(TSubclassOf<UTreePerk> PerkClass) const`  
  Provided we own a perk, return the instance of it.
- `int GetPerkLevel(TSubclassOf<UTreePerk> PerkClass)`  
  Check what level a given perk is
- `GiveSkillPoints(int Points)`  
  Give the player the given amount of skill points
- `bool HasPerk(TSubclassOf<UTreePerk> PerkClass) const`  
  Check if we have a given perk
- `bool HasRequiredPerks(TSubclassOf<UTreePerk> Perk)`  
  Return whether or not we've unlocked previous perks - doesn't take into account skill points or anything like that - use CanBuyPerk if you want that.

---

