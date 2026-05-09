### UNarrativeGameUserSettings


Since GameUserSettings doesnt support sound class overrides, in Narrative pro we've extended it to do so.

**方法**:

- `float32 GetDialogueAudioVolume() const`
- `float32 GetFieldOfView()`
- `ENarrativeGameplayDifficulty GetGameplayDifficulty()`
- `float32 GetGamma()`
- `float32 GetMusicAudioVolume() const`
- `float32 GetOverallAudioVolume() const`
- `FString GetSelectedMonitor()`
- `float32 GetSFXAudioVolume() const`
- `ENarrativeSubtitleLevel GetSubtitleLevel()`
- `float32 GetUIAudioVolume() const`
- `float32 GetWeaponFieldOfView()`
- `bool InventoryWantsTile()`
- `SetDialogueAudioVolume(float32 NewDialogueAudioVolume)`
- `SetEnableBloom(bool bNewEnableBloom)`  
  Set whether or EnableBloom.
- `SetEnableMotionBlur(bool bNewEnableMotionBlur)`  
  Set whether or EnableMotionBlur.
- `SetFieldOfView(float32 NewFieldOfView)`
- `SetGameplayDifficulty(ENarrativeGameplayDifficulty NewDifficulty)`  
  Set the current gameplay difficulty
- `SetGamma(float32 NewGamma)`
- `SetInventoryWantsTile(bool bNewInventoryWantsTile)`  
  Set whether or not inventory menu is set to tile.
- `SetMusicAudioVolume(float32 NewMusicAudioVolume)`
- `SetOverallAudioVolume(float32 NewOverallAudioVolume)`
- `SetSelectedMonitor(FString NewSelectedMonitor)`
- `SetSFXAudioVolume(float32 NewSFXAudioVolume)`
- `SetShouldCrouchToggle(bool bNewCrouchToggles)`  
  Set whether or not crouching is a toggle or whether crouch key requires held.
- `SetSubtitleLevel(ENarrativeSubtitleLevel NewLevel)`  
  Set the subtitle level we want.
- `SetUIAudioVolume(float32 NewUIAudioVolume)`
- `SetWeaponFieldOfView(float32 NewWeaponFieldOfView)`
- `bool ShouldCrouchToggle()`
- `bool WantsEnableBloom()`
- `bool WantsEnableMotionBlur()`

---

