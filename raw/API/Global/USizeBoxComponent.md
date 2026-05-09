### USizeBoxComponent


This is a class for a Component that wraps the Owner widget with a Size Box.

**属性**:

- `float32 HeightOverride [When specified, ignore the content's desired size and report the HeightOverride as the Box's desired height.]`
- `EHorizontalAlignment HorizontalAlignment [This property is for the Widget that owns this Component. The alignment of the object horizontally.]`
- `float32 MaxAspectRatio`
- `float32 MaxDesiredHeight [When specified, will report the MaxDesiredHeight if smaller than the content's desired height.]`
- `float32 MaxDesiredWidth [When specified, will report the MaxDesiredWidth if smaller than the content's desired width.]`
- `float32 MinAspectRatio`
- `float32 MinDesiredHeight [When specified, will report the MinDesiredHeight if larger than the content's desired height.]`
- `float32 MinDesiredWidth [When specified, will report the MinDesiredWidth if larger than the content's desired width.]`
- `FMargin Padding [This property is for the Widget that owns this Component. The padding area between the slot and the content it contains.]`
- `EVerticalAlignment VerticalAlignment [This property is for the Widget that owns this Component. The alignment of the object vertically.]`
- `float32 WidthOverride [When specified, ignore the content's desired size and report the WidthOverride as the Box's desired width.]`
- `bool bOverride_HeightOverride`
- `bool bOverride_MaxAspectRatio`
- `bool bOverride_MaxDesiredHeight`
- `bool bOverride_MaxDesiredWidth`
- `bool bOverride_MinAspectRatio`
- `bool bOverride_MinDesiredHeight`
- `bool bOverride_MinDesiredWidth`
- `bool bOverride_WidthOverride`


**方法**:

- `ClearHeightOverride()`
- `ClearMaxAspectRatio()`
- `ClearMaxDesiredHeight()`
- `ClearMaxDesiredWidth()`
- `ClearMinAspectRatio()`
- `ClearMinDesiredHeight()`
- `ClearMinDesiredWidth()`
- `ClearWidthOverride()`

---

