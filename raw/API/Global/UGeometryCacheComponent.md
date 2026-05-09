### UGeometryCacheComponent


GeometryCacheComponent, encapsulates a GeometryCache asset instance and implements functionality for rendering/and playback of GeometryCaches

**属性**:

- `float32 Duration [Duration of the animation (maximum time)]`
- `UGeometryCache GeometryCache [Geometry Cache instance referenced by the component]`
- `float32 MotionVectorScale [Scale factor to apply to the imported motion vectors]`
- `float32 PlaybackSpeed`
- `float32 StartTimeOffset`
- `FLinearColor WireframeOverrideColor [The wireframe override color.]`
- `bool bExtrapolateFrames [Enable frame extrapolation for sub-frame sampling of non-constant topologies with imported motion vectors]`
- `bool bLooping`
- `bool bManualTick []`
- `bool bOverrideWireframeColor [Do we override the wireframe rendering color?]`
- `bool bRunning`


**方法**:

- `float32 GetAnimationTime() const`  
  Get the current animation time for GeometryCache. Includes the influence of elapsed time and SetStartTimeOffset
- `float32 GetDuration() const`  
  Get the duration of the playback
- `float32 GetElapsedTime() const`  
  Get the current elapsed time for GeometryCache. Doesn't include the influence of StartTimeOffset
- `float32 GetMotionVectorScale() const`  
  Get the motion vector scale.
- `int GetNumberOfFrames() const`  
  Get the number of frames
- `int GetNumberOfTracks() const`  
  Get the number of tracks
- `bool GetOverrideWireframeColor() const`  
  Check whether we are overriding the wireframe color or not.
- `float32 GetPlaybackDirection() const`  
  Get the playback direction for GeometryCache.
- `float32 GetPlaybackSpeed() const`  
  Get current playback speed for GeometryCache.
- `float32 GetStartTimeOffset() const`  
  Get current start time offset for GeometryCache.
- `FLinearColor GetWireframeOverrideColor() const`  
  Get the wireframe override color, used when overriding the wireframe color is enabled.
- `bool IsExtrapolatingFrames() const`  
  Get whether this GeometryCache is extrapolating frames.
- `bool IsLooping() const`  
  Get whether this GeometryCache is looping or not.
- `bool IsPlaying() const`  
  Get whether this GeometryCache is playing or not.
- `bool IsPlayingReversed() const`  
  Get whether this GeometryCache is playing in reverse or not.
- `Pause()`  
  Pause playback of GeometryCache
- `Play()`  
  Start playback of GeometryCache
- `PlayFromStart()`  
  Start playback of GeometryCache from the start
- `PlayReversed()`  
  Start playback of GeometryCache in reverse
- `PlayReversedFromEnd()`  
  Start playback of GeometryCache from the end and play in reverse
- `SetExtrapolateFrames(bool bNewExtrapolating)`  
  Set whether this GeometryCache is extrapolating frames.
- `bool SetGeometryCache(UGeometryCache NewGeomCache)`  
  Change the Geometry Cache used by this instance.
- `SetLooping(bool bNewLooping)`  
  Set whether this GeometryCache is looping or not.
- `SetMotionVectorScale(float32 NewMotionVectorScale)`  
  Set new motion vector scale.
- `SetOverrideWireframeColor(bool bOverride)`  
  Override wireframe color?
- `SetPlaybackSpeed(float32 NewPlaybackSpeed)`  
  Set new playback speed for GeometryCache.
- `SetStartTimeOffset(float32 NewStartTimeOffset)`  
  Set current start time offset for GeometryCache.
- `SetWireframeOverrideColor(FLinearColor Color)`  
  Set the color, used when overriding the wireframe color is enabled.
- `Stop()`  
  Stop playback of GeometryCache
- `TickAtThisTime(float32 Time, bool bInIsRunning, bool bInBackwards, bool bInIsLooping)`

---

