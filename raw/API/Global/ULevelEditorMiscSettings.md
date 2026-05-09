### ULevelEditorMiscSettings


Configure miscellaneous settings for the Level Editor.

**属性**:

- `TSubclassOf<ULevelStreaming> DefaultLevelStreamingClass [The default level streaming class to use when adding new streaming levels]`
- `FDirectoryPath EditorScreenshotSaveDirectory [The save directory for newly created screenshots]`
- `FVector MinimumBoundsForCheckingSize []`
- `float32 PercentageThresholdForPrompt []`
- `bool bAllowBackgroundAudio [If checked audio playing in the editor will continue to play even if the editor is in the background]`
- `bool bAutoApplyLightingEnable [If checked lighting will be automatically applied to the level after a static lighting build is complete.
Otherwise you will be prompted to apply it]`
- `bool bAutoMoveBSPPivotOffset [If true, the pivot offset for BSP will be automatically moved to stay centered on its vertices]`
- `bool bAvoidRelabelOnPasteSelected [If enabled, will avoid relabeling actors in UUnrealEdEngine::edactPasteSelected]`
- `bool bBSPAutoUpdate [If true, BSP will auto-update]`
- `bool bCheckReferencesOnDelete [If enabled, will force checking references during a delete. Note: disabling this is for advanced usage only and not recommended.]`
- `bool bCreateNewAudioDeviceForPlayInEditor [If checked, will create a new audio engine instance for the play-in-editor window. Otherwise, will re-use the audio device used in content browser.]`
- `bool bEnableEditorSounds [Enables audio feedback for certain operations in Unreal Editor, such as entering and exiting Play mode]`
- `bool bNavigationAutoUpdate [If true, Navigation will auto-update]`
- `bool bPromptWhenAddingToLevelBeforeCheckout []`
- `bool bPromptWhenAddingToLevelOutsideBounds []`
- `bool bReplaceRespectsScale [If enabled, replacing actors will respect the scale of the original actor.  Otherwise, the replaced actors will have a scale of 1.0]`

---

