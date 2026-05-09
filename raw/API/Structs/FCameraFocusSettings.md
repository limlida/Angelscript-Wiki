### FCameraFocusSettings


Settings to control camera focus

**属性**:

- `FColor DebugFocusPlaneColor [For customizing the focus plane color, in case the default doesn't show up well in your scene.]`
- `ECameraFocusMethod FocusMethod [Which method to use to handle camera focus]`
- `float32 FocusOffset [Additional focus depth offset, used for manually tweaking if your chosen focus method needs adjustment]`
- `float32 FocusSmoothingInterpSpeed [Controls interpolation speed when smoothing focus distance changes. Ignored if bSmoothFocusChanges is false.]`
- `float32 ManualFocusDistance [Manually-controlled focus distance (manual focus mode only)]`
- `FCameraTrackingFocusSettings TrackingFocusSettings [Settings to control tracking focus (tracking focus mode only)]`
- `bool bDrawDebugFocusPlane [True to draw a translucent plane at the current focus depth, for easy tweaking.]`
- `bool bSmoothFocusChanges [True to use interpolation to smooth out changes in focus distance, false for focus distance changes to be instantaneous.]`


**方法**:

- `FCameraFocusSettings& opAssign(FCameraFocusSettings Other)`

---

