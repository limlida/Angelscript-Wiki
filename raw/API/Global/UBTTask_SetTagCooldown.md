### UBTTask_SetTagCooldown


Cooldown task node.
Sets a cooldown tag value.  Use with cooldown tag decorators to prevent behavior tree execution.

**属性**:

- `FValueOrBBKey_Float CooldownDuration [Value we will add or set to the Cooldown tag when this task runs.]`
- `FGameplayTag CooldownTag [Gameplay tag that will be used for the cooldown.]`
- `FValueOrBBKey_Bool bAddToExistingDuration [True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time).]`

---

