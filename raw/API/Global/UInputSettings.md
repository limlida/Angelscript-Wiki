### UInputSettings


Project wide settings for input handling

@see https://docs.unrealengine.com/latest/INT/Gameplay/Input/index.html

**属性**:

- `TArray<FInputActionKeyMapping> ActionMappings [List of Action Mappings]`
- `TArray<FInputAxisConfigEntry> AxisConfig [List of Axis Properties]`
- `TArray<FInputAxisKeyMapping> AxisMappings [List of Axis Mappings]`
- `TArray<FKey> ConsoleKeys [The keys which open the console.]`
- `TSoftClassPtr<UInputComponent> DefaultInputComponentClass [Default class type for pawn input components.]`
- `TSoftClassPtr<UPlayerInput> DefaultPlayerInputClass [Default class type for player input object. May be overridden by player controller.]`
- `FSoftObjectPath DefaultTouchInterface [The default on-screen touch input interface for the game (can be null to disable the onscreen interface)]`
- `EMouseCaptureMode DefaultViewportMouseCaptureMode [The default mouse capture mode for the game viewport]`
- `EMouseLockMode DefaultViewportMouseLockMode [The default mouse lock state behavior when the viewport acquires capture]`
- `float32 DoubleClickTime [If a key is pressed twice in this amount of time it is considered a "double click"]`
- `TArray<FString> ExcludedAutocorrectCultures [Disables autocorrect for these cultures, even if autocorrect is turned on. These should be ISO-compliant language and country codes, such as "en" or "en-US".]`
- `TArray<FString> ExcludedAutocorrectDeviceModels [Disables autocorrect for these device models, even if autocorrect is turned in. Model IDs listed here will match against the start of the device's
model (e.g., "SM-" will match all device model IDs that start with "SM-"). This is currently only supported on Android devices.]`
- `TArray<FString> ExcludedAutocorrectOS [Disables autocorrect for these operating systems, even if autocorrect is enabled. Use the format "[platform] [osversion]"
(e.g., "iOS 11.2" or "Android 6"). More specific versions will disable autocorrect for fewer devices ("iOS 11" will disable
autocorrect for all devices running iOS 11, but "iOS 11.2.2" will not disable autocorrect for devices running 11.2.1).]`
- `float32 FOVScale [The scaling value to multiply the field of view by]`
- `FPerPlatformSettings PlatformSettings [Platform specific settings for Input.
@see UInputPlatformSettings]`
- `TArray<FInputActionSpeechMapping> SpeechMappings []`
- `bool bAltEnterTogglesFullscreen`
- `bool bAlwaysShowTouchInterface [Should the touch input interface be shown always, or only when the platform has a touch screen?]`
- `bool bCaptureMouseOnLaunch [Controls if the viewport will capture the mouse on Launch of the application]`
- `bool bEnableFOVScaling [Scale the mouse based on the player camera manager's field of view]`
- `bool bEnableGestureRecognizer [Whether or not to use the gesture recognition system to convert touches in to gestures that can be bound and queried]`
- `bool bEnableLegacyInputScales [Enable the use of legacy input scales on the player controller (InputYawScale, InputPitchScale, and InputRollScale)]`
- `bool bEnableMotionControls [If set to false, then the player controller's InputMotion function will never be called.
This will effectively disable any motion input (tilt, rotation, acceleration, etc) on
the GameViewportClient.

@see GameViewportClient::InputMotion]`
- `bool bEnableMouseSmoothing [Mouse smoothing control]`
- `bool bEnabledLegacyMappingDeprecationWarnings [If true, then any input action or axis mappings which are marked as deprecated will throw a warning.]`
- `bool bF11TogglesFullscreen`
- `bool bFilterInputByPlatformUser [If true, then the PlayerController::InputKey function will only process an input event if it
came from an input device that is owned by the PlayerController's Platform User.]`
- `bool bShouldFlushPressedKeysOnViewportFocusLost [If true, then the Player Controller will have it's Pressed Keys flushed when the input mode is changed
to Game and UI mode or the game viewport loses focus. The default behavior is true.

@see UGameViewportClient::LostFocus
@see APlayerController::ShouldFlushKeysWhenViewportFocusChanges]`
- `bool bShowConsoleOnFourFingerTap [Whether or not to show the console on 4 finger tap, on mobile platforms]`
- `bool bUseAutocorrect [If enabled, virtual keyboards will have autocorrect enabled. Currently only supported on mobile devices.]`
- `bool bUseMouseForTouch [Allow mouse to be used for touch]`


**方法**:

- `FName GetUniqueActionName(FName BaseActionMappingName)`
- `FName GetUniqueAxisName(FName BaseAxisMappingName)`
- `TArray<FInputActionKeyMapping> GetActionMappings() const`
- `TArray<FInputAxisKeyMapping> GetAxisMappings() const`
- `bool DoesActionExist(FName InActionName)`
- `bool DoesAxisExist(FName InAxisName)`
- `AddActionMapping(FInputActionKeyMapping KeyMapping, bool bForceRebuildKeymaps = true)`  
  Programmatically add an action mapping to the project defaults
- `AddAxisMapping(FInputAxisKeyMapping KeyMapping, bool bForceRebuildKeymaps = true)`  
  Programmatically add an axis mapping to the project defaults
- `ForceRebuildKeymaps()`  
  When changes are made to the default mappings, push those changes out to PlayerInput key maps
- `GetActionMappingByName(FName InActionName, TArray<FInputActionKeyMapping>& OutMappings) const`
- `GetActionNames(TArray<FName>& ActionNames) const`  
  Populate a list of all defined action names
- `GetAxisMappingByName(FName InAxisName, TArray<FInputAxisKeyMapping>& OutMappings) const`  
  Retrieve all axis mappings by a certain name.
- `GetAxisNames(TArray<FName>& AxisNames) const`  
  Populate a list of all defined axis names
- `RemoveActionMapping(FInputActionKeyMapping KeyMapping, bool bForceRebuildKeymaps = true)`  
  Programmatically remove an action mapping to the project defaults
- `RemoveAxisMapping(FInputAxisKeyMapping KeyMapping, bool bForceRebuildKeymaps = true)`  
  Programmatically remove an axis mapping to the project defaults
- `SaveKeyMappings()`  
  Flush the current mapping values to the config file

---

