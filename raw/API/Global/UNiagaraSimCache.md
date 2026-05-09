### UNiagaraSimCache


Recording of multiple frames of simulation data from a running Niagara system.
Can be used to play back the captured recording or to inspect the captured data for debug purposes.
Depending on the capture settings, not all attributes from the simulation are present in the cache.

To capture a cache, either
(1) use the baker tool in the system editor,
(2) use the Niagara component cache track in sequencer or
(3) manually capture a running system with the "CaptureNiagaraSimCache" Blueprint functions

**方法**:

- `ENiagaraSimCacheAttributeCaptureMode GetAttributeCaptureMode() const`  
  How were the attributes captured for this sim cache.
- `FName GetEmitterName(int EmitterIndex) const`  
  Get the emitter name at the provided index.
- `TArray<FName> GetEmitterNames() const`  
  Returns a list of emitters we have captured in the SimCache.
- `int GetNumEmitters() const`  
  Get number of emitters stored inside the cache.
- `int GetNumFrames() const`  
  Get number of frames stored in the cache.
- `float32 GetStartSeconds() const`  
  Get the time the simulation was at when recorded.
- `bool IsCacheValid() const`  
  A valid cache is one that contains at least 1 frames worth of data.
- `bool IsEmpty() const`  
  An empty cache contains no frame data and can not be used
- `ReadColorAttribute(TArray<FLinearColor>& OutValues, FName AttributeName = FName ( "" ), FName EmitterName = NAME_None, int FrameIndex = 0) const`  
  Reads Niagara Color attributes by name from the cache frame and appends them into the OutValues array.
EmitterName - If left blank will return the system simulation attributes.
- `UObject ReadDataInterfaceAs(UClass RequestedType, FName AttributeName, int FrameIndex = 0) const`  
  Reads data interface data from the cache as the requested type.
This method will return nullptr if the attribute does not exists or the requests type is not supported by the storage type.
- `ReadFloatAttribute(TArray<float32>& OutValues, FName AttributeName, FName EmitterName, int FrameIndex = 0) const`  
  Reads Niagara float attributes by name from the cache frame and appends them into the OutValues array.
EmitterName - If left blank will return the system simulation attributes.
- `ReadIDAttribute(TArray<FNiagaraID>& OutValues, FName AttributeName, FName EmitterName, int FrameIndex = 0) const`  
  Reads Niagara ID attributes by name from the cache frame and appends them into the OutValues array.
EmitterName - If left blank will return the system simulation attributes.
- `ReadIntAttribute(TArray<int>& OutValues, FName AttributeName, FName EmitterName, int FrameIndex = 0) const`  
  Reads Niagara int attributes by name from the cache frame and appends them into the OutValues array.
EmitterName - If left blank will return the system simulation attributes.
- `ReadPositionAttribute(TArray<FVector>& OutValues, FName AttributeName = FName ( "" ), FName EmitterName = NAME_None, bool bLocalSpaceToWorld = true, int FrameIndex = 0) const`  
  Reads Niagara Position attributes by name from the cache frame and appends them into the OutValues array.
Local space emitters provide data at local locations unless bLocalSpaceToWorld is true.
EmitterName - If left blank will return the system simulation attributes.
LocalSpaceToWorld - Caches are always stored in the emitters space, i.e. local or world space.  You can set this to false if you want the local position rather than the world position.
- `ReadPositionAttributeWithRebase(TArray<FVector>& OutValues, FTransform Transform, FName AttributeName = FName ( "" ), FName EmitterName = NAME_None, int FrameIndex = 0) const`  
  Reads Niagara Position attributes by name from the cache frame and appends them into the OutValues array.
All attributes read with this method will be re-based from the captured space into the provided transform space,
this will occur even if the cache was not captured with re-basing enabled.
EmitterName - If left blank will return the system simulation attributes.
- `ReadQuatAttribute(TArray<FQuat>& OutValues, FName AttributeName = FName ( "" ), FName EmitterName = NAME_None, bool bLocalSpaceToWorld = true, int FrameIndex = 0) const`  
  Reads Niagara Quaternion attributes by name from the cache frame and appends them into the OutValues array.
Local space emitters provide data at local rotation unless bLocalSpaceToWorld is true.
EmitterName - If left blank will return the system simulation attributes.
LocalSpaceToWorld - Caches are always stored in the emitters space, i.e. local or world space.  You can set this to false if you want the local Quat rather than the world Quat.
- `ReadQuatAttributeWithRebase(TArray<FQuat>& OutValues, FQuat Quat, FName AttributeName = FName ( "" ), FName EmitterName = NAME_None, int FrameIndex = 0) const`  
  Reads Niagara Quaternion attributes by name from the cache frame and appends them into the OutValues array.
Only attributes that in the rebase list will be transform into the provided Quat space.  Therefore the cache
must be captured with rebasing enabled to have any impact.
EmitterName - If left blank will return the system simulation attributes.
- `ReadVector2Attribute(TArray<FVector2D>& OutValues, FName AttributeName, FName EmitterName, int FrameIndex = 0) const`  
  Reads Niagara Vec2 attributes by name from the cache frame and appends them into the OutValues array.
EmitterName - If left blank will return the system simulation attributes.
- `ReadVector4Attribute(TArray<FVector4>& OutValues, FName AttributeName, FName EmitterName, int FrameIndex = 0) const`  
  Reads Niagara Vec4 attributes by name from the cache frame and appends them into the OutValues array.
EmitterName - If left blank will return the system simulation attributes.
- `ReadVectorAttribute(TArray<FVector>& OutValues, FName AttributeName, FName EmitterName, int FrameIndex = 0) const`  
  Reads Niagara Vec3 attributes by name from the cache frame and appends them into the OutValues array.
EmitterName - If left blank will return the system simulation attributes.

---

