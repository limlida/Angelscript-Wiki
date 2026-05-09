### UAbilitySystemTestAttributeSet


**属性**:

- `float32 ArmorDamageReduction`
- `float32 CritChance`
- `float32 CritMultiplier`
- `float32 Damage [This Damage is just used for applying negative health mods. Its not a 'persistent' attribute. // You can't make a GameplayEffect 'powered' by Damage (Its transient)]`
- `float32 DodgeChance`
- `float32 Health [You can't make a GameplayEffect modify Health Directly (go through)]`
- `float32 LifeSteal`
- `FGameplayAttributeData Mana`
- `float32 MaxHealth [NOTE ON MUTABLE:
This is only done so that UAbilitySystemTestAttributeSet can be initialized directly in GameplayEffectsTest.cpp without doing a const_cast in 100+ places.
Mutable is not required and should never be used on normal attribute sets.
   // You can't make a GameplayEffect modify Health Directly (go through)]`
- `float32 MaxMana`
- `float32 NoStackAttribute`
- `float32 PhysicalDamage [This Attribute is the actual physical damage for this actor. It will power physical based GameplayEffects]`
- `float32 SpellDamage [This Attribute is the actual spell damage for this actor. It will power spell based GameplayEffects]`
- `float32 StackingAttribute1`
- `float32 StackingAttribute2`
- `float32 Strength`

---

