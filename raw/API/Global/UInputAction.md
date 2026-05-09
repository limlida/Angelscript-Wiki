### UInputAction


An Input Action is a logical representation of something the user can do, such as "Jump" or "Crouch".
These are what your gameplay code binds to in order to listen for input state changes. For most scenarios
your gameplay code should be listening for the "Triggered" event on an input action. This will allow
for the most scalable and customizable input configuration because you can add different triggers
for each key mapping in the Input Mapping Context.

They are the conceptual equivalent to "Action" and "Axis" mapping names from the Legacy Input System.

Note: These are instanced per player (via FInputActionInstance)

**属性**:

- `EInputActionAccumulationBehavior AccumulationBehavior [This defines how the value of this input action will be calcuated in the case that there are multiple key mappings to the same input action.

When TakeHighestAbsoluteValue is selected, then the key mapping with the highest absolutle value will be utilized. (Default)
When Cumulative is selected, then each key mapping will be added together to get the key value.

@see UEnhancedPlayerInput::ProcessActionMappingEvent, where this property is read from.]`
- `FText ActionDescription [A localized descriptor of this input action]`
- `TArray<TObjectPtr<UInputModifier>> Modifiers [Modifiers are applied to the final action value.
These are applied sequentially in array order.
They are applied on top of any FEnhancedActionKeyMapping modifiers that drove the initial input

Note: Modifiers defined in the Input Action asset will be applied AFTER any modifiers defined in individual key mappings in the Input Mapping Context asset.]`
- `UPlayerMappableKeySettings PlayerMappableKeySettings [Holds setting information about this Action Input for setting screen and save purposes.]`
- `int TriggerEventsThatConsumeLegacyKeys [A bitmask of trigger events that, when reached, will consume any FKeys mapped to this input action.]`
- `TArray<TObjectPtr<UInputTrigger>> Triggers [Trigger qualifiers. If any trigger qualifiers exist the action will not trigger unless:
At least one Explicit trigger in this list has been met.
All Implicit triggers in this list are met.]`
- `EInputActionValueType ValueType [The type that this action returns from a GetActionValue query or action event]`
- `bool bConsumeInput [Should this action swallow any inputs bound to it or allow them to pass through to affect lower priority bound actions?]`
- `bool bConsumesActionAndAxisMappings [Should this Input Action consume any legacy Action and Axis key mappings?
If true, then any key mapping to this input action will consume(aka block) the legacy key
mapping from firing delegates.]`
- `bool bReserveAllMappings [This action's mappings are not intended to be automatically overridden by higher priority context mappings. Users must explicitly remove the mapping first. NOTE: It is the responsibility of the author of the mapping code to enforce this!]`
- `bool bTriggerWhenPaused [Should this action be able to trigger whilst the game is paused - Replaces bExecuteWhenPaused]`

---

