### ULiveLinkSubjectSettings


Base class for live link subject settings

**属性**:

- `ULiveLinkFrameInterpolationProcessor InterpolationProcessor [The interpolation processor the subject will use.]`
- `TArray<TObjectPtr<ULiveLinkFramePreProcessor>> PreProcessors [List of available preprocessor the subject will use.]`
- `ULiveLinkSubjectRemapper Remapper [Remapper used to modify incoming static and frame data for a subject.]`
- `TArray<TObjectPtr<ULiveLinkFrameTranslator>> Translators [List of available translator the subject can use.]`
- `bool bRebroadcastSubject [If enabled, rebroadcast this subject]`

---

