### USequencerSettings


Serializable options for sequencer.

**属性**:

- `EAllowEditsMode AllowEditsMode [Allow edits mode.]`
- `float32 AssetBrowserHeight [The height for the asset browsers in Sequencer]`
- `float32 AssetBrowserWidth [The width for the asset browsers in Sequencer]`
- `EAutoChangeMode AutoChangeMode [The auto change mode (auto-key, auto-track or none).]`
- `TArray<FColumnVisibilitySetting> ColumnVisibilitySettings [List of all columns and their visibility, in the order to be displayed in the outliner view]`
- `FCurveEditorZoomScaleConfig CurveEditorZoomScaling [Affects the zooming behavior of in Sequencer's Curve Editor.]`
- `EFrameNumberDisplayFormats FrameNumberDisplayFormat [What format do we display time in to the user?]`
- `FFrameNumber JumpFrameIncrement [The number of frames to jump by when jumping forward or backwards.]`
- `FString KeyAreaCurveExtents [The key area curve extents, stored per channel name]`
- `float32 KeyAreaHeightWithCurves [The key area height when showing curves]`
- `EKeyGroupMode KeyGroupMode [Key group mode.]`
- `EMovieSceneKeyInterpolation KeyInterpolation [The interpolation type for the initial keyframe]`
- `EFilterBarLayout LastFilterBarLayout [Last saved layout orientation of the filter bar to restore after closed]`
- `FLinearColor MarkedFrameColor [Default marked frame color]`
- `FString MovieRendererName [Which movie renderer to use]`
- `FLinearColor PlaybackRangeEndColor [PLayback range end color]`
- `FLinearColor PlaybackRangeStartColor [PLayback range start color]`
- `float32 ReduceKeysTolerance [The tolerance to use when reducing keys]`
- `TArray<FColor> SectionColorTints [Section color tints]`
- `ESequencerSpawnPosition SpawnPosition [The default location of a spawnable when it is first dragged into the viewport from the content browser.]`
- `FSequencerThumbnailCaptureSettings ThumbnailCaptureSettings [Controls how the thumbnail is captured when the sequence is saved.]`
- `ESequencerTimeWarpDisplay TimeWarpDisplay [Controls how time-warped time is displayed on the timeline.]`
- `TArray<FString> TrackFilters [The track filters that are enabled]`
- `uint TrajectoryPathCap [Specifies the maximum number of keys to draw when rendering trajectories in viewports]`
- `float32 TreeViewWidth [The tree view width percentage]`
- `FName ViewDensity []`
- `uint8 ZeroPadFrames [The number of zeros to pad the frame numbers by.]`
- `ESequencerZoomPosition ZoomPosition [Whether to zoom in on the current position or the current time in the timeline.]`
- `bool bActivateRealtimeViewports [When enabled, sequencer will activate 'Realtime' in viewports]`
- `bool bAutoExpandNodesOnFilterPass [Automatically expand tracks that pass filters]`
- `bool bAutoExpandNodesOnSelection [Whether to expand the sequencer tree view when a child element is selected (from outside of the tree view).]`
- `bool bAutoScrollEnabled [Enable or disable auto scroll in the timeline when playing.]`
- `bool bAutoSetTrackDefaults [When setting keys on properties and transforms automatically update the track default values used when there are no keys.]`
- `bool bCleanPlaybackMode [When enabled, sequencer will playback in clean mode (game view, hide viewport UI)]`
- `bool bCompileDirectorOnEvaluate [Whether to recompile the director blueprint when the sequence is evaluated (if one exists)]`
- `bool bCreateSpawnableCameras [Enable or disable creating of spawnable cameras whenever cameras are created.]`
- `bool bCurveEditorVisible [Whether the curve editor is visible]`
- `bool bDeleteKeysWhenTrimming [Enable or disable deleting keys that fall beyond the section range when trimming.]`
- `bool bDisableSectionsAfterBaking [Whether to disable sections after baking as opposed to deleting.]`
- `bool bEvaluateSubSequencesInIsolation [When enabled, entering a sub sequence will evaluate that sub sequence in isolation, rather than from the root sequence]`
- `bool bFilterBarVisible [Last saved visibility of the filter bar to restore after closed]`
- `bool bForceWholeFrames [Enable or disable snapping keys/sections/playhead to the interval which forces whole frames]`
- `bool bIncludePinnedInFilter [Apply filtering to pinned tracks that would otherwise ignore filters]`
- `bool bInfiniteKeyAreas [Enable or disable setting key area sections as infinite by default.]`
- `bool bIsSnapEnabled [Enable or disable snapping in the timeline.]`
- `bool bIsolateCurveEditorToSelection [When enabled, changing the sequencer tree selection will isolate (auto-filter) the selected nodes in the curve editor.]`
- `bool bKeepCursorInPlayRangeWhileScrubbing [Enable or disable keeping the playhead in the current playback range while scrubbing.]`
- `bool bKeepPlayRangeInSectionBounds [Enable or disable keeping the playback range constrained to the section bounds.]`
- `bool bLeftMouseDragDoesMarquee [Defines whether left mouse drag does marquee select instead of camera orbit]`
- `bool bLinkCurveEditorTimeRange [Enable or disable linking the curve editor time range to the sequencer timeline's time range.]`
- `bool bLinkFiltersWithCurveEditor [Enable or disable linking sequence filters with the curve editor tree]`
- `bool bNavigationToolVisible [Last saved visibility of the Navigation Tool to restore after closed]`
- `bool bRerunConstructionScripts [When enabled, construction scripts will be rerun on bound actors for every frame]`
- `bool bResetPlayheadWhenNavigating [Enable or disable resetting the playhead when navigating in and out of subsequences.]`
- `bool bRestoreOriginalViewportOnCameraCutUnlock [Whether unlocking a camera cut track should return the viewport to its original location, or keep it where the
camera cut was.
WARNING: Disabling this will make previewing camera cut blends useless, since it will blend to the same position.]`
- `bool bRewindOnRecord [Defines whether to jump back to the start of the sequence when a recording is started]`
- `bool bScrubTimeStartFromCursor [When enabled, scrubbing time hotkey will move time from initial cursor position]`
- `bool bShowChannelColors [Enable or disable displaying channel bar colors for the key bars.]`
- `bool bShowDebugVisualization [Enable or disable showing of debug visualization.]`
- `bool bShowInfoButton [Enable or disable displaying the info button in the playback controls.]`
- `bool bShowKeyBars [Enable or disable key bar connections.]`
- `bool bShowLayerBars [Enable or disable the layer bars to edit keyframes in bulk.]`
- `bool bShowMarkedFrames [Enable or disable showing marked frames]`
- `bool bShowRangeSlider [Show the in/out range in the timeline with respect to the start/end range.]`
- `bool bShowScalingAnchors [Enable or disable showing scaling anchors]`
- `bool bShowSelectedNodesOnly [Only show selected nodes in the tree view.]`
- `bool bShowSequencerToolbar [Enable or disable displaying the sequencer toolbar.]`
- `bool bShowTickLines [Enable or disable displaying the tick lines.]`
- `bool bSnapCurveValueToInterval [Enable or disable snapping the curve value to the curve value interval.]`
- `bool bSnapKeyTimesToElements [Enable or disable snapping keys to other elements.]`
- `bool bSnapPlayTimeToDraggedKey [Enable or disable snapping the playhead to the dragged key.]`
- `bool bSnapPlayTimeToKeys [Enable or disable snapping the playhead to keys while scrubbing.]`
- `bool bSnapPlayTimeToMarkers [Enable or disable snapping the playhead to markers while scrubbing.]`
- `bool bSnapPlayTimeToPressedKey [Enable or disable snapping the playhead to the pressed key.]`
- `bool bSnapPlayTimeToSections [Enable or disable snapping the playhead to section bounds while scrubbing.]`
- `bool bSnapSectionTimesToElements [Enable or disable snapping sections to other elements.]`
- `bool bStopPlayingWhenJumpingToStartOrEnd [When enabled, playing will stop when you jump to  start or end of range]`
- `bool bSynchronizeCurveEditorSelection [When enabled, changing the sequencer tree selection will also select the relevant nodes in the curve editor tree if possible.]`
- `bool bUseFilterSubmenusForCategories [Display the filter menu categories as submenus instead of sections]`
- `bool bVisualizePreAndPostRoll [Enable or disable showing of pre and post roll visualization.]`

---

