### UModelingToolsModeCustomizationSettings


**属性**:

- `TArray<FModelingModeAssetCollectionSet> BrushAlphaSets [A Brush Alpha Set is a named list of Content Browser Collections, which will be shown as a separate tab in
the Texture Asset Picker used in various Modeling Mode Tools when selecting a Brush Alpha (eg in Sculpting)]`
- `FLinearColor GeometrySelectedColor [Custom color for when geometry is a part of the current selection when using Mesh Element Selection]`
- `FLinearColor HoverOverSelectedColor [Custom color hovering over selected geometry in Mesh Element Selection]`
- `FLinearColor HoverOverUnselectedColor [Custom color hovering over unselected geometry in Mesh Element Selection]`
- `TArray<FModelingModeCustomSectionColor> SectionColors [Custom Section Header Colors for listed Sections in the Modeling Mode Tool Palette]`
- `TArray<FModelingModeCustomToolColor> ToolColors [Custom Tool Colors for listed Tools in the Modeling Mode Tool Palette.

Format:
SectionName        (Specifies a default color for all tools in the section.)
SectionName.ToolName        (Specifies an override color for a specific tool in the given section.)]`
- `TArray<FString> ToolSectionOrder [Add the names of Modeling Mode Tool Palette Sections to have them appear at the top of the Tool Palette, in the order listed below.]`
- `FLinearColor UnselectedColor [Custom color for when geometry is not a part of current selection when using Mesh Element Selection]`
- `bool bAlwaysShowToolButtons [If true, Tool buttons will always be shown when in a Tool. By default they will be hidden.]`
- `bool bShowCategoryButtonLabels [If true, the category labels will be shown on the toolbar buttons, else they will be hidden]`
- `bool bUseLegacyModelingPalette [Toggle between the Legacy Modeling Mode Palette and the new UI (requires exiting and re-entering the Mode)]`

---

