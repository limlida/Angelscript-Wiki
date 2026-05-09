### UTextLayoutWidget


Base class for all widgets that use a text layout.
Contains the common options that should be exposed for the underlying Slate widget.

**属性**:

- `bool ApplyLineHeightToBottomLine [Whether to leave extra space below the last line due to line height.]`
- `bool AutoWrapText [True if we're wrapping text automatically based on the computed horizontal space for this widget.]`
- `ETextJustify Justification [How the text should be aligned with the margin.]`
- `float32 LineHeightPercentage [The amount to scale each lines height by.]`
- `FMargin Margin [The amount of blank space left around the edges of text area.]`
- `FShapedTextOptions ShapedTextOptions [Controls how the text within this widget should be shaped.]`
- `float32 WrapTextAt [Whether text wraps onto a new line when it's length exceeds this width; if this value is zero or negative, no wrapping occurs.]`
- `ETextWrappingPolicy WrappingPolicy [The wrapping policy to use.]`


**方法**:

- `SetJustification(ETextJustify InJustification)`

---

