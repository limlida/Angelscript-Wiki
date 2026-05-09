### UMovieSceneNiagaraSystemSpawnSection


**属性**:

- `ENiagaraAgeUpdateMode AgeUpdateMode [Specifies how sequencer should update the age of the controlled niagara system.]`
- `ENiagaraSystemSpawnSectionEndBehavior SectionEndBehavior [Specifies what should happen to the niagara system when section evaluation finishes.]`
- `ENiagaraSystemSpawnSectionEvaluateBehavior SectionEvaluateBehavior [Specifies what should happen to the niagara system when section is evaluating from the 2nd frame until the last frame.]`
- `ENiagaraSystemSpawnSectionStartBehavior SectionStartBehavior [Specifies what should happen to the niagara system from before the section evaluates up until the first frame of the section.]`
- `bool bAllowScalability []`


**方法**:

- `ENiagaraAgeUpdateMode GetAgeUpdateMode() const`
- `bool GetAllowScalability() const`
- `ENiagaraSystemSpawnSectionEndBehavior GetSectionEndBehavior() const`
- `ENiagaraSystemSpawnSectionEvaluateBehavior GetSectionEvaluateBehavior() const`
- `ENiagaraSystemSpawnSectionStartBehavior GetSectionStartBehavior() const`
- `SetAgeUpdateMode(ENiagaraAgeUpdateMode InMode)`
- `SetAllowScalability(bool bInAllowScalability)`
- `SetSectionEndBehavior(ENiagaraSystemSpawnSectionEndBehavior InBehavior)`
- `SetSectionEvaluateBehavior(ENiagaraSystemSpawnSectionEvaluateBehavior InBehavior)`
- `SetSectionStartBehavior(ENiagaraSystemSpawnSectionStartBehavior InBehavior)`

---

