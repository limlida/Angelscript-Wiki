### FAnimationSetup


**属性**:

- `TSubclassOf<UAnimSharingStateInstance> AnimBlueprint [Animation blueprint to use for playing back the Animation Sequence]`
- `UAnimSequence AnimSequence [Animation Sequence to play for this particular setup]`
- `FPerPlatformBool Enabled [Whether or not this setup is enabled for specific platforms]`
- `FPerPlatformInt NumRandomizedInstances [The number of randomized instances created from this setup, it will create instance with different start time offsets (Length / Number of Instance) * InstanceIndex]`


**方法**:

- `FAnimationSetup& opAssign(FAnimationSetup Other)`

---

