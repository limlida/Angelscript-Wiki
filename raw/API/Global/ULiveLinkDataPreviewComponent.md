### ULiveLinkDataPreviewComponent


An instance static mesh component for drawing LiveLink subject data in-level. Support drawing Transforms, Locators, Skeletons and Cameras

**属性**:

- `ELiveLinkVisualBoneType BoneVisualType [Type of bone visualization - joint or bone.]`
- `FLiveLinkSubjectName SubjectName [The Live Link subject this component will preview.]`
- `bool bDrawLabels [Bool to control visibility of labels.]`
- `bool bEvaluateLiveLink [Bool to control animation evaluation.]`


**方法**:

- `SetDrawLabels(bool bNewDrawLabel)`  
  Show or Hide Labels
@param bNewDrawLabel New lable visiblity..
        //TODO: not yet implemented, waiting on slate immediate mode
- `SetEvaluateLiveLinkData(bool bNewEvaluateLiveLink)`  
  Stop/Start animation updates.
@param bNewEvaluateLiveLink New evaluation state.

---

