### ANiagaraPreviewGrid


**属性**:

- `UNiagaraPreviewAxis PreviewAxisX [Object controlling behavior varying on the X axis.]`
- `UNiagaraPreviewAxis PreviewAxisY [Object controlling behavior varying on the Y axis.]`
- `TSubclassOf<ANiagaraPreviewBase> PreviewClass [Class used to for previews in this grid.]`
- `ENiagaraPreviewGridResetMode ResetMode []`
- `float32 SpacingX [The default spacing between previews in X if the axis does not override it.]`
- `float32 SpacingY [The default spacing between previews if the axis does not override it.]`
- `UNiagaraSystem System []`


**方法**:

- `ActivatePreviews(bool bReset)`  
  AActor Interface End
- `DeactivatePreviews()`
- `GetPreviews(TArray<UNiagaraComponent>& OutPreviews)`
- `SetPaused(bool bPaused)`

---

