### FWeaponWieldState


In order to replicate weapon wields, we need to track all weapons, along with their target hand. We do so using two tag containers.
 One for the equipment slots we're wielding from, and one for the target hands the weapons go into.
 IE if slots[0]=HipL, and slots[1]=HipR, and hands[0]=Mainhand, hands[1]=Offhand, we'd be wielding HipL into our mainhand, and HipR into offhand.

**属性**:

- `FGameplayTagContainer EquipSlots [The equipment slots we're wielding the weapons from]`
- `FGameplayTagContainer WieldSlots [The target hands to wield the weapons into]`


**方法**:

- `FWeaponWieldState& opAssign(FWeaponWieldState Other)`

---

