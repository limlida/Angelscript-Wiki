### USequenceRecorderActorGroup


**属性**:

- `FName GroupName []`
- `FString SequenceName [The base name of the sequence to record to. This name will also be used to auto-generate any assets created by this recording.]`
- `FDirectoryPath SequenceRecordingBasePath [Base path for this recording. Sub-assets will be created in subdirectories as specified]`
- `ULevelSequence TargetLevelSequence [The level sequence to record into]`
- `bool bDuplicateTargetLevelSequence [Whether we should duplicate the target level sequence and record into the duplicate]`
- `bool bRecordTargetLevelSequenceLength [Whether we should record to the length of the target level sequence]`
- `bool bSpecifyTargetLevelSequence [Whether we should specify the target level sequence or auto-create it]`

---

