### FRadialDamageParams


Parameters used to compute radial damage

**属性**:

- `float32 BaseDamage [Max damage done]`
- `float32 DamageFalloff [Describes amount of exponential damage falloff]`
- `float32 InnerRadius [Within InnerRadius, do max damage]`
- `float32 MinimumDamage [Damage will not fall below this if within range]`
- `float32 OuterRadius [Outside OuterRadius, do no damage]`


**方法**:

- `FRadialDamageParams& opAssign(FRadialDamageParams Other)`

---

