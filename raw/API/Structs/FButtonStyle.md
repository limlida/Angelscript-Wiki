### FButtonStyle


Represents the appearance of an SButton

**属性**:

- `FSlateSound ClickedSlateSound [The sound the button should play when clicked]`
- `FSlateBrush Disabled [Button appearance when disabled, by default this is set to an invalid resource when that is the case default disabled drawing is used.]`
- `FSlateColor DisabledForeground [Foreground Color when disabled]`
- `FSlateBrush Hovered [Button appearance when hovered]`
- `FSlateColor HoveredForeground [Foreground Color when hovered]`
- `FSlateSound HoveredSlateSound [The sound the button should play when initially hovered over]`
- `FSlateBrush Normal [Button appearance when the button is not hovered or pressed]`
- `FSlateColor NormalForeground [Foreground Color when the button is not hovered or pressed]`
- `FMargin NormalPadding [Padding that accounts for the border in the button's background image.
When this is applied, the content of the button should appear flush
with the button's border. Use this padding when the button is not pressed.]`
- `FSlateBrush Pressed [Button appearance when pressed]`
- `FSlateColor PressedForeground [Foreground Color when pressed]`
- `FMargin PressedPadding [Same as NormalPadding but used when the button is pressed. Allows for moving the content to match
any "movement" in the button's border image.]`
- `FSlateSound PressedSlateSound [The sound the button should play when pressed]`


**方法**:

- `FButtonStyle& opAssign(FButtonStyle Other)`

---

