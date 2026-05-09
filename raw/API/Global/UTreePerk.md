### UTreePerk


Represents a perk in the given skill tree. Owned by UTreeSkill and points to the next perks in the tree.

**属性**:

- `TArray<TSubclassOf<UTreePerk>> LinkedPerkClasses [The classes this perk should link to. IE you'll need to buy this perk before any of the linked ones.]`
- `TArray<UTreePerk> LinkedPerks [The perks that come after this one.]`
- `int MaxLevels [The max amount of levels the perk allows]`
- `FText PerkDescription [The description of this Perk.]`
- `TSoftObjectPtr<UTexture2D> PerkDisplayIcon [The display icon of the perk]`
- `FText PerkDisplayName [The display name of this Perk.]`
- `int PerkLevel [The level this perk is at. -1 = not purchased]`
- `UMediaSource PerkVideo [The preview video for this perk, explaining what it does in the skills menu.]`


**方法**:

- `USkillTreeComponent GetOwningComponent() const`
- `FText GetPerkDescription()`  
  Grab the description of the perk
- `SetPerkLevel(int NewPerkLevel)`  
  Override this to apply whatever functionality you need to the player.

---

