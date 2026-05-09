### UTextBlock


A simple static text widget.

* No Children
* Text

**属性**:

- `FSlateColor ColorAndOpacity [The color of the text]`
- `FSlateFontInfo Font [The font to render the text with]`
- `float32 MinDesiredWidth [The minimum desired size for the text]`
- `FLinearColor ShadowColorAndOpacity [The color of the shadow]`
- `FVector2D ShadowOffset [The direction the shadow is cast]`
- `FSlateBrush StrikeBrush [The brush to strike through text with]`
- `ETextOverflowPolicy TextOverflowPolicy [Sets what happens to text that is clipped and doesn't fit within the clip rect for this widget]`
- `ETextTransformPolicy TextTransformPolicy [The text transformation policy to apply to this text block.]`
- `bool bSimpleTextMode [If this is enabled, text shaping, wrapping, justification are disabled in favor of much faster text layout and measurement.
This feature is only suitable for "simple" text (ie, text containing only numbers or basic ASCII) as it disables the complex text rendering support required for certain languages (such as Arabic and Thai).
It is significantly faster for text that can take advantage of it (particularly if that text changes frequently), but shouldn't be used for localized user-facing text.]`
- `bool bWrapWithInvalidationPanel [If true, it will automatically wrap this text widget with an invalidation panel]`


**方法**:

- `UMaterialInstanceDynamic GetDynamicFontMaterial()`
- `UMaterialInstanceDynamic GetDynamicOutlineMaterial()`
- `FText GetText() const`  
  Gets the widget text
@return The widget text
- `SetAutoWrapText(bool InAutoTextWrap)`  
  Set the auto wrap for this text block.

@param InAutoTextWrap to turn wrap on or off.
- `SetColorAndOpacity(FSlateColor InColorAndOpacity)`  
  Sets the color and opacity of the text in this text block

@param InColorAndOpacity             The new text color and opacity
- `SetFont(FSlateFontInfo InFontInfo)`  
  Dynamically set the font info for this text block

@param InFontInfo The new font info
- `SetFontMaterial(UMaterialInterface InMaterial)`
- `SetFontOutlineMaterial(UMaterialInterface InMaterial)`
- `SetMinDesiredWidth(float32 InMinDesiredWidth)`  
  Set the minimum desired width for this text block

@param InMinDesiredWidth new minimum desired width
- `SetOpacity(float32 InOpacity)`  
  Sets the opacity of the text in this text block

@param InOpacity              The new text opacity
- `SetShadowColorAndOpacity(FLinearColor InShadowColorAndOpacity)`  
  Sets the color and opacity of the text drop shadow
Note: if opacity is zero no shadow will be drawn

@param InShadowColorAndOpacity               The new drop shadow color and opacity
- `SetShadowOffset(FVector2D InShadowOffset)`  
  Sets the offset that the text drop shadow should be drawn at

@param InShadowOffset                The new offset
- `SetStrikeBrush(FSlateBrush InStrikeBrush)`  
  Dynamically set the strike brush for this text block

@param InStrikeBrush The new brush to use to strike through text
- `SetText(FText InText)`  
  Directly sets the widget text.
Warning: This will wipe any binding created for the Text property!
@param InText The text to assign to the widget
- `SetTextOverflowPolicy(ETextOverflowPolicy InOverflowPolicy)`  
  Set the text overflow policy for this text block.

@param InOverflowPolicy the new text overflow policy.
- `SetTextTransformPolicy(ETextTransformPolicy InTransformPolicy)`  
  Set the text transformation policy for this text block.

@param InTransformPolicy the new text transformation policy.

---

