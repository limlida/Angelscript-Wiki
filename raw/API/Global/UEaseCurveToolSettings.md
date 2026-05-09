### UEaseCurveToolSettings


**属性**:

- `TSoftObjectPtr<UEaseCurveLibrary> DefaultPresetLibrary [The preset library to use by default and saved when a preset library is changed from a dropdown]`
- `int GraphSize [The height of the curve ease tool in the details panel.]`
- `int GridSize [The height of the curve ease tool in the details panel.]`
- `FText NewPresetCategory [The name of the category to place newly created curve presets.]`
- `FString QuickEaseTangents [The tangents to apply for quick ease. Should be in the format of four comma-separated cubic bezier points. Ex. "0.45, 0.34, 0.0, 1.00"]`
- `bool bAutoFlipTangents [If true, auto flips tangents when sequential key frame curve values are descending.]`
- `bool bAutoZoomToFit [If true, will auto zoom the graph editor to fit the tangent handles after they have been changed.]`
- `bool bGridSnap [If true, snaps tangents to grid.]`
- `bool bShowCurveEditorToolbarButton [If true, shows the ease curve combo button in the curve editor toolbar]`
- `bool bShowInSidebar [If true, displays the tool in the Sequencer sidebar drawer]`

---

