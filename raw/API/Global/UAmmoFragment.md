### UAmmoFragment


Can be added to any item to specify that the item can be used as ammo. Contains information like a special projectile
we might need to spawn when using this ammo, or a custom damage effect to apply when using the ammo. Up to caller to use how they wish.

You can add even more data by subclassing this, for example an ability the ammo should override the weapon with.

**属性**:

- `float32 AmmoDamageOverride [Custom damage amount to use with this ammo]`
- `TSubclassOf<UGameplayEffect> DamageEffect [Custom damage GE to use with this ammo]`
- `TSubclassOf<ANarrativeProjectile> ProjectileClass [Custom damage GE to use with this ammo]`
- `FCombatTraceData TraceData [Custom trace data to use with this ammo]`
- `bool bOverrideTraceData [Custom trace data to use with this ammo]`

---

