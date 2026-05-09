### UNarrativeCombatAbility


Ability that has all of the hitscan, collision checking, damage dealing etc built in. Used by both melee and hitscan weapons.

**属性**:

- `float32 DefaultAttackDamage [The amount of attack damage the ability will deal by default when it receives target data. If you need to be a dynamic
      value you can override GetAttackDamage() or even override HitTarget() to do something different than dealing damage when we hit someone.]`
- `float32 DefaultBotAttackFrequency [Get the rate bots should use this attack at. ie sword swipe should return a lower frequency than a fully auto rifle.]`
- `float32 DefaultBotAttackRange [Get the range bots should be within to use this attack. ie sword swipe should return a lower range than a fully auto rifle.]`
- `bool bRequiresAmmo [if true, we check our item has its ammo class, and if not the cost check will fail]`


**方法**:

- `FTransform ApplySpread(FTransform ViewPoint, float32 Spread) const`  
  Apply a fixed amount of spread to the given targeting viewpoint
- `FTransform ApplyWeaponSpread(FTransform ViewPoint) const`  
  Apply spread to the given targeting viewpoint. Will use the weapons current spread. Use ApplySpread if you want to specify the spread amount.
- `FinalizeTargetData(FGameplayAbilityTargetDataHandle TargetData, FGameplayTag ApplicationTag)`  
  After targeting data is generated, this actually sends the target data to server and calls delegates etc.
TODO need to code a server-validation layer into this for networking
- `GenerateTargetDataUsingTrace(FCombatTraceData TraceData, FTransform TraceStart, FGameplayTag ApplicationTag)`  
  Generate some target data using a trace. HitTarget Attack Event will be called by default if the trace hits something.
- `UWeaponItem GetAbilityWeapon() const`  
  Get the weapon that granted this ability
- `UNarrativeItem GetAbilityWeaponAmmo() const`  
  Get the weapon that granted this ability and find its ammo object, if any.
- `AWeaponVisual GetAbilityWeaponVisual() const`  
  Get either the main or offhand weapon visual depending on what IsMainhand() returns.
- `float32 GetAttackDamage() const`  
  Basically just a generic default damage amount for the ability to deal, doesn't have to be used.
- `float32 GetBotAttackFrequency() const`  
  Get the rate bots should use this attack at. ie sword swipe should return a lower frequency than a fully auto rifle. Scaled by difficulty multiplier defined in arsenal settings.
- `float32 GetBotAttackRange() const`  
  Get the range this attack should cover. ie sword swipe should return a lower distance than a rifle. Only used for bots.
- `FGameplayAbilityTargetDataHandle GetTargetDataUsingTrace(FCombatTraceData TraceData, FTransform TraceStart)`  
  Get target data using a trace - doesn't do anything with it, up to caller.
- `HandleTargetData(FGameplayAbilityTargetDataHandle TargetData, FGameplayTag ApplicationTag)`
- `bool HasAmmo() const`
- `bool IsMainhand() const`  
  Get the weapon hand this combat ability acts on - can be overriden to specify a hand. Not neccesarily used by all combat abilities, some may not need.

---

