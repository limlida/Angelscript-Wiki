### UProgressBar


The progress bar widget is a simple bar that fills up that can be restyled to fit any number of uses.

* No Children

**属性**:

- `EProgressBarFillStyle BarFillStyle [Defines the visual style of the progress bar fill - scale or mask]`
- `EProgressBarFillType BarFillType [Defines the direction in which the progress bar fills]`
- `FVector2D BorderPadding`
- `FLinearColor FillColorAndOpacity [Fill Color and Opacity]`
- `float32 Percent [Used to determine the fill position of the progress bar ranging 0..1]`
- `FProgressBarStyle WidgetStyle [The progress bar style]`
- `bool bIsMarquee [Sets the progress bar to show as a marquee.]`


**方法**:

- `SetFillColorAndOpacity(FLinearColor InColor)`  
  Sets the fill color of the progress bar.
- `SetIsMarquee(bool InbIsMarquee)`  
  Sets the progress bar to show as a marquee.
- `SetPercent(float32 InPercent)`  
  Sets the current value of the ProgressBar.

---

