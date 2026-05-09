### UVariant


**方法**:

- `AActor GetActor(int ActorIndex)`
- `FVariantDependency& GetDependency(int Index)`  
  Get the dependency at index 'Index' by value. Will crash if index is invalid
- `TArray<UVariant> GetDependents(ULevelVariantSets LevelVariantSets, bool bOnlyEnabledDependencies)`  
  Returns all the variants that have this variant as a dependency
- `FText GetDisplayText() const`
- `int GetNumActors()`
- `int GetNumDependencies()`
- `UVariantSet GetParent()`
- `UTexture2D GetThumbnail()`  
  Gets the thumbnail currently used for this variant
- `bool IsActive()`  
  Returns true if none of our properties are dirty
- `SetDisplayText(FText NewDisplayText)`
- `SetThumbnailFromCamera(FTransform CameraTransform, float32 FOVDegrees = 50.000000, float32 MinZ = 50.000000, float32 Gamma = 2.200000)`
- `SetThumbnailFromEditorViewport()`  
  Sets the thumbnail from the active editor viewport. Doesn't do anything if the Editor is not available
- `SetThumbnailFromFile(FString FilePath)`
- `SetThumbnailFromTexture(UTexture2D NewThumbnail)`  
  Sets the thumbnail to use for this variant. Can receive nullptr to clear it
- `SwitchOn()`
- `AddActorBinding(AActor Actor)`  
  Binds the Actor to the Variant, internally creating a VariantObjectBinding
- `int AddDependency(FVariantDependency& Dependency)`
- `UPropertyValue CaptureProperty(AActor Actor, FString PropertyPath)`  
  Finds the actor binding to Actor within Variant and tries capturing a property with PropertyPath
Returns the captured UPropertyValue if succeeded or nullptr if it failed.
- `DeleteDependency(int Index)`
- `TArray<UPropertyValue> GetCapturedProperties(AActor Actor)`  
  Returns which properties have been captured for this actor in Variant
- `RemoveActorBinding(AActor Actor)`  
  Removes an actor binding to Actor from Variant, if it exists
- `RemoveActorBindingByName(FString ActorName)`  
  Looks for an actor binding to an actor with ActorLabel within Variant and removes it, if it exists
- `RemoveCapturedProperty(AActor Actor, UPropertyValue Property)`  
  Removes a property capture from an actor binding within Variant, if it exists
- `RemoveCapturedPropertyByName(AActor Actor, FString PropertyPath)`  
  Removes property capture with PropertyPath from Actor's binding within Variant, if it exists
- `SetDependency(int Index, FVariantDependency& Dependency)`

---

