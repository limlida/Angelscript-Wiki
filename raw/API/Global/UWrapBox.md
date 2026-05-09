### UWrapBox


Arranges widgets left-to-right or top-to-bottom dependently of the orientation.  When the widgets exceed the wrapSize it will place widgets on the next line.

* Many Children
* Flows
* Wraps

**属性**:

- `EHorizontalAlignment HorizontalAlignment [The alignment of each line of wrapped content.]`
- `FVector2D InnerSlotPadding [The inner slot padding goes between slots sharing borders]`
- `EOrientation Orientation [Determines if the Wrap Box should arranges the widgets left-to-right or top-to-bottom]`
- `float32 WrapSize [When this size is exceeded, elements will start appearing on the next line.]`
- `bool bExplicitWrapSize [Use explicit wrap size whenever possible. It greatly simplifies layout calculations and reduces likelihood of "wiggling UI"]`


**方法**:

- `UWrapBoxSlot AddChildToWrapBox(UWidget Content)`
- `SetHorizontalAlignment(EHorizontalAlignment InHorizontalAlignment)`
- `SetInnerSlotPadding(FVector2D InPadding)`  
  Sets the inner slot padding goes between slots sharing borders

---

