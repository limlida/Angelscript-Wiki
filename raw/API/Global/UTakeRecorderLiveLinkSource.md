### UTakeRecorderLiveLinkSource


A recording source that records LiveLink

**属性**:

- `FName SubjectName [Name of the subject to record]`
- `bool bDiscardSamplesBeforeStart [If true discard livelink samples with timecode that occurs before the start of recording]`
- `bool bReduceKeys [Whether to perform key-reduction algorithms as part of the recording]`
- `bool bSaveSubjectSettings [Whether we should save subject settings in the the live link section. If not, we'll create one with subject information with no settings]`
- `bool bUseSourceTimecode [Whether the livelink subject's timecode or the system time should be used for the recording.
@note If set, the livelink subject's timecode will be used even if it does not match the engine timecode.]`

---

