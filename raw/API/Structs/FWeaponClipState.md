### FWeaponClipState


Used to track the state of our weapons magazine, if the weapon uses ammo.

**属性**:

- `int AmmoInClip [The amount of ammo loaded into the clip of the weapon.]`
- `FGuid AmmoItemGUID [The ammo items GUID, used so we can SaveGame the ammo item and restore it.]`
- `UNarrativeItem AmmoItemSource [The ammo item we're consuming as ammo is used up from the clip. Stored using its GUID so we can SaveGame this.
      This will only be set to a valid item if we are using NON-EQUIPPABLE AMMO. Equippable ammo is just pulled right from our ammo slot.]`


**方法**:

- `FWeaponClipState& opAssign(FWeaponClipState Other)`

---

