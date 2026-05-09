### FPlayerMappableKeyQueryOptions


Options when querying what keys are mapped to a specific action on the player mappable
key profile.

**属性**:

- `FKey KeyToMatch [If specified, then this key will be used to match against when checking if the key types and axis are the same.]`
- `FName MappingName [The mapping name to search for]`
- `int RequiredDeviceFlags [If set, then only player mappings whose Hardware Device Identifier that has the same flags as this will be included in the results]`
- `EHardwareDevicePrimaryType RequiredDeviceType [If set, then only player mappings whose hardware device identifier that has the same primary input device type will be included in the results of this query]`
- `EPlayerMappableKeySlot SlotToMatch [The key slot that will be required to match if set. By default this is EPlayerMappableKeySlot::Unspecified, which will not filter by the slot at all.]`
- `bool bMatchBasicKeyTypes [If true, then only keys that have the same value for IsGamepadKey, IsTouch, and IsGesture will be included in the results of this query]`
- `bool bMatchKeyAxisType [If true, then only keys that have the same value of IsAxis1D, IsAxis2D, and IsAxis3D will be included in the results of this query]`


**方法**:

- `FPlayerMappableKeyQueryOptions& opAssign(FPlayerMappableKeyQueryOptions Other)`

---

