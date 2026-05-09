### FActionButtonStyle


Represents the appearance of an SActionButton

**属性**:

- `FName ActionButtonType [The type to use for our SActionButton.]`
- `TOptional<FMargin> ButtonContentPadding [Spacing between button's border and the content. Default uses ButtonStyle.]`
- `FButtonStyle ButtonStyle [The style to use for our SButton.]`
- `TOptional<FMargin> ComboButtonContentPadding [Spacing between button's border and the content. Default uses ComboButtonStyle.]`
- `FComboButtonStyle ComboButtonStyle [The style to use for our SComboButton.]`
- `EHorizontalAlignment HorizontalContentAlignment [Horizontal Content alignment within the button.]`
- `TOptional<FSlateBrush> IconBrush [Icon Brush to use.]`
- `TOptional<FButtonStyle> IconButtonStyle [The style to use for our SButton when an icon is present. ButtonStyle used if not specified.]`
- `TOptional<FSlateColor> IconColorAndOpacity [Icon Color/Tint, defaults is determined by ActionButtonType.]`
- `TOptional<FMargin> IconNormalPadding [If set and the button's icon is non-null, overrides the button style's additional spacing between the button's border and the content when not pressed.]`
- `TOptional<FMargin> IconPressedPadding [If set and the button's icon is non-null, overrides the button style's additional spacing between the button's border and the content when pressed.]`
- `FTextBlockStyle TextBlockStyle [The style to use for the button Text.]`
- `bool bHasDownArrow [Whether to show a down arrow for the combo button]`


**方法**:

- `FActionButtonStyle& opAssign(FActionButtonStyle Other)`

---

