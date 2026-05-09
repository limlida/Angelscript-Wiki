### FRetargetIKChainSettings


**属性**:

- `bool ApplyPelvisOffsetToSourceGoals [Default false. When true, the source goal locations are affected by the target pelvis motion.
NOTE: this setting applies all offsets generated in the Pelvis Motion Op.
      If no Pelvis Motion Op is present, or if the "Affect IK" weights in the Pelvis Motion Op are zero, then this setting has no effect.]`
- `float BlendToSource [Range 0 to 1. Default 0. Blends IK goal transform from retargeted transform (0) to source bone transform (1).
At 0 the goal is placed at the retargeted location and rotation.
At 1 the goal is placed at the location and rotation of the source chain's end bone.]`
- `float BlendToSourceRotation [Range 0 to 1. Default 0. Blends the rotational component of BlendToSource on/off.
At 0 the goal is oriented to the retargeted rotation.
At 1 the goal is oriented to the source chain's end bone rotation.]`
- `float BlendToSourceTranslation [Range 0 to 1. Default 1. Blends the translational component of BlendToSource on/off.
At 0 the goal is placed at the retargeted location.
At 1 the goal is placed at the location of the source chain's end bone.]`
- `FVector BlendToSourceWeights [Range 0 to 1. Default 1. Weight each axis separately when using Blend To Source.
At 0 the goal is placed at the retargeted location.
At 1 the goal is placed at the location of the source chain's end bone.]`
- `bool EnableIK [Whether to modify the location of the IK goal on this chain. Default is true.
NOTE: This only has an effect if the chain has an IK Goal assigned to it in the Target IK Rig asset.
NOTE: If off, and this chain has an IK Goal, the IK will still be evaluated, but the Goal is set to the input bone location (from the FK pass).]`
- `float Extension [Range 0 to 5. Default 1. Brings IK goal closer (0) or further (1+) from origin of chain.
At 0 the effector is placed at the origin of the chain (ie Shoulder, Hip etc).
At 1 the effector is left at the end of the chain (ie Wrist, Foot etc)
Values in-between 0-1 will slide the effector along the vector from the start to the end of the chain.
Values greater than 1 will stretch the chain beyond the retargeted length.]`
- `float ScaleVertical [Range 0 to infinity. Default 1. Scales the vertical component of the IK goal's position.]`
- `FVector StaticLocalOffset [Default 0, 0, 0. Apply a static local-space offset to IK goal position.]`
- `FVector StaticOffset [Default 0, 0, 0. Apply a static global-space offset to IK goal position.]`
- `FRotator StaticRotationOffset [Default 0, 0, 0. Apply a static local-space offset to IK goal rotation.]`
- `FName TargetChainName [The name of the TARGET chain to transfer animation onto.]`


**方法**:

- `FRetargetIKChainSettings& opAssign(FRetargetIKChainSettings Other)`

---

