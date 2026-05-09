### UBackgroundBlur


A background blur is a container widget that can contain one child widget, providing an opportunity
to surround it with adjustable padding and apply a post-process Gaussian blur to all content beneath the widget.

* Single Child
* Blur Effect

**属性**:

- `int BlurRadius [This is the number of pixels which will be weighted in each direction from any given pixel when computing the blur
A larger value is more costly but allows for stronger blurs.]`
- `float32 BlurStrength [How blurry the background is.  Larger numbers mean more blurry but will result in larger runtime cost on the GPU.]`
- `FVector4 CornerRadius [Radius in Slate Units applied to the blur widget at each corner. X = Top Left, Y = Top Right, Z = Bottom Right, W = Bottom Left]`
- `EHorizontalAlignment HorizontalAlignment [The alignment of the content horizontally.]`
- `FSlateBrush LowQualityFallbackBrush [An image to draw instead of applying a blur when low quality override mode is enabled.
You can enable low quality mode for background blurs by setting the cvar Slate.ForceBackgroundBlurLowQualityOverride to 1.
This is usually done in the project's scalability settings]`
- `FMargin Padding [The padding area between the slot and the content it contains.]`
- `EVerticalAlignment VerticalAlignment [The alignment of the content vertically.]`
- `bool bApplyAlphaToBlur [True to modulate the strength of the blur based on the widget alpha.]`


**方法**:

- `SetApplyAlphaToBlur(bool bInApplyAlphaToBlur)`
- `SetBlurRadius(int InBlurRadius)`
- `SetBlurStrength(float32 InStrength)`
- `SetCornerRadius(FVector4 InCornerRadius)`
- `SetHorizontalAlignment(EHorizontalAlignment InHorizontalAlignment)`
- `SetLowQualityFallbackBrush(FSlateBrush InBrush)`
- `SetPadding(FMargin InPadding)`
- `SetVerticalAlignment(EVerticalAlignment InVerticalAlignment)`

---

