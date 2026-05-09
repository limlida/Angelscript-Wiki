### FMovieSceneCaptureSettings


Common movie-scene capture settings

**属性**:

- `FFrameRate CustomFrameRate [The custom frame rate at which to capture if "Use Custom Frame Rate" is enabled]`
- `FFrameRate FrameRate [The sequence's frame rate at which to capture if "Use Custom Frame Rate" is not enabled]`
- `TSubclassOf<AGameModeBase> GameModeOverride [Optional game mode to override the map's default game mode with.  This can be useful if the game's normal mode displays UI elements or loading screens that you don't want captured.]`
- `int HandleFrames [Number of frame handles to include for each shot]`
- `FString MovieExtension [Filename extension for movies referenced in the XMLs/EDLs]`
- `FDirectoryPath OutputDirectory [The directory to output the captured file(s) in]`
- `FString OutputFormat [The format to use for the resulting filename. Extension will be added automatically. Any tokens of the form {token} will be replaced with the corresponding value:
{fps}                - The captured framerate
{frame}              - The current frame number (only relevant for image sequences)
{width}              - The width of the captured frames
{height}             - The height of the captured frames
{world}              - The name of the current world
{quality}    - The image compression quality setting
{material}   - The material/render pass
{shot}       - The name of the level sequence asset shot being played
{sequence}   - The name of the level sequence asset being played
{camera}     - The name of the current camera
{date}       - The date in the format of {year}.{month}.{day}
{year}       - The current year
{month}      - The current month
{day}        - The current day
{time}       - The current time in the format of hours.minutes.seconds]`
- `int PathTracerSamplePerPixel [Number of sampler per pixel to be used when rendering the scene with the path tracer (if supported)]`
- `FCaptureResolution Resolution [The resolution at which to capture]`
- `uint8 ZeroPadFrameNumbers [How much to zero-pad frame numbers on filenames]`
- `bool bAllowMovement [Whether to allow player movement whilst capturing]`
- `bool bAllowTurning [Whether to allow player rotation whilst capturing]`
- `bool bCinematicEngineScalability [Whether to enable cinematic engine scalability settings]`
- `bool bCinematicMode [Whether to enable cinematic mode whilst capturing]`
- `bool bEnableTextureStreaming [Whether to texture streaming should be enabled while capturing.  Turning off texture streaming may cause much more memory to be used, but also reduces the chance of blurry textures in your captured video.]`
- `bool bOverwriteExisting [Whether to overwrite existing files or not]`
- `bool bShowHUD [Whether to show the in-game HUD whilst capturing]`
- `bool bShowPlayer [Whether to show the local player whilst capturing]`
- `bool bUseCustomFrameRate [Specify using the custom frame rate as opposed to the sequence's display rate]`
- `bool bUsePathTracer [Whether to use the path tracer (if supported) to render the scene]`
- `bool bUseRelativeFrameNumbers [True if frame numbers in the output files should be relative to zero, rather than the actual frame numbers in the originating animation content.]`


**方法**:

- `FMovieSceneCaptureSettings& opAssign(FMovieSceneCaptureSettings Other)`

---

