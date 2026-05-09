### UImgMediaSource


Media source for EXR image sequences.

Image sequence media sources point to a directory that contains a series of
image files in which each image represents a single frame of the sequence.
BMP, EXR, PNG and JPG images are currently supported. EXR image sequences
are optimized for performance. The first frame of an image sequence is used
to determine the image dimensions (all formats) and frame rate (EXR only).

The image sequence directory may contain sub-directories, which are called
'proxies'. Proxies can be used to provide alternative media for playback
during development and testing of a game. One common scenario is the use
of low resolution versions of image sequence media on computers that are
too slow or don't have enough storage to play the original high-res media.

**属性**:

- `FFrameRate FrameRateOverride [Overrides the default frame rate stored in the image files (0/0 = do not override).]`
- `FString ProxyOverride [Name of the proxy directory to use.]`
- `FDirectoryPath SequencePath [The directory that contains the image sequence files.

- Relative paths will be with respect to the current Project directory.
- You may use {engine_dir} or {project_dir} tokens.]`
- `FMediaSourceColorSettings SourceColorSettings [Manual definition of media source color space & encoding.]`
- `FTimecode StartTimecode [Specification of a timecode associated with the start of the sequence.]`
- `bool bFillGapsInSequence [If true, then any gaps in the sequence will be filled with blank frames.]`


**方法**:

- `AddTargetObject(AActor InActor)`  
  This object is using our img sequence.

@param InActor Object using our img sequence.
- `GetProxies(TArray<FString>& OutProxies) const`  
  Get the names of available proxy directories.

@param OutProxies Will contain the names of available proxy directories, if any.
@see GetSequencePath
- `FString GetSequencePath() const`  
  Get the path to the image sequence directory to be played. Supported tokens will be expanded.

@return The file path.
@see SetSequencePath
- `RemoveTargetObject(AActor InActor)`  
  This object is no longer using our img sequence.

@param InActor Object no longer using our img sequence.
- `SetSequencePath(FString Path)`  
  Set the path to the image sequence directory this source represents.

@param Path The path to an image file in the desired directory.
@see GetSequencePath
- `SetTokenizedSequencePath(FString Path)`  
  Set the path to the image sequence directory this source represents.

@param Path The path to the desired image sequence directory. May contain supported tokens.
@see GetSequencePath

---

