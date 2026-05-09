### ULevelEditorViewportSettings


Implements the Level Editor's view port settings.

**属性**:

- `EAspectRatioAxisConstraint AspectRatioAxisConstraint [How to constrain perspective view port FOV]`
- `float32 BSPSelectionHighlightIntensity [Sets the intensity of the overlay displayed when an object is selected]`
- `float32 BackgroundDropDistance [Distance from the camera to place actors which are dropped on nothing in the view port.]`
- `float32 BillboardScale []`
- `float32 CameraPreviewSize [Affects the size of 'picture in picture' previews if they are enabled]`
- `FEditorViewportCameraSpeedSettings CameraSpeedSettings [The camera speed settings for level viewports.]`
- `TArray<float32> CommonRotGridSizes [User defined grid intervals for rotations]`
- `TArray<float32> DecimalGridIntervals [The number of lines between each major line interval for decimal grids]`
- `TArray<float32> DecimalGridSizes [Decimal grid sizes (for translation snapping and grid rendering)]`
- `TArray<float32> DivisionsOf360RotGridSizes [Preset grid intervals for rotations]`
- `bool FlightCameraControlExperimentalNavigation [Enable the use of the experimental navigation in the flight camera controls.]`
- `EWASDType FlightCameraControlType [Enable the use of flight camera controls under various circumstances.]`
- `ELandscapeFoliageEditorControlType FoliageEditorControlType [Choose the control scheme for foliage tools]`
- `bool GridEnabled [If enabled, actor positions will snap to the grid.]`
- `ELandscapeFoliageEditorControlType LandscapeEditorControlType [Choose the control scheme for landscape tools (ignored for pen input)]`
- `EMarqueeSelectionMode MarqueeSelectionMode [Sets how marquee selection should behave.]`
- `TSoftObjectPtr<UMaterialInterface> MaterialForDroppedTextures [When dropping a texture in the viewport, create an instance of this material instead of creating a new material. Populate MaterialParamsForDroppedTextures to specify the parameter names.]`
- `TMap<EMaterialKind,FName> MaterialParamsForDroppedTextures [When dropping a texture in the viewport, determines which material parameter to assign for each found texture type. Only relevant if MaterialForDroppedTextures is assigned.]`
- `EMeasuringToolUnits MeasuringToolUnits [Specify the units used by the measuring tool]`
- `float32 MinimumOrthographicZoom [The closest possible distance allowed when viewing through an orthographic camera]`
- `int MouseScrollCameraSpeed [How fast the perspective camera moves through the world when using mouse scroll.]`
- `float32 MouseSensitivty [The sensitivity of mouse movement when rotating the camera.]`
- `TArray<float32> Pow2GridIntervals [The number of lines between each major line interval for pow2 grids]`
- `TArray<float32> Pow2GridSizes [Power of 2 grid sizes (for translation snapping and grid rendering)]`
- `TArray<FSoftObjectPath> PreviewMeshes [A list of meshes that can be used as preview mesh in the editor view port by holding down the backslash key]`
- `FColor PropertyColorationColorForMatchingObjects [Property coloration color for matching objects]`
- `bool RotGridEnabled [If enabled, actor rotations will snap to the grid.]`
- `TArray<float32> ScalingGridSizes [Grid sizes for scaling]`
- `EScrollGestureDirection ScrollGestureDirectionFor3DViewports [Direction of the scroll gesture for 3D viewports]`
- `EScrollGestureDirection ScrollGestureDirectionForOrthoViewports [Direction of the scroll gesture for orthographic viewports]`
- `float32 SelectedSplinePointSizeAdjustment [The size adjustment to apply to selected spline points (in screen space units).]`
- `float32 SelectionHighlightIntensity [Sets the intensity of the overlay displayed when an object is selected]`
- `bool SnapScaleEnabled [If enabled, actor sizes will snap to the grid.]`
- `float32 SplineLineThicknessAdjustment [The size adjustment to apply to spline line thickness which increases the spline's hit tolerance.]`
- `float32 SplineTangentHandleSizeAdjustment [The size adjustment to apply to spline tangent handle (in screen space units).]`
- `float32 SplineTangentScale [The scale to apply to spline tangent lengths]`
- `bool bAllowArcballRotate [Allow arcball rotation with rotate widget]`
- `bool bAllowEditWidgetAxisDisplay [If true, the Edit widget of a transform will display the axis]`
- `bool bAllowScreenRotate [Allow screen rotation with rotate widget]`
- `bool bAllowTranslateRotateZWidget [Allow translate/rotate widget]`
- `bool bCenterZoomAroundCursor [If checked, in orthographic view ports zooming will center on the mouse position.  If unchecked, the zoom is around the center of the viewport.]`
- `bool bClickBSPSelectsBrush [If true, Clicking a BSP selects the brush and ctrl+shift+click selects the surface. If false, vice versa]`
- `bool bEnableLayerSnap [If enabled, new Actors that you drag into the viewport snap to the active 2D layer.]`
- `bool bEnableViewportCameraToUpdateFromPIV [Enables the editor perspective camera to be dropped at the last PlayInViewport cam position]`
- `bool bEnableViewportHoverFeedback [Enables real-time hover feedback when mousing over objects in editor view ports]`
- `bool bHighlightWithBrackets [If enabled, selected objects will be highlighted with brackets in all modes rather than a special highlight color.]`
- `bool bInvertMiddleMousePan [Whether or not to invert the direction of middle mouse panning in viewports]`
- `bool bInvertMouseLookYAxis [Whether or not to invert mouse on the y axis in free look mode]`
- `bool bInvertOrbitYAxis [Whether or not to invert mouse on y axis in orbit mode]`
- `bool bInvertRightMouseDollyYAxis [Whether or not to invert the direction of right mouse dolly on the Y axis in orbit mode]`
- `bool bLevelEditorJoystickControls [Enables joystick-based camera movement in 3D level editing viewports]`
- `bool bLevelStreamingVolumePrevis [If enabled, the viewport will stream in levels automatically when the camera is moved.]`
- `bool bOrbitCameraAroundSelection [If enabled, the camera will orbit around the current selection in the viewport]`
- `bool bPanMovesCanvas [If true, moves the canvas and shows the mouse.  If false, uses original camera movement.]`
- `bool bPreviewSelectedCameras [When enabled, selecting a camera actor will display a live 'picture in picture' preview from the camera's perspective within the current editor view port.  This can be used to easily tweak camera positioning, post-processing and other settings without having to possess the camera itself.  This feature may reduce application performance when enabled.]`
- `bool bSaveEngineStats [When enabled, engine stats that are enabled in level viewports are preserved between editor sessions]`
- `bool bShowActorEditorContext [If true, viewport will show actor editor context (current level, current data layer(s), current folder)]`
- `bool bShowBrushMarkerPolys [If true, show translucent marker polygons on the builder brush and volumes.]`
- `bool bUseAbsoluteTranslation [Whether to use mouse position as direct widget position.]`
- `bool bUseDistanceScaledCameraSpeed [If enabled, scale the perspective camera speed based on the distance between the camera and its look-at position]`
- `bool bUseLODViewLocking [If true, same type views will be camera tied, and ortho views will use perspective view for LOD parenting]`
- `bool bUseLegacyCameraMovementNotifications [Camera movement notification toggle to switch back to the behavior that caused camera notifications to be sent during gizmo movement.]`
- `bool bUseLinkedOrthographicViewports [If checked all orthographic view ports are linked to the same position and move together.]`
- `bool bUsePercentageBasedScaling [If enabled, use the old-style multiplicative/percentage scaling method instead of the new additive/fraction method]`
- `bool bUsePowerOf2SnapSize [If enabled will use power of 2 grid settings (e.g, 1,2,4,8,16,...,1024) instead of decimal grid sizes]`
- `bool bUseSelectionOutline [Whether to show selection outlines for selected Actors]`
- `bool bUseUE3OrbitControls [When checked, orbit the camera by using the L or U keys when unchecked, Alt and Left Mouse Drag will orbit around the look at point]`
- `bool bWorldSpaceVerticalPan [If enabled, vertical movements of the mouse while panning with the middle mouse button will move the camera vertically in world space. Otherwise, vertical mouse movements will be camera-relative.]`

---

