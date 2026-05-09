### UNarrativeAttributeSetBase


Base attribute set for Narrative pro. We haven't seperated out attack and health values, however this may be nice if your game requires it.

**属性**:

- `FGameplayAttributeData Armor [Armor reduces the amount of damage done by attackers]`
- `FGameplayAttributeData AttackDamage [AttackDamage is the amount of damage our attacks do.]`
- `FGameplayAttributeData AttackRating [Attack rating acts as a multiplier for attack damage. Attack multiplier = AttackRating / 100.  Used by the damage calculation]`
- `FGameplayAttributeData Damage [Doesn't need to be replicated, is just a meta attribute server uses to apply damage to players.]`
- `FGameplayAttributeData Heal [Heal meta-attribute used to heal player]`
- `FGameplayAttributeData Health [Current Health, when 0 we expect owner to die unless prevented by an ability. Capped by MaxHealth.
Positive changes can directly use this.
Negative changes to Health should go through Damage meta attribute.]`
- `FGameplayAttributeData MaxHealth [MaxHealth is its own attribute since GameplayEffects may modify it]`
- `FGameplayAttributeData MaxStamina [MaxStamina is its own attribute since GameplayEffects may modify it]`
- `FGameplayAttributeData Stamina [Current stamina, used to execute special abilities. Capped by MaxStamina.]`
- `FGameplayAttributeData StaminaRegenRate [Stamina regen rate will passively increase Stamina every second]`
- `FGameplayAttributeData StealthRating [The higher the stealth rating, the more forgiving NPCs perception will be of you. 100 Stealth rating = not perceptable, 50 stealth rating = 50% less alert, etc.]`
- `FGameplayAttributeData XP [Our XP points - we implement this as an attribute which may be overkill]`

---

