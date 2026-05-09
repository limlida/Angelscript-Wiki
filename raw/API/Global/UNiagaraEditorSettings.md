### UNiagaraEditorSettings


**属性**:

- `FNiagaraActionColors ActionColors []`
- `int AffectedAssetSearchLimit [The maximum amount of asset references that are searched before stopping. Setting this too high can lead to long load times when opening default assets (basically the same as disabling the breadth limit in the reference viewer).]`
- `TArray<FNiagaraCurveTemplate> CurveTemplates []`
- `FSoftObjectPath DefaultDecalRendererMaterial [Default material to use with new decal renderers.]`
- `FSoftObjectPath DefaultDynamicInputScript [Niagara script to duplicate as the base of all new script assets created.]`
- `FSoftObjectPath DefaultEmptyEmitter [Niagara emitter to duplicate as the base for minimal emitters. Useful to set up default state. If empty, a truly empty emitter will be used.]`
- `FSoftObjectPath DefaultFunctionScript [Niagara script to duplicate as the base of all new script assets created.]`
- `FSoftObjectPath DefaultMeshRendererMesh [Default mesh to use with new mesh renderers.]`
- `FSoftObjectPath DefaultModuleScript [Niagara script to duplicate as the base of all new script assets created.]`
- `FLinearColor DefaultNoteColor []`
- `FSoftObjectPath DefaultRibbonRendererMaterial [Default material to use with new ribbon renderers.]`
- `FSoftObjectPath DefaultScript [Niagara script to duplicate as the base of all new script assets created.]`
- `FSoftObjectPath DefaultSpriteRendererMaterial [Default material to use with new sprite renderers.]`
- `TArray<TSoftObjectPtr<UNiagaraValidationRuleSet>> DefaultValidationRuleSets [Validation rules applied to all Niagara systems.]`
- `ENiagaraAddDefaultsTrackMode DefaultsSequencerSubtracks []`
- `FSoftObjectPath EmitterAssetWizardConfiguration [The configuration used in the Niagara Asset Wizard when creating an new Niagara Emitter or adding an emitter to a system.]`
- `TArray<FNiagaraSpawnShortcut> GraphCreationShortcuts [Shortcut key bindings that if held down while doing a mouse click, will spawn the specified type of Niagara node.]`
- `int LowResolutionNodeMaxNameChars [The max number of chars before names on the low resolution nodes are truncated.]`
- `TArray<float32> PlaybackSpeeds [Speeds used for slowing down and speeding up the playback speeds]`
- `ENiagaraCategoryExpandState RendererCategoryExpandState []`
- `FSoftObjectPath RequiredSystemUpdateScript [Niagara script which is required in the system update script to control system state.]`
- `EGraphZoomLimitHandling ScriptGraphZoomLimitHandling []`
- `FSoftObjectPath SystemAssetWizardConfiguration [The configuration used in the Niagara Asset Wizard when creating a new Niagara System.]`
- `FVector2f TooltipPreviewMovieSize [The size of the movie previews used in tooltips.]`
- `bool bAlwaysZoomToFitSystemGraph [If true then the system editor will zoom to fit all emitters when opening an asset.]`
- `bool bAutoCompile [Whether or not auto-compile is enabled in the editors.]`
- `bool bAutoPlay [Whether or not simulations should start playing automatically when the emitter or system editor is opened, or when the data is changed in the editor.]`
- `bool bDisplayAdvancedParameterPanelCategories [Whether or not to display advanced categories for the parameter panel.]`
- `bool bDisplayAffectedAssetStats [If true, then the emitter and script editors will show an info message how many downstream asset are affected by a change. Gathering this information for large asset graphs can delay the opening of the asset editors a bit.]`
- `bool bDisplayPreviewMoviesInTooltips [Whether we allow using previews in the editor.]`
- `bool bExpandModuleNotesByDefault [Module Notes that were defined in a Module Script will expand by default, if true. Consider setting this to false if you are familiar with Niagara and don't need module notes.]`
- `bool bResetDependentSystemsWhenEditingEmitters [Whether or not to reset all components that include the system currently being reset.]`
- `bool bResetSimulationOnChange [Whether or not the simulation should reset when a value on the emitter or system is changed.]`
- `bool bResimulateOnChangeWhilePaused [Whether or not to rerun the simulation to the current time when making modifications while paused.]`
- `bool bSimplifyStackNodesAtLowResolution [If true then emitter and system nodes will show a simplified representation on low zoom levels. This improves performance and readablity when zoomed out of the system overview graph.]`
- `bool bUpdateStackValuesOnCommitOnly [This affects numeric inputs for modules. When set to false, the inputs update the simulation while typing. When set to true, the simulation is only updated after submitting the change by pressing Enter.]`

---

