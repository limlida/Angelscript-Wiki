### UCharacterAppearance


Defines what a character should look like without any items on - ie their default skin.
Also contains basic logic for putting together a random appearance, useful for adding variation.

**属性**:

- `FCharacterCreatorAttributeSet CharacterAttributes [The attribute set for the character. If no variations are added, this is the appearance that will be used.]`
- `FCharacterCreatorVariationSet Variations [The variations we'll use to generate the attribute set the visual ends up using.]`


**方法**:

- `FCharacterCreatorAttributeSet GetAppearanceAttributes(const ANarrativeCharacter Requester) const`  
  The attribute set for the character

---

