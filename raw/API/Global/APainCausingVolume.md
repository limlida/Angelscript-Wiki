### APainCausingVolume


Volume that causes damage over time to any Actor that overlaps its collision.

**属性**:

- `float32 DamagePerSec [Damage done per second to actors in this volume when bPainCausing=true]`
- `TSubclassOf<UDamageType> DamageType [Type of damage done]`
- `float32 PainInterval [If pain causing, time between damage applications.]`
- `bool bEntryPain [if bPainCausing, cause pain when something enters the volume in addition to damage each second]`
- `bool bPainCausing [Whether volume currently causes damage.]`

---

