### FMeleeCombatData


Melee abilities use this to operate, both with unarmed attacks and melee weapons.

**属性**:

- `TArray<TObjectPtr<UNarrativeAnimSet>> AttackCombos [Combo montages for our melee attacks]`
- `TArray<TObjectPtr<UNarrativeAnimSet>> HeavyAttackCombos [Combo montages for our heavy melee attacks]`
- `FCombatTraceData TraceData [Attacking without a weapon will use this trace data]`


**方法**:

- `FMeleeCombatData& opAssign(FMeleeCombatData Other)`

---

