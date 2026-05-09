### FProgressBarStyle


Represents the appearance of an SProgressBar

**属性**:

- `FSlateBrush BackgroundImage [Background image to use for the progress bar]`
- `bool EnableFillAnimation [Enables a simple animation on the fill image to give the appearance that progress has not stalled. Disable this if you have a custom material which animates itself.
This requires a pattern in your material or texture to give the appearance of movement.  A solid color will show no movement.]`
- `FSlateBrush FillImage [Foreground image to use for the progress bar]`
- `FSlateBrush MarqueeImage [Image to use for marquee mode]`


**方法**:

- `FProgressBarStyle& opAssign(FProgressBarStyle Other)`

---

