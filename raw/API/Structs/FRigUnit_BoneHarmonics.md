### FRigUnit_BoneHarmonics


Performs point based simulation

**属性**:

- `TArray<FRigUnit_BoneHarmonics_BoneTarget> Bones [The bones to drive.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `EEulerRotationOrder RotationOrder`
- `FVector WaveAmplitude [The amplitude in degrees per axis]`
- `ERigVMAnimEasingType WaveEase`
- `FVector WaveFrequency`
- `float32 WaveMaximum`
- `float32 WaveMinimum`
- `FVector WaveNoise`
- `FVector WaveOffset`
- `FVector WaveSpeed`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_BoneHarmonics& opAssign(FRigUnit_BoneHarmonics Other)`

---

