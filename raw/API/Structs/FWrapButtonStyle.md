### FWrapButtonStyle


**属性**:

- `TOptional<FComboButtonStyle> ComboButtonStyle [The styling of the combo button that opens the wrapping menu]`
- `FSlateBrush ExpandBrush [The brush used for the expand arrow when the toolbar runs out of room and needs to display toolbar items in a menu]`
- `FMargin Padding [The padding around the wrap button]`
- `TOptional<FSlateBrush> SeparatorBrush [The appearance of the separator]`
- `TOptional<FMargin> SeparatorPadding [Any padding around the separator]`
- `TOptional<float32> SeparatorThickness [How wide/tall the separator should be]`
- `int WrapButtonIndex [Where in the toolbar the wrap button should appear. e.g. 0 for the left side, -1 for the right side.]`
- `bool bHasDownArrow [Whether the combo box includes a down arrow]`
- `bool bIncludeSeparator [Whether a separator should appear adjacent to the combo button]`


**方法**:

- `FWrapButtonStyle& opAssign(FWrapButtonStyle Other)`

---

