### ULiveLinkVirtualSubject


A Virtual subject is made up of one or more real subjects from a source

**属性**:

- `TArray<TObjectPtr<ULiveLinkFrameTranslator>> FrameTranslators [List of available translator the subject can use.]`
- `TArray<FLiveLinkSubjectName> Subjects [Names of the real subjects to combine into a virtual subject]`
- `FLiveLinkSubjectName SyncSubject [If set, the virtual subject will only update and transmit data when the sync subject receives new data.]`
- `bool bRebroadcastSubject [If enabled, rebroadcast this subject]`

---

