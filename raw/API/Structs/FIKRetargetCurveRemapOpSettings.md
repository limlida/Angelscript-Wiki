### FIKRetargetCurveRemapOpSettings


**属性**:

- `TArray<FCurveRemapPair> CurvesToRemap [Add pairs of Source/Target curve names to remap. While retargeting, the animation from the source curves
will be redirected to the curves on the target skeletal meshes. Can be used to drive, blendshapes or other downstream systems.
NOTE: By default the IK Retargeter will automatically copy all equivalently named curves from the source to the
target. Remapping is only necessary when the target curve name(s) are different.]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `bool bCopyAllSourceCurves [Whether to copy all curves over to the target animation instance
NOTE: This setting also applies when exporting retargeted animations.
True: all source curves are copied to the target animation instance/asset
False: only remapped curves are copied on the target animation instance/asset]`
- `bool bRemapCurves [Toggle curve remapping on/off]`


**方法**:

- `FIKRetargetCurveRemapOpSettings& opAssign(FIKRetargetCurveRemapOpSettings Other)`

---

