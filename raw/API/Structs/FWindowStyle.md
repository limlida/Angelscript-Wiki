### FWindowStyle


Represents the appearance of an SWindow

**属性**:

- `FSlateBrush ActiveTitleBrush [Brush used to draw the window title area when the window is active]`
- `FSlateBrush BackgroundBrush [Brush used to draw the window background]`
- `FSlateColor BackgroundColor [Color used to draw the window background]`
- `FSlateBrush BorderBrush [Brush used to draw the window border]`
- `FSlateColor BorderColor [Color used to draw the window border]`
- `FMargin BorderPadding [Window corner rounding.  If this value is <= 0 no rounding will occur.   Used for regular, non-maximized windows only (not tool-tips or decorators.)]`
- `FSlateBrush ChildBackgroundBrush [Brush used to draw the background of child windows]`
- `FButtonStyle CloseButtonStyle [Style used to draw the window close button]`
- `FButtonStyle EnterFullscreenButtonStyle [Style used to draw the enter fullscreen button]`
- `FButtonStyle ExitFullscreenButtonStyle [Style used to draw the exit fullscreen button]`
- `FSlateBrush FlashTitleBrush [Brush used to draw the window title area when the window is flashing]`
- `FSlateBrush InactiveTitleBrush [Brush used to draw the window title area when the window is inactive]`
- `FButtonStyle MaximizeButtonStyle [Style used to draw the window maximize button]`
- `FButtonStyle MinimizeButtonStyle [Style used to draw the window minimize button]`
- `FSlateBrush OutlineBrush [Brush used to draw the window outline]`
- `FSlateColor OutlineColor [Color used to draw the window outline]`
- `FButtonStyle RestoreButtonStyle [Style used to draw the window restore button]`
- `FTextBlockStyle TitleTextStyle [Style used to draw the window title text]`
- `int WindowCornerRadius [Window corner rounding.  If this value is <= 0 no rounding will occur.   Used for regular, non-maximized windows only (not tool-tips or decorators.)]`


**方法**:

- `FWindowStyle& opAssign(FWindowStyle Other)`

---

