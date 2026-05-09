### UCommonTextBlock


Text block with automatic scrolling for FX / large texts, also supports a larger set of default styling, & custom mobile scaling.

**属性**:

- `EOrientation ScrollOrientation [The orientation the text will scroll if out of bounds.]`
- `TSubclassOf<UCommonTextScrollStyle> ScrollStyle [References the scroll style asset to use, no reference disables scrolling]`
- `TSubclassOf<UCommonTextStyle> Style [References the text style to use]`
- `bool bAutoCollapseWithEmptyText [True to automatically collapse this text block when set to display an empty string. Conversely, will be SelfHitTestInvisible when showing a non-empty string.]`
- `bool bIsScrollingEnabled [If scrolling is enabled/disabled initially, this can be updated in blueprint]`


**方法**:

- `FMargin GetMargin()`
- `float32 GetMobileFontSizeMultiplier() const`
- `ResetScrollState()`
- `SetApplyLineHeightToBottomLine(bool InApplyLineHeightToBottomLine)`
- `SetLineHeightPercentage(float32 InLineHeightPercentage)`
- `SetMargin(FMargin InMargin)`
- `SetMobileFontSizeMultiplier(float32 InMobileFontSizeMultiplier)`  
  Sets the new value and then applies the FontSizeMultiplier
- `SetScrollingEnabled(bool bInIsScrollingEnabled)`
- `SetScrollOrientation(EOrientation InScrollOrientation)`
- `SetStyle(TSubclassOf<UCommonTextStyle> InStyle)`
- `SetTextCase(bool bUseAllCaps)`
- `SetWrapTextWidth(int InWrapTextAt)`

---

