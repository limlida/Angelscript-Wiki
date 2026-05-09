### FRigUnit_ItemHarmonics


Drives an array of items through a harmonics spectrum

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `EEulerRotationOrder RotationOrder`
- `TArray<FRigUnit_Harmonics_TargetItem> Targets [The items to drive.]`
- `FVector WaveAmplitude [The amplitude in degrees per axis]`
- `ERigVMAnimEasingType WaveEase`
- `FVector WaveFrequency`
- `float32 WaveMaximum`
- `float32 WaveMinimum`
- `FVector WaveNoise`
- `FVector WaveOffset`
- `FVector WaveSpeed`


**方法**:

- `FRigUnit_ItemHarmonics& opAssign(FRigUnit_ItemHarmonics Other)`

---

