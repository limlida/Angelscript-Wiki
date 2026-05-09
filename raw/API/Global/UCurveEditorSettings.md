### UCurveEditorSettings


Serializable options for curve editor.

**属性**:

- `TArray<FCustomColorForSpaceSwitch> ControlSpaceCustomColors []`
- `TArray<FCustomColorForChannel> CustomColors []`
- `int FrameInputPadding [Number of pixels to add as padding in the input axis when framing curve keys]`
- `int FrameOutputPadding [Number of pixels to add as padding in the output axis when framing curve keys]`
- `float32 MarqueePointSensitivity [Determines how close you must move the selection marque to the center of a point in order to select it.

This is the percentage of point's center to the point's widget border that must be overlapped with the marquee in order for the point to be selected.
1.0 means as soon as marquee overlaps any portion of the point.
0.0 means you must touch the point's center to select it.]`
- `ECurveEditorPanningMouseButton PanningMouseButton []`
- `FLinearColor ParentSpaceCustomColor []`
- `FLinearColor SelectionColor []`
- `ECurveEditorSnapAxis SnapAxis []`
- `ECurveEditorTangentVisibility TangentVisibility []`
- `float32 TreeViewWidth []`
- `FLinearColor WorldSpaceCustomColor []`
- `ECurveEditorZoomPosition ZoomPosition []`
- `bool bAutoFrameCurveEditor []`
- `bool bScrubTimeStartFromCursor [When enabled, scrubbing time hotkey will move time from initial cursor position]`
- `bool bShowBars []`
- `bool bShowBufferedCurves []`
- `bool bShowCurveEditorCurveToolTips []`
- `bool bShowValueIndicators [When you select a single curve, whether to draw a dotted line for the minimum and maximum key in the selected key range.]`
- `bool bSnapTimeToSelection []`

---

