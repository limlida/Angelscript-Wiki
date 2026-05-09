### URichTextBlock


The rich text block

* Fancy Text
* No Children

**属性**:

- `TArray<TSubclassOf<URichTextBlockDecorator>> DecoratorClasses []`
- `FTextBlockStyle DefaultTextStyleOverride [Text style to apply by default to text in this block]`
- `float32 MinDesiredWidth [The minimum desired size for the text]`
- `ETextOverflowPolicy TextOverflowPolicy [Sets what happens to text that is clipped and doesn't fit within the clip rect for this widget]`
- `ETextTransformPolicy TextTransformPolicy [The text transformation policy to apply to this text block]`
- `bool bOverrideDefaultStyle [True to specify the default text style for this rich text inline, overriding any default provided in the style set table]`


**方法**:

- `ClearAllDefaultStyleOverrides()`  
  Remove all overrides made to the default text style and return to the style specified in the style set data table
- `URichTextBlockDecorator GetDecoratorByClass(TSubclassOf<URichTextBlockDecorator> DecoratorClass)`
- `UMaterialInstanceDynamic GetDefaultDynamicMaterial()`  
  Creates a dynamic material for the default font or returns it if it already
exists
- `FText GetText() const`  
  Returns widgets text.
- `UDataTable GetTextStyleSet() const`
- `RefreshTextLayout()`  
  Causes the text to reflow it's layout and re-evaluate any decorators
- `SetAutoWrapText(bool InAutoTextWrap)`  
  Set the auto wrap for this rich text block
@param InAutoTextWrap to turn wrap on or off
- `SetDecorators(TArray<TSubclassOf<URichTextBlockDecorator>> InDecoratorClasses)`  
  Replaces the existing decorators with the list provided
- `SetDefaultColorAndOpacity(FSlateColor InColorAndOpacity)`  
  Sets the color and opacity of the default text in this rich text block
@param InColorAndOpacity             The new text color and opacity
- `SetDefaultFont(FSlateFontInfo InFontInfo)`  
  Dynamically set the default font info for this rich text block
@param InFontInfo The new font info
- `SetDefaultMaterial(UMaterialInterface InMaterial)`
- `SetDefaultShadowColorAndOpacity(FLinearColor InShadowColorAndOpacity)`  
  Sets the color and opacity of the default text drop shadow
Note: if opacity is zero no shadow will be drawn
@param InShadowColorAndOpacity               The new drop shadow color and opacity
- `SetDefaultShadowOffset(FVector2D InShadowOffset)`  
  Sets the offset that the default text drop shadow should be drawn at
@param InShadowOffset                The new offset
- `SetDefaultStrikeBrush(FSlateBrush InStrikeBrush)`  
  Dynamically set the default strike brush for this rich text block
@param InStrikeBrush The new brush to use to strike through text
- `SetDefaultTextStyle(FTextBlockStyle InDefaultTextStyle)`  
  Wholesale override of the currently established default text style
@param InDefaultTextStyle The new text style to apply to all default (i.e. undecorated) text in the block
- `SetMinDesiredWidth(float32 InMinDesiredWidth)`  
  Set the minimum desired width for this rich text block
@param InMinDesiredWidth new minimum desired width
- `SetText(FText InText)`  
  Directly sets the widget text.
Warning: This will wipe any binding created for the Text property!
@param InText The text to assign to the widget
- `SetTextOverflowPolicy(ETextOverflowPolicy InOverflowPolicy)`  
  Set the text overflow policy for this text block.
@param InOverflowPolicy the new text overflow policy.
- `SetTextStyleSet(UDataTable NewTextStyleSet)`
- `SetTextTransformPolicy(ETextTransformPolicy InTransformPolicy)`  
  Set the text transformation policy for this text block.
@param InTransformPolicy the new text transformation policy.

---

