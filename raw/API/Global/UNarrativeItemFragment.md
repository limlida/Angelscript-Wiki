### UNarrativeItemFragment


Allows data to be added to items for users wishing for a more composition based approach.

A great example of where you might need composition is Ammo. You might want wieldable ammo like arrows,
but also non-wieldable ammo like firearm ammo that just sits in your inventory. Maybe you have a crazy weapon
item that can shoot health potions at people to heal them. However Potion Items, Wieldable Items, and so on
don't share the same base class, so they cant all have ammo data on them. With composition, you CAN have this,
by adding Ammo fragments to all items that require the ability to be used as ammo, even if the items are all unrelated.

**方法**:

- `TArray<UNarrativeItemUseAction> GetItemUseActions() const`  
  Grab all the ways an item can be used if this fragment is present.

---

