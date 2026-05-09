### UBorder


A border is a container widget that can contain one child widget, providing an opportunity
to surround it with a background image and adjustable padding.

* Single Child
* Image

**属性**:

- `FSlateBrush Background [Brush to drag as the background]`
- `FLinearColor BrushColor [Color and opacity of the actual border image]`
- `FLinearColor ContentColorAndOpacity [Color and opacity multiplier of content in the border]`
- `FVector2D DesiredSizeScale [Scales the computed desired size of this border and its contents. Useful
for making things that slide open without having to hard-code their size.
Note: if the parent widget is set up to ignore this widget's desired size,
then changing this value will have no effect.]`
- `EHorizontalAlignment HorizontalAlignment [The alignment of the content horizontally.]`
- `FOnPointerEvent__Widget OnMouseButtonDownEvent []`
- `FOnPointerEvent__Widget OnMouseButtonUpEvent []`
- `FOnPointerEvent__Widget OnMouseDoubleClickEvent []`
- `FOnPointerEvent__Widget OnMouseMoveEvent []`
- `FMargin Padding [The padding area between the slot and the content it contains.]`
- `EVerticalAlignment VerticalAlignment [The alignment of the content vertically.]`
- `bool bFlipForRightToLeftFlowDirection [Flips the background image if the localization's flow direction is RightToLeft]`
- `bool bShowEffectWhenDisabled [Whether or not to show the disabled effect when this border is disabled]`


**方法**:

- `UMaterialInstanceDynamic GetDynamicMaterial()`
- `SetBrush(FSlateBrush InBrush)`
- `SetBrushColor(FLinearColor InBrushColor)`
- `SetBrushFromAsset(USlateBrushAsset Asset)`
- `SetBrushFromMaterial(UMaterialInterface Material)`
- `SetBrushFromTexture(UTexture2D Texture)`
- `SetContentColorAndOpacity(FLinearColor InContentColorAndOpacity)`
- `SetDesiredSizeScale(FVector2D InScale)`  
  Sets the DesiredSizeScale of this border.

@param InScale    The X and Y multipliers for the desired size
- `SetHorizontalAlignment(EHorizontalAlignment InHorizontalAlignment)`
- `SetPadding(FMargin InPadding)`
- `SetShowEffectWhenDisabled(bool bInShowEffectWhenDisabled)`
- `SetVerticalAlignment(EVerticalAlignment InVerticalAlignment)`

---

