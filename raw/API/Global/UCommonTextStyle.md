### UCommonTextStyle


* ---- All properties must be EditDefaultsOnly, BlueprintReadOnly !!! -----
* We return the CDO to blueprints, so we cannot allow any changes (blueprint doesn't support const variables)

**属性**:

- `bool ApplyLineHeightToBottomLine [Whether to leave extra space below the last line due to line height]`
- `FLinearColor Color [The color of the text]`
- `FSlateFontInfo Font [The font to apply at each size]`
- `float32 LineHeightPercentage [The amount to scale each lines height by at each size]`
- `FMargin Margin [The amount of blank space left around the edges of text area at each size]`
- `FLinearColor ShadowColor [The drop shadow color]`
- `FVector2D ShadowOffset [The offset of the drop shadow at each size]`
- `FSlateBrush StrikeBrush [The brush used to draw an strike through the text (if any)]`
- `bool bUsesDropShadow [Whether or not the style uses a drop shadow]`


**方法**:

- `bool GetApplyLineHeightToBottomLine() const`
- `GetColor(FLinearColor& OutColor) const`
- `GetFont(FSlateFontInfo& OutFont) const`
- `float32 GetLineHeightPercentage() const`
- `GetMargin(FMargin& OutMargin) const`
- `GetShadowColor(FLinearColor& OutColor) const`
- `GetShadowOffset(FVector2D& OutShadowOffset) const`
- `GetStrikeBrush(FSlateBrush& OutStrikeBrush) const`

---

