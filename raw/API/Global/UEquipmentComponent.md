### UEquipmentComponent


Add this to your pawn class, call Initialize on beginplay, and your player will be able to equip items - its that easy!

Tracks what items are equipped, remembers what default clothing items the player should wear if an item isn't equipped,
and generally just manages the players equipped items.

**属性**:

- `TMap<FGameplayTag,UEquippableItem> EquippedItems [All of the items that are currently equipped are stored in here]`
- `FGameplayTagContainer HolsterSlots [All of the weapon holster slots available.]`
- `FOnItemEquipped OnItemEquipped`
- `FOnItemUnequipped OnItemUnequipped`
- `FGameplayTagContainer WieldSlots [All of the weapon wield slots available.]`
- `TMap<FGameplayTag,UWeaponItem> WieldedWeapons [All of the weapons that are currently wielded are stored in here]`


**方法**:

- `UEquippableItem GetEquippedItemAtSlot(FGameplayTag Slot)`  
  Return the item equipped at the given slot
- `GetEquippedItemsOfClass(TSubclassOf<UEquippableItem> EquippableClass, TArray<UEquippableItem>& OutEquippables)`  
  Return the items that match the given equippable class
- `float32 GetEquippedItemsWeight() const`  
  Return how much all of our equipped items weigh
- `UWeaponItem GetEquippedWeaponAtSlot(FGameplayTag Slot)`  
  Return the weapon equipped at the given slot
- `UGroomComponent GetGroomComponentAtSlot(FGameplayTag Slot)`  
  Return the groom for the given slot
- `TArray<UEquippableItem> GetItemsWithSlot(FGameplayTag Slot)`  
  Return the items equipped that match the slot subtag
- `UWeaponItem GetWieldedWeaponAtSlot(FGameplayTag Slot)`  
  Return the weapon wielded at the given slot
- `TArray<UWeaponItem> GetWieldedWeapons()`  
  Return all wielded weapons.
- `Initialize(TMap<FGameplayTag,USkeletalMeshComponent> ClothingMeshes, USkeletalMeshComponent LeaderPoseComponent)`  
  Initialize the equipment component, by telling it which meshes link to which slot.

       @param ClothingMeshes The map which maps each clothing slot to the skeletal mesh component the clothing will equip to
       @param LeaderPoseComponent the component all of the equipped items will be told to follow upon equipping.
- `bool IsDualWielding() const`  
  Return wether we're dual wielding or not

---

