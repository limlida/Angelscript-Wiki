### UMetasoundEditorSettings


**属性**:

- `FMetasoundAnalyzerAnimationSettings AnalyzerAnimationSettings [Settings for visualizing analyzed MetaSound connections]`
- `FLinearColor AssetReferenceNodeTitleColor [Title color for references to MetaSound assets]`
- `FLinearColor AudioPinTypeColor [Audio pin type color]`
- `FName AuditionPage [Name of the page to audition in editor. If unimplemented on the auditioned MetaSound, uses order of cooked pages
(see project 'MetaSound' Settings --> 'Page Settings' array for order) falling back to lower index-ordered page implemented
in MetaSound asset.]`
- `EAuditionPageMode AuditionPageMode [Currently set page audition mode. Set by the MetaSound Asset Editor.]`
- `FName AuditionPlatform [Name of platform to mock when previewing playback. This will limit playback
to fallback only to paged data that are cooked for the given platform.
(see project 'MetaSound' Settings --> 'Page Settings' array for order)
If set to 'Editor', ignores cook settings and allows fallback to all page.]`
- `FLinearColor BooleanPinTypeColor [Boolean pin type color]`
- `FSoftObjectPath ButtonStyleOverride [Override the Button Style used in the Metasound Editor.]`
- `FString DefaultAuthor [Default author title to use when authoring a new
MetaSound.  If empty, uses machine name by default.]`
- `EMetasoundMemberDefaultWidget DefaultInputWidgetType [Widget type to show on input nodes by default]`
- `FLinearColor DefaultPinTypeColor [Default pin type color]`
- `FLinearColor FloatPinTypeColor [Floating-point pin type color]`
- `FLinearColor InputNodeTitleColor [Input node title color]`
- `FLinearColor IntPinTypeColor [Integer pin type color]`
- `FSoftObjectPath KnobStyleOverride [Override the Knob Style used in the Metasound Editor.]`
- `FLoudnessMeterRackUnitSettings LoudnessMeterSettings [Settings for metasound output loudness meter widget]`
- `FSoftObjectPath MeterStyleOverride [Override the Meter Style used in the Metasound Editor.]`
- `FLinearColor NativeNodeTitleColor [Native node class title color]`
- `FLinearColor ObjectPinTypeColor [Object pin type color]`
- `FLinearColor OutputNodeTitleColor [Output node title color]`
- `FSoftObjectPath SliderStyleOverride [Override the Slider Style used in the Metasound Editor.]`
- `FSpectrogramRackUnitSettings SpectrogramSettings [Settings for metasound output spectrogram widget]`
- `FSpectrumAnalyzerRackUnitSettings SpectrumAnalyzerSettings [Settings for metasound output spectrum analyzer widget]`
- `FLinearColor StringPinTypeColor [String pin type color]`
- `FLinearColor TimePinTypeColor [Time pin type color]`
- `FLinearColor TriggerPinTypeColor [Trigger pin type color]`
- `FLinearColor VariableNodeTitleColor [Variable node title color]`
- `FLinearColor WaveTablePinTypeColor [WaveTable pin type color]`
- `bool bApplyAuditionSettingsInPIE [If true, uses editor page/platform audition settings in PIE. If false, uses project's defined values
(see project 'MetaSound' setting 'TargetPage', which can be manipulated via code/Blueprint.)]`
- `bool bPinMetaSoundPatchInAssetMenu [Whether to pin the MetaSound Patch asset type when creating new assets.
Requires editor restart for change to take effect.]`
- `bool bPinMetaSoundSourceInAssetMenu [Whether to pin the MetaSound Source asset type when creating new assets.
Requires editor restart for change to take effect.]`
- `bool bUseAudioMaterialWidgets [Whether the AudioMaterialWidgets are used when possible in Metasound Editor]`

---

