### UCommonButtonStyle


---- All properties must be EditDefaultsOnly, BlueprintReadOnly !!! -----
*       we return the CDO to blueprints, so we cannot allow any changes (blueprint doesn't support const variables)

**属性**:

- `FMargin ButtonPadding [The button content padding to apply for each size]`
- `FSlateSound ClickedSlateSound [The sound to play when the button is clicked]`
- `FMargin CustomPadding [The custom padding of the button to use for each size]`
- `FSlateBrush Disabled [The disabled brush to apply to each size of this button]`
- `TSubclassOf<UCommonTextStyle> DisabledTextStyle [The text style to use when disabled]`
- `FSlateSound HoveredSlateSound [The sound to play when the button is hovered]`
- `FCommonButtonStyleOptionalSlateSound LockedClickedSlateSound [The sound to play when the button is clicked while locked]`
- `FCommonButtonStyleOptionalSlateSound LockedHoveredSlateSound [The sound to play when the button is hovered while locked]`
- `FCommonButtonStyleOptionalSlateSound LockedPressedSlateSound [The sound to play when the button is pressed while locked]`
- `int MaxHeight [The maximum height of buttons using this style]`
- `int MaxWidth [The maximum width of buttons using this style]`
- `int MinHeight [The minimum height of buttons using this style]`
- `int MinWidth [The minimum width of buttons using this style]`
- `FSlateBrush NormalBase [The normal (un-selected) brush to apply to each size of this button]`
- `FSlateBrush NormalHovered [The normal (un-selected) brush to apply to each size of this button when hovered]`
- `TSubclassOf<UCommonTextStyle> NormalHoveredTextStyle [The text style to use when un-selected]`
- `FSlateBrush NormalPressed [The normal (un-selected) brush to apply to each size of this button when pressed]`
- `TSubclassOf<UCommonTextStyle> NormalTextStyle [The text style to use when un-selected]`
- `FSlateSound PressedSlateSound [The sound to play when the button is pressed]`
- `FSlateBrush SelectedBase [The selected brush to apply to each size of this button]`
- `FCommonButtonStyleOptionalSlateSound SelectedClickedSlateSound [The sound to play when the button is clicked while selected]`
- `FSlateBrush SelectedHovered [The selected brush to apply to each size of this button when hovered]`
- `FCommonButtonStyleOptionalSlateSound SelectedHoveredSlateSound [The sound to play when the button is hovered while selected]`
- `TSubclassOf<UCommonTextStyle> SelectedHoveredTextStyle [The text style to use when un-selected]`
- `FSlateBrush SelectedPressed [The selected brush to apply to each size of this button when pressed]`
- `FCommonButtonStyleOptionalSlateSound SelectedPressedSlateSound [The sound to play when the button is pressed while selected]`
- `TSubclassOf<UCommonTextStyle> SelectedTextStyle [The text style to use when selected]`
- `FSlateBrush SingleMaterialBrush [The normal (un-selected) brush to apply to each size of this button]`
- `bool bSingleMaterial [Whether or not the style uses a drop shadow]`


**方法**:

- `GetButtonPadding(FMargin& OutButtonPadding) const`
- `GetCustomPadding(FMargin& OutCustomPadding) const`
- `GetDisabledBrush(FSlateBrush& Brush) const`
- `UCommonTextStyle GetDisabledTextStyle() const`
- `GetMaterialBrush(FSlateBrush& Brush) const`
- `GetNormalBaseBrush(FSlateBrush& Brush) const`
- `GetNormalHoveredBrush(FSlateBrush& Brush) const`
- `UCommonTextStyle GetNormalHoveredTextStyle() const`
- `GetNormalPressedBrush(FSlateBrush& Brush) const`
- `UCommonTextStyle GetNormalTextStyle() const`
- `GetSelectedBaseBrush(FSlateBrush& Brush) const`
- `GetSelectedHoveredBrush(FSlateBrush& Brush) const`
- `UCommonTextStyle GetSelectedHoveredTextStyle() const`
- `GetSelectedPressedBrush(FSlateBrush& Brush) const`
- `UCommonTextStyle GetSelectedTextStyle() const`

---

