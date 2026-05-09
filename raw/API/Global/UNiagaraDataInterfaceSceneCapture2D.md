### UNiagaraDataInterfaceSceneCapture2D


Data Interface which can control or read from a scene capture component.

**属性**:

- `FVector AutoMoveOffsetLocation [Location offset when applying auto movement.]`
- `ENDISceneCapture2DOffsetMode AutoMoveOffsetLocationMode [Should we apply the auto move offset in local or world space?]`
- `FRotator AutoMoveOffsetRotation [Rotation offset when applying auto movement.]`
- `ENDISceneCapture2DOffsetMode AutoMoveOffsetRotationMode [How we should apply the rotation]`
- `ESceneCaptureSource ManagedCaptureSource []`
- `float32 ManagedFOVAngle []`
- `TArray<TObjectPtr<AActor>> ManagedHidenActors []`
- `float32 ManagedOrthoWidth []`
- `ECameraProjectionMode ManagedProjectionType []`
- `TArray<TObjectPtr<AActor>> ManagedShowOnlyActors []`
- `ETextureRenderTargetFormat ManagedTextureFormat []`
- `FIntPoint ManagedTextureSize []`
- `FNiagaraUserParameterBinding SceneCaptureUserParameter [When valid should point to either a Scene Capture 2D Component or a Scene Capture 2D Actor.]`
- `ENDISceneCapture2DSourceMode SourceMode [How should we find the scene capture component to use?]`
- `bool bAutoMoveWithComponent [When enabled the scene capture component will be automatically moved to the location of the NiagaraComponent with an optional offset.]`
- `bool bManagedCaptureEveryFrame []`
- `bool bManagedCaptureOnMovement []`
- `bool bManagedHideAttachComponent []`

---

