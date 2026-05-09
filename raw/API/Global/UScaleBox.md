### UScaleBox


Allows you to place content with a desired size and have it scale to meet the constraints placed on this box's alloted area.  If
you needed to have a background image scale to fill an area but not become distorted with different aspect ratios, or if you need
to auto fit some text to an area, this is the control for you.

* Single Child
* Aspect Ratio

**属性**:

- `bool IgnoreInheritedScale [Optional bool to ignore the inherited scale. Applies inverse scaling to counteract parents before applying the local scale operation.]`
- `EStretch Stretch [The stretching rule to apply when content is stretched]`
- `EStretchDirection StretchDirection [Controls in what direction content can be scaled]`
- `float32 UserSpecifiedScale [Optional scale that can be specified by the User. Used only for UserSpecified stretching.]`


**方法**:

- `SetIgnoreInheritedScale(bool bInIgnoreInheritedScale)`
- `SetStretch(EStretch InStretch)`
- `SetStretchDirection(EStretchDirection InStretchDirection)`
- `SetUserSpecifiedScale(float32 InUserSpecifiedScale)`

---

