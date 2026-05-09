### FToolBarStyle


Represents the appearance of a toolbar

**属性**:

- `FSlateBrush BackgroundBrush [The brush used for the background of the toolbar]`
- `FMargin BackgroundPadding`
- `FSlateBrush BlockHovered [Hovered brush for an entire block]`
- `FMargin BlockPadding`
- `float32 ButtonContentFillWidth`
- `float32 ButtonContentMaxWidth`
- `FMargin ButtonPadding`
- `FButtonStyle ButtonStyle`
- `float32 ButtonTextMaxWidth`
- `float32 ButtonTextMinWidth`
- `FMargin CheckBoxPadding`
- `FMargin ComboButtonPadding`
- `FComboButtonStyle ComboButtonStyle`
- `EHorizontalAlignment ComboContentHorizontalAlignment`
- `float32 ComboContentMaxWidth [Max width that label text block slot in combo buttons should have. 0 means no max.]`
- `float32 ComboContentMinWidth [Min width that label text block slot in combo buttons should have.]`
- `FEditableTextBoxStyle EditableTextStyle`
- `FMargin IconPadding`
- `FMargin IconPaddingWithCollapsedLabel`
- `FMargin IconPaddingWithVisibleLabel`
- `FVector2f IconSize`
- `FMargin IndentedBlockPadding`
- `FMargin LabelPadding`
- `FTextBlockStyle LabelStyle`
- `int NumColumns`
- `float32 RaisedChildrenRightPadding`
- `FSlateBrush SeparatorBrush`
- `FMargin SeparatorPadding`
- `float32 SeparatorThickness`
- `FButtonStyle SettingsButtonStyle`
- `FComboButtonStyle SettingsComboButton`
- `FCheckBoxStyle SettingsToggleButton`
- `FCheckBoxStyle ToggleButton`
- `float32 UniformBlockHeight`
- `float32 UniformBlockWidth`
- `TOptional<EVerticalAlignment> VerticalAlignmentOverride`
- `FWrapButtonStyle WrapButtonStyle`
- `bool bAllowWrapButton [Set to false if the wrap button should never be shown (even if entries are clipped)]`
- `bool bAllowWrappingDefault [Set to false if the toolbar should not wrap (to the next line) by default, but can be overridden per section or entry]`
- `bool bShowLabels`


**方法**:

- `FToolBarStyle& opAssign(FToolBarStyle Other)`

---

