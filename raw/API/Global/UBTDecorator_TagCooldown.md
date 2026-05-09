### UBTDecorator_TagCooldown


Cooldown decorator node.
A decorator node that bases its condition on whether a cooldown timer based on a gameplay tag has expired.

**属性**:

- `FValueOrBBKey_Float CooldownDuration [Value we will add or set to the Cooldown tag when this node is deactivated.]`
- `FGameplayTag CooldownTag [Gameplay tag that will be used for the cooldown.]`
- `FValueOrBBKey_Bool bActivatesCooldown [Whether or not we are adding/setting to the cooldown tag's value when the decorator deactivates.]`
- `FValueOrBBKey_Bool bAddToExistingDuration [True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time).]`

---

