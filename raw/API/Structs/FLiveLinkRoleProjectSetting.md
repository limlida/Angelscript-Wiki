### FLiveLinkRoleProjectSetting


Settings for LiveLinkRole.

**属性**:

- `TSubclassOf<ULiveLinkFrameInterpolationProcessor> FrameInterpolationProcessor [The interpolation to use for the subject. If null, no interpolation will be performed.]`
- `TArray<TSubclassOf<ULiveLinkFramePreProcessor>> FramePreProcessors [The pre processors to use for the subject.]`
- `TSubclassOf<ULiveLinkRole> Role [The role of the current setting.]`
- `TSubclassOf<ULiveLinkSubjectSettings> SettingClass [The settings class to use for the subject. If null, LiveLinkSubjectSettings will be used by default.]`


**方法**:

- `FLiveLinkRoleProjectSetting& opAssign(FLiveLinkRoleProjectSetting Other)`

---

