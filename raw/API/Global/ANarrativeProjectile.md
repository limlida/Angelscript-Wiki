### ANarrativeProjectile


**属性**:

- `FProjectileTargetDataDelegate OnProjectileTargetData [Ability Task listens to this to broadcast projectile hitting something.]`


**方法**:

- `SetProjectileTargetData(FGameplayAbilityTargetDataHandle TargetHandle)`  
  Projectile should call this whenever it wants to broadcast the fact it has generated some target data.

---

