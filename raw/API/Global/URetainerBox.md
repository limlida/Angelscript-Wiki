### URetainerBox


The Retainer Box renders children widgets to a render target first before
later rendering that render target to the screen.  This allows both frequency
and phase to be controlled so that the UI can actually render less often than the
frequency of the main game render.  It also has the side benefit of allow materials
to be applied to the render target after drawing the widgets to apply a simple post process.

* Single Child
* Caching / Performance

**属性**:

- `int Phase [The Phase this widget will draw on.

If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame.
If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every
other frame.  So in a 60Hz game, the UI would render at 30Hz.]`
- `int PhaseCount [The PhaseCount controls how many phases are possible know what to modulus the current frame
count by to determine if this is the current frame to draw the widget on.

If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame.
If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every
other frame.  So in a 60Hz game, the UI would render at 30Hz.]`
- `bool RenderOnInvalidation [Should this widget redraw the contents it has every time it receives an invalidation request
from it's children, similar to the invalidation panel.]`
- `bool RenderOnPhase [Should this widget redraw the contents it has every time the phase occurs.]`
- `FName TextureParameter [The texture sampler parameter of the @EffectMaterial, that we'll set to the render target.]`
- `bool bRetainRender [Set the flag for if we retain the render or pass-through]`
- `bool bShowEffectsInDesigner [If true, retained rendering occurs in designer]`


**方法**:

- `UMaterialInstanceDynamic GetEffectMaterial() const`  
  Get the current dynamic effect material applied to the retainer box.
- `RequestRender()`  
  Requests the retainer redrawn the contents it has.
- `SetEffectMaterial(UMaterialInterface EffectMaterial)`  
  Set a new effect material to the retainer widget.
- `SetRenderingPhase(int RenderPhase, int TotalPhases)`  
  Requests the retainer redrawn the contents it has.
- `SetRetainRendering(bool bInRetainRendering)`  
  Set the flag for if we retain the render or pass-through
- `SetTextureParameter(FName TextureParameter)`  
  Sets the name of the texture parameter to set the render target to on the material.

---

