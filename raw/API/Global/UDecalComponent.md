### UDecalComponent


A material that is rendered onto the surface of a mesh. A kind of 'bumper sticker' for a model.

@see https://docs.unrealengine.com/latest/INT/Engine/Actors/DecalActor
@see UDecalActor

**属性**:

- `FLinearColor DecalColor [Decal color, can be accessed using the material Decal Color node.]`
- `UMaterialInterface DecalMaterial [Decal material.]`
- `FVector DecalSize [Decal size in local space (does not include the component scale), technically redundant but there for convenience]`
- `float32 FadeDuration [Time in seconds for the decal to fade out. Set fade duration and start delay to 0 to make persistent. Only fades in active simulation or game.]`
- `float32 FadeInDuration`
- `float32 FadeInStartDelay`
- `float32 FadeScreenSize`
- `float32 FadeStartDelay [Time in seconds to wait before beginning to fade out the decal. Set fade duration and start delay to 0 to make persistent.]`
- `int SortOrder [Controls the order in which decal elements are rendered.  Higher values draw later (on top).
Setting many different sort orders on many different decals prevents sorting by state and can reduce performance.]`
- `bool bDestroyOwnerAfterFade [Automatically destroys the owning actor after fully fading out.]`


**方法**:

- `UMaterialInstanceDynamic CreateDynamicMaterialInstance()`  
  Utility to allocate a new Dynamic Material Instance, set its parent to the currently applied material, and assign it
- `UMaterialInterface GetDecalMaterial() const`  
  Accessor for decal material
- `float32 GetFadeDuration() const`
- `float32 GetFadeInDuration() const`
- `float32 GetFadeInStartDelay() const`
- `float32 GetFadeStartDelay() const`
- `SetDecalColor(FLinearColor Color)`  
  Sets the decal color.
- `SetDecalMaterial(UMaterialInterface NewDecalMaterial)`  
  setting decal material on decal component. This will force the decal to reattach
- `SetFadeIn(float32 StartDelay, float32 Duration)`
- `SetFadeOut(float32 StartDelay, float32 Duration, bool DestroyOwnerAfterFade = true)`  
  Sets the decal's fade start time, duration and if the owning actor should be destroyed after the decal is fully faded out.
The default value of 0 for FadeStartDelay and FadeDuration makes the decal persistent. See DecalLifetimeOpacity material
node to control the look of "fading out."

@param StartDelay - Time in seconds to wait before beginning to fade out the decal.
@param Duration - Time in second for the decal to fade out.
@param DestroyOwnerAfterFade - Should the owning actor automatically be destroyed after it is completely faded out.
- `SetFadeScreenSize(float32 NewFadeScreenSize)`  
  Set the FadeScreenSize for this decal component
- `SetSortOrder(int Value)`  
  Sets the sort order for the decal component. Higher values draw later (on top). This will force the decal to reattach

---

