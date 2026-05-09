### UScrollBar


**属性**:

- `EOrientation Orientation`
- `FMargin Padding [The margin around the scrollbar]`
- `FVector2D Thickness [The thickness of the scrollbar thumb]`
- `FScrollBarStyle WidgetStyle [Style of the scrollbar]`
- `bool bAlwaysShowScrollbar`
- `bool bAlwaysShowScrollbarTrack`


**方法**:

- `SetState(float32 InOffsetFraction, float32 InThumbSizeFraction)`  
  Set the offset and size of the track's thumb.
Note that the maximum offset is 1.0-ThumbSizeFraction.
If the user can view 1/3 of the items in a single page, the maximum offset will be ~0.667f

@param InOffsetFraction     Offset of the thumbnail from the top as a fraction of the total available scroll space.
@param InThumbSizeFraction  Size of thumbnail as a fraction of the total available scroll space.

---

