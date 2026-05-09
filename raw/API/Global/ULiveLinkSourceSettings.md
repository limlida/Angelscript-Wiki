### ULiveLinkSourceSettings


Base class for live link source settings (can be replaced by sources themselves)

**属性**:

- `FLiveLinkSourceBufferManagementSettings BufferSettings [How the frame buffers are managed.]`
- `FString ConnectionString [Connection information that is needed by the factory to recreate the source from a preset.]`
- `ELiveLinkSourceMode Mode [The the subject how to create the frame snapshot.
@note A client may evaluate manually the subject in a different mode by using EvaluateFrameAtWorldTime or EvaluateFrameAtSceneTime.]`
- `FLiveLinkSubjectName ParentSubject [Which subject should be used as a synchronization source for this source.
If this is set, this source's subjects will only be rebroadcast when the parent subject receives data.
Additionally this source's subjects' timecode will match the parent's subject received timecode.
This can be useful for synchronizing a higher frequency source to a lower frequency one.]`
- `bool bTransmitEvaluatedData [Whether to rebroadcast evaluted data.]`

---

