### FTweenSliderStyle


Style for STweenSlider

**属性**:

- `FSlateBrush BarBrush [Brush of the bar on which the points are drawn. The slider brush is drawn over it. Usually the bar's brush is smaller than the button.]`
- `FVector2D BarDimensions [The dimensions of the slider.]`
- `FTweenPointStyle EndPoint [Brushes for points on the left or right end.]`
- `FSlateColor HoveredIconTint [Tint for the icon when hovered]`
- `FSlateBrush HoveredSliderButton [Brush when hovered]`
- `FMargin IconPadding [Padding of the icon placed in the slider button]`
- `FTweenPointStyle MediumPoint [When overshoot mode is enabled, the bars at 100% and -100%.]`
- `FSlateColor NormalIconTint [Tint for the icon when the button is not hovered or pressed]`
- `FSlateBrush NormalSliderButton [Brush when the button is not hovered or pressed]`
- `FSlateBrush PassedValueBackground [Brush drawn from center to slider when moving the slider (should be a little transparent, drawn over points but under the slider).]`
- `FSlateColor PressedIconTint [Tint for the icon when pressed]`
- `FSlateBrush PressedSliderButton [Brush when pressed]`
- `FTweenPointStyle SmallPoint [Brushes for the small points on the bar.]`


**方法**:

- `FTweenSliderStyle& opAssign(FTweenSliderStyle Other)`

---

