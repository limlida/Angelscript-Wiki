### UNarrativeMusicSubsystem


Manages a music.

**属性**:

- `float32 OverrideFadeDuration [current fade duration of the sound wave override]`
- `FMusicSound OverrideMusicSound [manual override sound]`


**方法**:

- `ClearAllThemeOverrides(EThemeOverrideClearMode RemoveMode)`  
  removes all theme override
- `ClearOverrideMusicWithSound()`  
  stops overriding the music with a specific sound asset
- `ClearThemeOverride(FGameplayTag Theme)`  
  removes a theme overrides
- `UAudioComponent GetActiveAudioComponent()`  
  returns the audio component that is playing music.
- `UTaggedMusicSet GetActiveMusicSet() const`  
  returns the current active music set
- `FGameplayTag GetActiveTheme() const`  
  returns the current active theme
- `bool OverrideMusicSet(TSoftObjectPtr<UTaggedMusicSet> NewMusicSet)`  
  overrides the current music set until removed or overriden
- `bool OverrideMusicWithSound(USoundBase Sound, bool bUISound, float32 FadeDuration)`  
  overrides the current music with a specific sound asset.
@param Sound sound to play.
@param bUISound is this sound, an ui sound.
@param FadeDuration duration to fade into this sound over. if greater than 0.0, pause the current music and resume it when the override is cleared.
@return true if successful.
- `bool OverrideTheme(FGameplayTag Theme, USoundBase Sound, float32 FadeInDuration = 3.000000, float32 FadeOutDuration = 3.000000, bool bPersistant = false)`  
  overrides a given theme with a specific sound asset.
@param Theme the theme to override.
@param Sound sound to override the theme with.
@param FadeInDuration time it takes to fade in this override.
@param FadeOutDuration time it takes to fade out this override.
@param bPersistant if true, this sound with persist across music set changes and will not be cleared until explicitly told.
@return
- `bool ResetMusicSetToDefault()`  
  sets the music set back to the default, either from the project settings or world setting
- `bool SetTheme(FGameplayTag Theme, bool bImmediate)`  
  sets the current theme.
@param Theme theme to use.
@param bImmediate if true, fade in and out duration for the music sound is ignored.
@return true if theme was set.

---

