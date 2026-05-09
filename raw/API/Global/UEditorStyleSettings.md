### UEditorStyleSettings


Implements the Editor style settings.

**属性**:

- `FLinearColor AdditionalSelectionColors [Additional colors used for selections with extra meaning]`
- `float32 ApplicationScale [Scales the entire editor interface up or down.]`
- `EAssetEditorOpenLocation AssetEditorOpenLocation [New asset editor tabs will open at the specified location.]`
- `float32 AssetPickerSizeScale [Scale the size of the global asset picker]`
- `FLinearColor CenterColor [The color used to represent the center lines in the grid]`
- `EColorVisionDeficiency ColorVisionDeficiencyPreviewType [Applies a color vision deficiency filter to the entire editor]`
- `int ColorVisionDeficiencySeverity []`
- `FLinearColor EditorWindowBackgroundColor [The color used to tint the editor window backgrounds]`
- `FSlateBrush GraphBackgroundBrush [Optional brush used for graph backgrounds]`
- `uint GridSnapSize [The custom grid snap size to use]`
- `uint MenuSearchFieldVisibilityThreshold [Menus longer than this threshold show their search field by default. Use 0 to always show, or a high number to always hide. When a searchable menu is open but the field is hidden, you can still start a search by typing.]`
- `FLinearColor RegularColor [The color used to represent regular grid lines]`
- `FLinearColor RuleColor [The color used to represent ruler lines in the grid]`
- `FLinearColor SelectionColor [The color used to represent selection]`
- `FLinearColor ViewportToolOverlayColor [The color used for overlay tools inside of the viewport, like the measure tool]`
- `FLinearColor XAxisColor [The color used for the X axis]`
- `FLinearColor YAxisColor [The color used for the Y axis]`
- `FLinearColor ZAxisColor [The color used for the Z axis]`
- `bool bAntiAliasGrid [Whether grid lines should be anti-aliased]`
- `bool bColorVisionDeficiencyCorrection [Shifts the color spectrum to the visible range based on the current ColorVisionDeficiencyPreviewType]`
- `bool bColorVisionDeficiencyCorrectionPreviewWithDeficiency [If you're correcting the color deficiency, you can use this to visualize what the correction looks like with the deficiency.]`
- `bool bEnableColorizedEditorTabs [Should editor tabs be colorized according to the asset type]`
- `bool bEnableHighDPIAwareness [Enables high dpi support in the editor which will adjust the scale of elements in the UI to account for high DPI monitors
The editor must be restarted for changes to take effect.]`
- `bool bEnableMiddleEllipsis [If true MiddleEllipsis will be used by certain editor widget (ex: Tab Title/Outliner Actor Names), otherwise the default policy will be used instead]`
- `bool bEnableUserEditorLayoutManagement [Whether to enable the Editor UI Layout configuration tools for the user.
If disabled, the "Save Layout As" and "Remove Layout" menus will be removed, as well as the "Import Layout..." sub-menu.]`
- `bool bExpandConfigurationMenus [When enabled, the Editor Preferences and Project Settings menu items in the main menu will be expanded with sub-menus for each settings section.]`
- `bool bShowFriendlyNames [When enabled, the C++ names for properties and functions will be displayed in a format that is easier to read]`
- `bool bShowNativeComponentNames [When enabled, the underlying Names for Components inherited from C++ will be shown alongside their UProperty Variable name]`
- `bool bUseGrid [If true the material editor and blueprint editor will show a grid on it's background.]`
- `bool bUseSmallToolBarIcons [Whether to use small toolbar icons without labels or not.]`

---

