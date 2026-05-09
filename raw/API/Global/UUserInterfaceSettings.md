### UUserInterfaceSettings


User Interface settings that control Slate and UMG.

**属性**:

- `float32 ApplicationScale [An optional application scale to apply on top of the custom scaling rules.  So if you want to expose a
property in your game title, you can modify this underlying value to scale the entire UI.]`
- `uint CustomFontDPI [Controls the relationship between UMG font size and pixel height.]`
- `FSoftClassPath CustomScalingRuleClass [Set DPI Scale Rule to Custom, and this class will be used instead of any of the built-in rules.]`
- `FIntPoint DesignScreenSize [Used only with ScaleToFit scaling rule. Defines native resolution for which were source UI textures created. DPI scaling will be 1.0 at this screen resolution.]`
- `EFontDPI FontDPIPreset [Controls the relationship between UMG font size and pixel height.]`
- `TMap<EMouseCursor,FHardwareCursorReference> HardwareCursors []`
- `ERenderFocusRule RenderFocusRule [Rule to determine if we should render the Focus Brush for widgets that have user focus.]`
- `TMap<EMouseCursor,FSoftClassPath> SoftwareCursors []`
- `FRuntimeFloatCurve UIScaleCurve [Controls how the UI is scaled at different resolutions based on the DPI Scale Rule]`
- `EUIScalingRule UIScaleRule [The rule used when trying to decide what scale to apply.]`
- `bool bAllowHighDPIInGameMode [If true, game window on desktop platforms will be created with high-DPI awareness enabled.
Recommended to be enabled only if the game's UI allows users to modify 3D resolution scaling.]`
- `bool bAuthorizeAutomaticWidgetVariableCreation [Setting to authorize or not automatic variable creation.
If true, variables will be created automatically, if the type created allows it. Drawback: it's easier to have a bad data architecture because various blueprint graph will have access to many variables.
If false, variables are never created automatically, and you have to create them manually on a case by case basis.]`
- `bool bEnableDistanceFieldFontRasterization []`
- `bool bLoadWidgetsOnDedicatedServer [If false, widget references will be stripped during cook for server builds and not loaded at runtime.]`
- `bool bUseCustomFontDPI [To set your own custom value, check this box, then enter the value in the text box.]`

---

