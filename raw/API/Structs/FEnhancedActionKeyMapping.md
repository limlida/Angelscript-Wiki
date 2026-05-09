### FEnhancedActionKeyMapping


Defines a mapping between a key activation and the resulting enhanced action
An key could be a button press, joystick axis movement, etc.
An enhanced action could be MoveForward, Jump, Fire, etc.

**属性**:

- `const UInputAction Action [Action to be affected by the key]`
- `FKey Key [Key that affect the action.]`
- `TArray<TObjectPtr<UInputModifier>> Modifiers [Modifiers applied to the raw key value.
These are applied sequentially in array order.

Note: Modifiers defined in individual key mappings will be applied before those defined in the Input Action asset.
Modifiers will not override any that are defined on the Input Action asset, they will be combined together during evaluation.]`
- `UPlayerMappableKeySettings PlayerMappableKeySettings [Used to expose this mapping or to opt-out of settings completely.]`
- `EPlayerMappableKeySettingBehaviors SettingBehavior [Defines which Player Mappable Key Setting to use for a Action Key Mapping.]`
- `TArray<TObjectPtr<UInputTrigger>> Triggers [Trigger qualifiers. If any trigger qualifiers exist the mapping will not trigger unless:
If there are any Explicit triggers in this list at least one of them must be met.
All Implicit triggers in this list must be met.]`


**方法**:

- `FEnhancedActionKeyMapping& opAssign(FEnhancedActionKeyMapping Other)`

---

