### FRigUnit_ChainHarmonicsPerItem


Given a root will drive all items underneath in a chain based harmonics spectrum

**属性**:

- `FRigElementKey ChainRoot`
- `FTransform DrawWorldOffset`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigUnit_ChainHarmonics_Pendulum Pendulum`
- `FRigUnit_ChainHarmonics_Reach Reach`
- `FVector Speed`
- `FRigUnit_ChainHarmonics_Wave Wave`
- `FRuntimeFloatCurve WaveCurve []`
- `bool bDrawDebug`


**方法**:

- `FRigUnit_ChainHarmonicsPerItem& opAssign(FRigUnit_ChainHarmonicsPerItem Other)`

---

