### UGraphEditorSettings


Implements settings for the graph editor.

**属性**:

- `float32 BackwardSplineHorizontalDeltaRange [The maximum value to clamp the absolute value of the horizontal distance between endpoints when calculating tangents (when the wire is moving backwards)]`
- `FVector2f BackwardSplineTangentFromHorizontalDelta [The amount that the horizontal delta affects the generated tangent handle of splines (when the wire is moving backwards)]`
- `FVector2f BackwardSplineTangentFromVerticalDelta [The amount that the vertical delta affects the generated tangent handle of splines (when the wire is moving backwards)]`
- `float32 BackwardSplineVerticalDeltaRange [The maximum value to clamp the absolute value of the vertical distance between endpoints when calculating tangents (when the wire is moving backwards)]`
- `FLinearColor BooleanPinTypeColor [Boolean pin type color]`
- `FLinearColor BytePinTypeColor [Byte pin type color]`
- `FLinearColor ClassPinTypeColor [Class pin type color]`
- `EBlueprintPinStyleType DataPinStyle [The visual styling to use for graph editor pins (in Blueprints, materials, etc...)]`
- `ECommentBoxMode DefaultCommentNodeMoveMode [Whether a comment node should move any fully enclosed nodes around when it is moved]`
- `FLinearColor DefaultCommentNodeTitleColor [Default Comment node title color]`
- `float32 DefaultDataWireThickness [The thickness of a data wire]`
- `float32 DefaultExecutionWireThickness [The thickness of an execution wire when not debugging]`
- `FLinearColor DefaultPinTypeColor [The default color is used only for types not specifically defined below.  Generally if it's seen, it means another type needs to be defined so that the wire in question can have an appropriate color.]`
- `FLinearColor DelegatePinTypeColor [Delegate pin type color]`
- `FLinearColor DoublePinTypeColor [Double pin type color]`
- `FLinearColor EventNodeTitleColor [Event node title color]`
- `FLinearColor ExecBranchNodeTitleColor [Exec Branch node title color]`
- `FLinearColor ExecSequenceNodeTitleColor [Exec Sequence node title color]`
- `FLinearColor ExecutionPinTypeColor [Execution pin type color]`
- `FLinearColor FloatPinTypeColor [Floating-point pin type color]`
- `float32 ForwardSplineHorizontalDeltaRange [The maximum value to clamp the absolute value of the horizontal distance between endpoints when calculating tangents (when the wire is moving forward)]`
- `FVector2f ForwardSplineTangentFromHorizontalDelta [The amount that the horizontal delta affects the generated tangent handle of splines (when the wire is moving forward)]`
- `FVector2f ForwardSplineTangentFromVerticalDelta [The amount that the vertical delta affects the generated tangent handle of splines (when the wire is moving forward)]`
- `float32 ForwardSplineVerticalDeltaRange [The maximum value to clamp the absolute value of the vertical distance between endpoints when calculating tangents (when the wire is moving forward)]`
- `FLinearColor FunctionCallNodeTitleColor [CallFunction node title color]`
- `FLinearColor FunctionTerminatorNodeTitleColor [Function Terminator node title color]`
- `FLinearColor IndexPinTypeColor [Index pin type color]`
- `FLinearColor Int64PinTypeColor [Integer64 pin type color]`
- `FLinearColor IntPinTypeColor [Integer pin type color]`
- `FLinearColor InterfacePinTypeColor [Interface pin type color]`
- `FLinearColor NamePinTypeColor [Name pin type color]`
- `FLinearColor ObjectPinTypeColor [Object pin type color]`
- `float32 PaddingAbovePin [The amount of padding above a pin (defaults to 4)]`
- `float32 PaddingAutoCollateIncrement [The amount of padding to add in order to auto collate multiple created nodes when using tab context menu (defaults to 20)]`
- `float32 PaddingBelowPin [The amount of padding below a pin (defaults to 4)]`
- `float32 PaddingLeftOfOutput [The amount of horizontal padding towards the center of a node on an output pin (defaults to 10)]`
- `float32 PaddingRightOfInput [The amount of horizontal padding towards the center of a node on an input pin (defaults to 10)]`
- `float32 PaddingTowardsNodeEdge [The amount of padding towards the node edge (defaults to 10, can be negative to make pins overlap or stick out of a node]`
- `EGraphPanningMouseButton PanningMouseButton [Switch between using the right and middle mouse button for panning (defaults to right)]`
- `FLinearColor ParentFunctionCallNodeTitleColor [Parent class function call node title color]`
- `FLinearColor PreviewNodeTitleColor [Preview node title color]`
- `FLinearColor PureFunctionCallNodeTitleColor [Pure function call node title color]`
- `FLinearColor RealPinTypeColor [Real pin type color]`
- `FLinearColor ResultNodeTitleColor [Result node title color]`
- `FLinearColor RotatorPinTypeColor [Rotator pin type color]`
- `FLinearColor SliceLineColor [The color of the line shown while slicing connections]`
- `float32 SliceLineDashLength [The length of each dash in the slice line]`
- `float32 SliceLineThickness [The visual thickness of the slice line, does not affect collision]`
- `FLinearColor SoftClassPinTypeColor [Asset Class pin type color]`
- `FLinearColor SoftObjectPinTypeColor [Asset pin type color]`
- `float32 SplineCloseTolerance [The additional distance around the spline to count as close, preventing other actions if the user just misses the spline when clicking]`
- `float32 SplineHoverTolerance [The distance threshold controlling how close the mouse has to be to the spline in order to trigger a hover response]`
- `FLinearColor StringPinTypeColor [String pin type color]`
- `FLinearColor StructPinTypeColor [Struct pin type color]`
- `FLinearColor TextPinTypeColor [Text pin type color]`
- `FLinearColor TraceAttackColor [The color to display execution wires that were just executed]`
- `float32 TraceAttackWireThickness []`
- `FLinearColor TraceReleaseColor [The color to fade to for execution wires on release]`
- `float32 TraceReleaseWireThickness [The thickness to drop down to during release / for unexecuted wires when debugging]`
- `FLinearColor TraceSustainColor []`
- `float32 TraceSustainWireThickness []`
- `FLinearColor TransformPinTypeColor [Transform pin type color]`
- `FLinearColor VectorPinTypeColor [Vector pin type color]`
- `FLinearColor WildcardPinTypeColor [Wildcard pin type color]`
- `bool bOpenCreateMenuOnBlankGraphAreas [If a key press (default Tab) should open the create node context menu when the mouse is on top of blank areas of the graph (defaults to true)]`
- `bool bShowCommentBubbleWhenZoomedOut [Whether to show a zoom-invariant comment bubble when zoomed out (making the comment node's text readable at any distance)]`
- `bool bTreatSplinesLikePins [If enabled, allows splines to be Alt+Clicked to break them or Ctrl+Dragged to move them as if these actions were taking place on the associated pin.]`
- `bool bUseHighPrecisionMouseMovement [Whether to use high precision mouse movement for more accurate mouse movement without mouse ballistics (defaults to true)]`
- `bool bUseInterpolationWithManualPanning [Whether to interpolate movement when manually panning a graph for smoother movement (defaults to false)]`

---

