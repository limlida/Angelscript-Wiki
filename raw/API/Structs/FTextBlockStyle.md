### FTextBlockStyle


Represents the appearance of an STextBlock

**属性**:

- `FSlateColor ColorAndOpacity [The color and opacity of this text]`
- `FSlateFontInfo Font [Font family and size to be used when displaying this text.]`
- `FSlateColor HighlightColor [The color of highlighted text]`
- `FSlateBrush HighlightShape [The shape of highlighted text]`
- `ETextOverflowPolicy OverflowPolicy [Determines what happens to text that is clipped and doesn't fit within the clip rect of a text widget]`
- `FSlateColor SelectedBackgroundColor [The background color of selected text]`
- `FLinearColor ShadowColorAndOpacity [The color and opacity of the shadow]`
- `FVector2f ShadowOffset [How much should the shadow be offset? An offset of 0 implies no shadow.]`
- `FSlateBrush StrikeBrush [The brush used to draw an strike through the text (if any)]`
- `ETextTransformPolicy TransformPolicy [The Text Transform Policy (defaults to None)]`
- `FSlateBrush UnderlineBrush [The brush used to draw an underline under the text (if any)]`


**方法**:

- `FTextBlockStyle& opAssign(FTextBlockStyle Other)`

---

