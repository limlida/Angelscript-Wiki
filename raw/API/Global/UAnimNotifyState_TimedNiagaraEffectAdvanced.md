### UAnimNotifyState_TimedNiagaraEffectAdvanced


Same as Timed Niagara Effect but also provides some more advanced abilities at an additional cost.

**属性**:

- `TArray<FCurveParameterPair> AnimCurves [Array of fnames to map Anim Curve names to Niagara Parameters.]`
- `ENiagaraAnimNotifyProgressType NotifyProgressType [How/if we should send progress to the FX component]`
- `FName NotifyProgressUserParameter [The name of your niagara user variable you would like to send the normalized notify progress to.]`
- `bool bApplyRateScaleToProgress [Should we apply the animation rate scale when calculating the elasped time.]`


**方法**:

- `float32 GetNotifyProgress(UMeshComponent MeshComp) const`  
  Returns a 0 to 1 value for the progress of this component along the notify.

---

