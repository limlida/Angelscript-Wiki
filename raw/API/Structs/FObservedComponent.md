### FObservedComponent


**属性**:

- `FName CacheName [Unique name for the cache, used as a key into the cache collection]`
- `FSoftComponentReference SoftComponentRef [The component observed by this object for either playback or recording]`
- `FDirectoryPath USDCacheDirectory [USD cache directory, if supported for this simulated structure type.]`
- `bool bHasNotifyBreaks [Capture the state of bNotifyBreaks of the component before cache manager takes control.
this is because when recording the cache needs the component to have bNotifyBreaks set on the component
to be able to properly record when clusters are breaking into smaller pieces]`
- `bool bIsSimulating [Capture of the initial state of the component before cache manager takes control.]`
- `bool bPlaybackEnabled [Whether this component is enabled for playback, this allow a cache to hold many component but only replay some of them.]`


**方法**:

- `FObservedComponent& opAssign(FObservedComponent Other)`

---

