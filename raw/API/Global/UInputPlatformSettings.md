### UInputPlatformSettings


Per-Platform input options

**属性**:

- `EInputDeviceMappingPolicy DeviceMappingPolicy [The input device mapping policy controls how Human Interface Devices (HID's)
are "mapped" or "assigned" to local players in your game. Depending on this
policy, the creation of FPlatformUserId's and FInputDeviceId's can change.

This policy is only in affect on platforms which do NOT have a managed user login
or some kind of dedicated input mapping OS functionality (consoles have this).]`
- `TArray<FHardwareDeviceIdentifier> HardwareDevices [A list of identifiable hardware devices available on this platform]`
- `int MaxPlatformUserCount [The max number of FPlatformUserId's which can be allocated on this platform.

This is checked in FGenericPlatformInputDeviceMapper::AllocateNewUserId]`
- `int MaxTriggerFeedbackPosition [The maximum position that a trigger can be set to

@see UInputDeviceTriggerFeedbackProperty]`
- `int MaxTriggerFeedbackStrength [The maximum strength that trigger feedback can be set to

@see UInputDeviceTriggerFeedbackProperty]`
- `int MaxTriggerVibrationAmplitude [The maximum amplitude that can be set on trigger vibrations

@see UInputDeviceTriggerVibrationProperty::GetVibrationAmplitudeValue]`
- `int MaxTriggerVibrationFrequency [The max frequency that a trigger vibration can occur

@see UInputDeviceTriggerVibrationProperty::GetVibrationFrequencyValue]`
- `int MaxTriggerVibrationTriggerPosition [The max position that a vibration trigger effect can be set to.

@see UInputDeviceTriggerVibrationProperty::GetTriggerPositionValue]`

---

