### UEquippableItem


The base class for an equippable item the player can put on. Networking is built right in.

**属性**:

- `float32 ArmorRating [The amount we'll increase the wearers armor rating by when this item is equipped]`
- `float32 AttackRating [The amount we'll increase the wearers attack rating by when this item is equipped]`
- `FGameplayTag CurrentSlot [The slot this item is currently equipped to.]`
- `TArray<TSubclassOf<UNarrativeGameplayAbility>> EquipmentAbilities [Equipping this item will grant these abilities to the user; we'll remove them when the item is unequipped]`
- `TSubclassOf<UGameplayEffect> EquipmentEffect [Gameplay effect to apply when the item is equipped, removed when item is taken off. For weapons this is applied when wielded.]`
- `TMap<FGameplayTag,float32> EquipmentEffectValues`
- `FActiveGameplayEffectHandle EquipmentGEHandle [The handle to the equipment gameplay effect that applies the equipments attributes to our player.]`
- `FGameplayTagContainer EquippableSlots [The slots this item can be equipped to, usually only 1.]`
- `float32 StealthRating [The amount we'll increase the wearers stealth rating by when item is equipped]`


**方法**:

- `bool EquipItem(FGameplayTag DesiredSlot)`  
  Equip this item to the given slot. Return true if succeeded.
- `HandleEquip()`  
  Allows you to override what equipping the item does. By default this sets the players mesh to the Equippable Mesh, but perhaps
       you want a weapon actor to spawn in, or have an equippable aura effect that follows the player. by overriding HandleEquip you can
       do whatever custom logic you want.
- `HandleUnequip(FGameplayTag OldSlot)`  
  Allows you to override what happens when the item unequips.
- `bool IsEquipped() const`
- `ServerEquipItem(FGameplayTag DesiredSlot)`
- `UnequipItem()`  
  Unequip this item from the given slot. Return true if succeeded.

---

