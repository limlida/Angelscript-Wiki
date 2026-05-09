### UCommonInputSettings


**属性**:

- `TSoftObjectPtr<UCommonInputActionDomainTable> ActionDomainTable [Create a derived asset from UCommonInputActionDomainTable to store ordered ActionDomain data for your game]`
- `TSoftClassPtr<UCommonUIInputData> InputData [Create a derived asset from UCommonUIInputData to store Input data for your game.]`
- `float InputMethodThrashingCooldownInSeconds []`
- `int InputMethodThrashingLimit []`
- `float InputMethodThrashingWindowInSeconds []`
- `FPerPlatformSettings PlatformInput []`
- `TMap<FName,FName> PlatformNameUpgrades [A map of Common Input platform names to a new one, which you can use
to upgrade your Input Action data tables if you add a new platform to your
project and wish to copy from some existing data]`
- `bool bAllowOutOfFocusDeviceInput []`
- `bool bEnableAutomaticGamepadTypeDetection [Controls automatic detection of the gamepad type.
Disable this if you want to manually control the gamepad type using the UCommonInputSubsystem::SetGamepadInputType() function.]`
- `bool bEnableDefaultInputConfig [Controls whether a default Input Config will be set when the active CommonActivatableWidgets do not specify a desired one.
Disable this if you want to control the Input Mode via alternative means.]`
- `bool bEnableEnhancedInputSupport [Controls if Enhanced Input Support plugin-wide. Requires restart due to caching.]`
- `bool bEnableInputMethodThrashingProtection []`

---

