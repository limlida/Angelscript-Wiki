### UCommonRichTextBlock


Text block that supports custom scaling for mobile platforms, with option to only show icons if space is sparse.

**属性**:

- `TSubclassOf<UCommonTextStyle> DefaultTextStyleOverrideClass []`
- `ERichTextInlineIconDisplayMode InlineIconDisplayMode []`
- `float32 MobileTextBlockScale [Mobile font size multiplier. Activated by default on mobile. See CVar Mobile_PreviewFontSize]`
- `EOrientation ScrollOrientation [The orientation the text will scroll if out of bounds.]`
- `TSubclassOf<UCommonTextScrollStyle> ScrollStyle [References the scroll style asset to use, no reference disables scrolling]`
- `bool bAutoCollapseWithEmptyText [True to automatically collapse this rich text block when set to display an empty string. Conversely, will be SelfHitTestInvisible when showing a non-empty string.]`
- `bool bIsScrollingEnabled [If scrolling is enabled/disabled initially, this can be updated in blueprint]`
- `bool bTintInlineIcon [Toggle it on if the text color should also tint the inline icons.]`


**方法**:

- `SetScrollingEnabled(bool bInIsScrollingEnabled)`
- `SetStyle(TSubclassOf<UCommonTextStyle> InStyle)`

---

