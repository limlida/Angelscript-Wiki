### ANiagaraEditorPreviewActor


Niagara Particle System Actor for previewing in the editor will not exist in a cooked packagge or PIE

**属性**:

- `TOptional<float> CircleEndRadius []`
- `float CircleRadius []`
- `TOptional<float> CircleRotationRate []`
- `TArray<FVector> CustomShapePoints []`
- `float MotionDuration [The time it takes for us to complete a cycle of the motion in seconds.]`
- `ENiagaraEditorPreviewActorShapeType MotionType [What motion type we want to preview view]`
- `UNiagaraComponent NiagaraComponent`
- `ENiagaraEditorPreviewActorPlaybackType PlaybackType []`
- `ENiagaraEditorPreviewActorRotationMode RotationMode []`
- `FRotator ShapeRotation []`
- `float ShapeScale []`
- `float ShapeTension []`
- `FVector2D SquareSize []`
- `FVector2D TriangleSize []`


**方法**:

- `CalculateLocation(float MotionTime, FVector& OutLocation)`  
  End of AActor interface
- `CalculateRotation(float MotionTime, FQuat& OutRotation)`

---

