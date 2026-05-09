### ALiveLinkDataPreview


Actor for visualizing LiveLink data in the viewport/level editor

**属性**:

- `UBillboardComponent BillboardComponent [The billboard component showing the actor's root position.]`
- `TArray<FLiveLinkSubjectName> Subjects [The list of Live Link subjects this actor will draw.]`
- `bool bDrawLabels`
- `bool bEvaluateLiveLink [Enable Live Link evaluation]`


**方法**:

- `InitializeSubjects()`  
  Initialize all the subjects.
- `SetEnableLiveLinkData(bool bNewEvaluate)`  
  Stop Start animation evaluation.
@param bNewEvaluate Enable Live Link Evaluation

---

