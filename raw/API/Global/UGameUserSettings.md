### UGameUserSettings


Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.

**属性**:

- `FOnGameUserSettingsUINeedsUpdate OnGameUserSettingsUINeedsUpdate`


**方法**:

- `ApplyHardwareBenchmarkResults()`  
  Applies the settings stored in ScalabilityQuality and saves settings
- `ApplyNonResolutionSettings()`
- `ApplyResolutionSettings(bool bCheckForCommandLineOverrides)`
- `ApplySettings(bool bCheckForCommandLineOverrides)`  
  Applies all current user settings to the game and saves to permanent storage (e.g. file), optionally checking for command line overrides.
- `ConfirmVideoMode()`  
  Mark current video mode settings (fullscreenmode/resolution) as being confirmed by the user
- `EnableHDRDisplayOutput(bool bEnable, int DisplayNits = 1000)`  
  Enables or disables HDR display output. Can be called again to change the desired nit level
- `int GetAntiAliasingQuality() const`  
  Returns the anti-aliasing quality (0..4, higher is better)
- `int GetAudioQualityLevel() const`  
  Returns the user's audio quality level setting
- `int GetCurrentHDRDisplayNits() const`  
  Returns 0 if HDR isn't supported or is turned off
- `float32 GetDefaultResolutionScale()`  
  Gets the desired resolution quality based on DesiredScreenWidth/Height and the current screen resolution
- `FIntPoint GetDesktopResolution() const`  
  Returns user's desktop resolution, in pixels.
- `int GetFoliageQuality() const`  
  Returns the foliage quality (0..4, higher is better)
- `float32 GetFrameRateLimit() const`  
  Gets the user's frame rate limit (0 indiciates the frame rate limit is disabled)
- `EWindowMode GetFullscreenMode() const`  
  Returns the user setting for game window fullscreen mode.
- `int GetGlobalIlluminationQuality() const`  
  Returns the global illumination quality (0..4, higher is better)
- `EWindowMode GetLastConfirmedFullscreenMode() const`  
  Returns the last confirmed user setting for game window fullscreen mode.
- `FIntPoint GetLastConfirmedScreenResolution() const`  
  Returns the last confirmed user setting for game screen resolution, in pixels.
- `int GetOverallScalabilityLevel() const`  
  Returns the overall scalability level (can return -1 if the settings are custom)
- `int GetPostProcessingQuality() const`  
  Returns the post-processing quality (0..4, higher is better)
- `EWindowMode GetPreferredFullscreenMode() const`  
  Returns the user setting for game window fullscreen mode.
- `float32 GetRecommendedResolutionScale()`  
  Gets the recommended resolution quality based on LastRecommendedScreenWidth/Height and the current screen resolution
- `int GetReflectionQuality() const`  
  Returns the reflection quality (0..4, higher is better)
- `GetResolutionScaleInformationEx(float32& CurrentScaleNormalized, float32& CurrentScaleValue, float32& MinScaleValue, float32& MaxScaleValue) const`  
  Returns the current resolution scale and the range
- `float32 GetResolutionScaleNormalized() const`  
  Gets the current resolution scale as a normalized 0..1 value between MinScaleValue and MaxScaleValue
- `FIntPoint GetScreenResolution() const`  
  Returns the user setting for game screen resolution, in pixels.
- `int GetShadingQuality() const`  
  Returns the shading quality (0..4, higher is better)
- `int GetShadowQuality() const`  
  Returns the shadow quality (0..4, higher is better)
- `int GetTextureQuality() const`  
  Returns the texture quality (0..4, higher is better)
- `int GetViewDistanceQuality() const`  
  Returns the view distance quality (0..4, higher is better)
- `int GetVisualEffectQuality() const`  
  Returns the visual effects quality (0..4, higher is better)
- `bool IsDirty() const`  
  Checks if any user settings is different from current
- `bool IsDynamicResolutionDirty() const`  
  Checks if the dynamic resolution user setting is different from current system setting
- `bool IsDynamicResolutionEnabled() const`  
  Returns the user setting for dynamic resolution.
- `bool IsFullscreenModeDirty() const`  
  Checks if the FullscreenMode user setting is different from current
- `bool IsHDREnabled() const`
- `bool IsScreenResolutionDirty() const`  
  Checks if the Screen Resolution user setting is different from current
- `bool IsVSyncDirty() const`  
  Checks if the vsync user setting is different from current system setting
- `bool IsVSyncEnabled() const`  
  Returns the user setting for vsync.
- `LoadSettings(bool bForceReload = false)`  
  Loads the user settings from persistent storage
- `ResetToCurrentSettings()`  
  This function resets all settings to the current system settings
- `RevertVideoMode()`  
  Revert video mode (fullscreenmode/resolution) back to the last user confirmed values
- `RunHardwareBenchmark(int WorkScale = 10, float32 CPUMultiplier = 1.000000, float32 GPUMultiplier = 1.000000)`  
  Runs the hardware benchmark and populates ScalabilityQuality as well as the last benchmark results config members, but does not apply the settings it determines. Designed to be called in conjunction with ApplyHardwareBenchmarkResults
- `SaveSettings()`  
  Save the user settings to persistent storage (automatically happens as part of ApplySettings)
- `SetAntiAliasingQuality(int Value)`  
  Sets the anti-aliasing quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetAudioQualityLevel(int QualityLevel)`  
  Sets the user's audio quality level setting
- `SetBenchmarkFallbackValues()`  
  Set scalability settings to sensible fallback values, for use when the benchmark fails or potentially causes a crash
- `SetDynamicResolutionEnabled(bool bEnable)`  
  Sets the user setting for dynamic resolution. See UGameUserSettings::bUseDynamicResolution.
- `SetFoliageQuality(int Value)`  
  Sets the foliage quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetFrameRateLimit(float32 NewLimit)`  
  Sets the user's frame rate limit (0 will disable frame rate limiting)
- `SetFullscreenMode(EWindowMode InFullscreenMode)`  
  Sets the user setting for the game window fullscreen mode. See UGameUserSettings::FullscreenMode.
- `SetGlobalIlluminationQuality(int Value)`  
  Sets the global illumination quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetOverallScalabilityLevel(int Value)`  
  Changes all scalability settings at once based on a single overall quality level
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic
- `SetPostProcessingQuality(int Value)`  
  Sets the post-processing quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetReflectionQuality(int Value)`  
  Sets the reflection quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetResolutionScaleNormalized(float32 NewScaleNormalized)`  
  Sets the current resolution scale as a normalized 0..1 value between MinScaleValue and MaxScaleValue
- `SetResolutionScaleValueEx(float32 NewScaleValue)`  
  Sets the current resolution scale
- `SetScreenResolution(FIntPoint Resolution)`  
  Sets the user setting for game screen resolution, in pixels.
- `SetShadingQuality(int Value)`  
  Sets the shading quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetShadowQuality(int Value)`  
  Sets the shadow quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetTextureQuality(int Value)`  
  Sets the texture quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic  (gets clamped if needed)
- `SetToDefaults()`
- `SetViewDistanceQuality(int Value)`  
  Sets the view distance quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetVisualEffectQuality(int Value)`  
  Sets the visual effects quality (0..4, higher is better)
@param Value 0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)
- `SetVSyncEnabled(bool bEnable)`  
  Sets the user setting for vsync. See UGameUserSettings::bUseVSync.
- `bool SupportsHDRDisplayOutput() const`  
  Whether the curently running system supports HDR display output
- `ValidateSettings()`  
  Validates and resets bad user settings to default. Deletes stale user settings file if necessary.

---

