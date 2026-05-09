### UWidgetComponent


The widget component provides a surface in the 3D environment on which to render widgets normally rendered to the screen.
Widgets are first rendered to a render target, then that render target is displayed in the world.

Material Properties set by this component on whatever material overrides the default.
SlateUI [Texture]
BackColor [Vector]
TintColorAndOpacity [Vector]
OpacityFromTexture [Scalar]

**属性**:

- `FLinearColor BackgroundColor [The background color of the component]`
- `EWidgetBlendMode BlendMode [The blend mode for the widget.]`
- `float CylinderArcAngle [Curvature of a cylindrical widget in degrees.]`
- `FIntPoint DrawSize [The size of the displayed quad.]`
- `EWidgetGeometryMode GeometryMode [Controls the geometry of the widget component. See EWidgetGeometryMode.]`
- `int LayerZOrder [ZOrder the layer will be created on, note this only matters on the first time a new layer is created, subsequent additions to the same layer will use the initially defined ZOrder]`
- `float32 OpacityFromTexture [Sets the amount of opacity from the widget's UI texture to use when rendering the translucent or masked UI to the viewport (0.0-1.0)]`
- `FVector2D Pivot [The Alignment/Pivot point that the widget is placed at relative to the position.]`
- `float32 RedrawTime [The time in between draws, if 0 - we would redraw every frame.  If 1, we would redraw every second.
This will work with bManuallyRedraw as well.  So you can say, manually redraw, but only redraw at this
maximum rate.]`
- `FName SharedLayerName [Layer Name the widget will live on]`
- `EWidgetSpace Space [The coordinate space in which to render the widget]`
- `ETickMode TickMode []`
- `bool TickWhenOffscreen [Should the component tick the widget when it's off screen?]`
- `EWidgetTimingPolicy TimingPolicy [How this widget should deal with timing, pausing, etc.]`
- `FLinearColor TintColorAndOpacity [Tint color and opacity for this component]`
- `TSubclassOf<UUserWidget> WidgetClass [The class of User Widget to create and display an instance of]`
- `EWindowVisibility WindowVisibility [The visibility of the virtual window created to host the widget]`
- `bool bApplyGammaCorrection [Widget components that appear in the world will be gamma corrected by the 3D renderer.
In some cases, widget components are blitted directly into the backbuffer, in which case gamma correction should be enabled.]`
- `bool bDrawAtDesiredSize [Causes the render target to automatically match the desired size.

WARNING: If you change this every frame, it will be very expensive. If you need
   that effect, you should keep the outer widget's sized locked and dynamically
   scale or resize some inner widget.]`
- `bool bIsTwoSided [Is the component visible from behind?]`
- `bool bManuallyRedraw [Should we wait to be told to redraw to actually draw?]`
- `bool bReceiveHardwareInput [Register with the viewport for hardware input from the true mouse and keyboard.  These widgets
will more or less react like regular 2D widgets in the viewport, e.g. they can and will steal focus
from the viewport.

WARNING: If you are making a VR game, definitely do not change this to true.  This option should ONLY be used
if you're making what would otherwise be a normal menu for a game, just in 3D.  If you also need the game to
remain responsive and for the player to be able to interact with UI and move around the world (such as a keypad on a door),
use the WidgetInteractionComponent instead.]`
- `bool bUseInvalidationInWorldSpace [Use the invalidation system to update this widget.
Only valid in World space. In Screen space, the widget is updated by the viewport owners.]`
- `bool bWindowFocusable [Is the virtual window created to host the widget focusable?]`


**方法**:

- `FVector2D GetCurrentDrawSize() const`  
  Returns the "actual" draw size of the quad in the world
- `float GetCylinderArcAngle() const`  
  Defines the curvature of the widget component when using EWidgetGeometryMode::Cylinder; ignored otherwise.
- `bool GetDrawAtDesiredSize() const`
- `FVector2D GetDrawSize() const`  
  Returns the "specified" draw size of the quad in the world
- `EWidgetGeometryMode GetGeometryMode() const`  
  @see EWidgetGeometryMode, @see GetCylinderArcAngle()
- `bool GetManuallyRedraw() const`  
  @see bManuallyRedraw
- `UMaterialInstanceDynamic GetMaterialInstance() const`  
  Returns the dynamic material instance used to render the user widget
- `ULocalPlayer GetOwnerPlayer() const`  
  Gets the local player that owns this widget component.
- `FVector2D GetPivot() const`  
  Returns the pivot point where the UI is rendered about the origin.
- `float32 GetRedrawTime() const`
- `UTextureRenderTarget2D GetRenderTarget() const`  
  Returns the render target to which the user widget is rendered
- `bool GetTickWhenOffscreen() const`  
  Gets whether the widget ticks when offscreen or not
- `bool GetTwoSided() const`  
  Gets whether the widget is two-sided or not
- `UUserWidget GetUserWidgetObject() const`  
  Returns the user widget object displayed by this component
- `UUserWidget GetWidget() const`  
  Gets the widget that is used by this Widget Component. It will be null if a Slate Widget was set using SetSlateWidget function.
- `EWidgetSpace GetWidgetSpace() const`
- `bool GetWindowFocusable() const`  
  @see bWindowFocusable
- `EWindowVisibility GetWindowVisiblility() const`  
  Gets the visibility of the virtual window created to host the widget focusable.
- `bool IsWidgetVisible() const`  
  Returns true if the the Slate window is visible and that the widget is also visible, false otherwise.
- `RequestRenderUpdate()`  
  Requests that the widget have it's render target updated, if TickMode is disabled, this will force a tick to happen to update the render target.
- `SetBackgroundColor(FLinearColor NewBackgroundColor)`  
  Sets the background color and opacityscale for this widget
- `SetCylinderArcAngle(float InCylinderArcAngle)`  
  Defines the curvature of the widget component when using EWidgetGeometryMode::Cylinder; ignored otherwise.
- `SetDrawAtDesiredSize(bool bInDrawAtDesiredSize)`
- `SetDrawSize(FVector2D Size)`  
  Sets the draw size of the quad in the world
- `SetGeometryMode(EWidgetGeometryMode InGeometryMode)`
- `SetManuallyRedraw(bool bUseManualRedraw)`  
  @see bManuallyRedraw
- `SetOwnerPlayer(ULocalPlayer LocalPlayer)`  
  Sets the local player that owns this widget component.  Setting the owning player controls
which player's viewport the widget appears on in a split screen scenario.  Additionally it
forwards the owning player to the actual UserWidget that is spawned.
- `SetPivot(FVector2D InPivot)`
- `SetRedrawTime(float32 InRedrawTime)`
- `SetTickMode(ETickMode InTickMode)`  
  Sets the Tick mode of the Widget Component.
- `SetTickWhenOffscreen(bool bWantTickWhenOffscreen)`  
  Sets whether the widget ticks when offscreen or not
- `SetTintColorAndOpacity(FLinearColor NewTintColorAndOpacity)`  
  Sets the tint color and opacity scale for this widget
- `SetTwoSided(bool bWantTwoSided)`  
  Sets whether the widget is two-sided or not
- `SetWidget(UUserWidget Widget)`  
  Sets the widget to use directly. This function will keep track of the widget till the next time it's called
    with either a newer widget or a nullptr
- `SetWidgetSpace(EWidgetSpace NewSpace)`
- `SetWindowFocusable(bool bInWindowFocusable)`  
  @see bWindowFocusable
- `SetWindowVisibility(EWindowVisibility InVisibility)`  
  Sets the visibility of the virtual window created to host the widget focusable.

---

