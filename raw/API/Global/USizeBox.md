### USizeBox


A widget that allows you to specify the size it reports to have and desire.  Not all widgets report a desired size
that you actually desire.  Wrapping them in a SizeBox lets you have the Size Box force them to be a particular size.

* Single Child
* Fixed Size

**属性**:

- `float32 HeightOverride [When specified, ignore the content's desired size and report the HeightOverride as the Box's desired height.]`
- `float32 MaxAspectRatio`
- `float32 MaxDesiredHeight [When specified, will report the MaxDesiredHeight if smaller than the content's desired height.]`
- `float32 MaxDesiredWidth [When specified, will report the MaxDesiredWidth if smaller than the content's desired width.]`
- `float32 MinAspectRatio`
- `float32 MinDesiredHeight [When specified, will report the MinDesiredHeight if larger than the content's desired height.]`
- `float32 MinDesiredWidth [When specified, will report the MinDesiredWidth if larger than the content's desired width.]`
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
- `SetHeightOverride(float32 InHeightOverride)`  
  When specified, ignore the content's desired size and report the HeightOverride as the Box's desired height.
- `SetMaxAspectRatio(float32 InMaxAspectRatio)`
- `SetMaxDesiredHeight(float32 InMaxDesiredHeight)`  
  When specified, will report the MaxDesiredHeight if smaller than the content's desired height.
- `SetMaxDesiredWidth(float32 InMaxDesiredWidth)`  
  When specified, will report the MaxDesiredWidth if smaller than the content's desired width.
- `SetMinAspectRatio(float32 InMinAspectRatio)`
- `SetMinDesiredHeight(float32 InMinDesiredHeight)`  
  When specified, will report the MinDesiredHeight if larger than the content's desired height.
- `SetMinDesiredWidth(float32 InMinDesiredWidth)`  
  When specified, will report the MinDesiredWidth if larger than the content's desired width.
- `SetWidthOverride(float32 InWidthOverride)`  
  When specified, ignore the content's desired size and report the WidthOverride as the Box's desired width.

---

