### FLocalizationImportDialogueSettings


**属性**:

- `FString ImportedDialogueFolder [Folder in which to create the generated sound waves. This is relative to the root of the L10N language folder (or the root content folder if importing native dialogue as source dialogue).]`
- `FDirectoryPath RawAudioPath [Path to the folder to import the audio from. This folder is expected to contain language sub-folders, which in turn contain the raw WAV files to import.]`
- `bool bImportNativeAsSource [Should the dialogue for the native language be imported as if it were source audio? If false, the native language dialogue will be imported as localized data for the native language.]`


**方法**:

- `FLocalizationImportDialogueSettings& opAssign(FLocalizationImportDialogueSettings Other)`

---

