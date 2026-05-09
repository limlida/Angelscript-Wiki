### UMetaHumanComponentBase


**属性**:

- `FString BodyComponentName []`
- `FString FaceComponentName [Face]`
- `FMetaHumanCustomizableBodyPart Feet []`
- `FMetaHumanCustomizableBodyPart Legs []`
- `int NeckCorrectivesLODThreshold [* Max LOD level where neck correctives (pose drivers) are evaluated.
* For example if you have the threshold set to 2, it will evaluate until including LOD 2 (based on 0 index). In case the LOD level gets set to 3, it will stop evaluating neck correctives.
* Setting it to -1 will always evaluate it and disable LODing.]`
- `int NeckProcControlRigLODThreshold [* Max LOD level where the neck procedural control rig is evaluated.
* For example if you have the threshold set to 2, it will evaluate until including LOD 2 (based on 0 index). In case the LOD level gets set to 3, it will stop evaluating the neck procedural control rig.
* Setting it to -1 will always evaluate it and disable LODing.]`
- `int RigLogicLODThreshold [* Max LOD level where Rig Logic is evaluated.
* For example if you have the threshold set to 2, it will evaluate until including LOD 2 (based on 0 index). In case the LOD level gets set to 3, it will stop evaluating Rig Logic.
* Setting it to -1 will always evaluate it and disable LODing.]`
- `FMetaHumanCustomizableBodyPart Torso [Body Parts]`
- `bool bEnableBodyCorrectives [* Enable evaluation of the body procedural control rig, the head movement IK control rig and the arm and finger pose drivers.
* When enabled, evaluation for LODs can still be controlled via the Body LOD threshold.
* When disabled, the body procedural control rig, the head movement IK control rig and the arm and finger pose drivers will not be evaluated which will result in higher performance but decreases mesh deformation quality.]`
- `bool bEnableNeckCorrectives [* Enable evaluation of neck correctives.
* When enabled, evaluation for LODs can still be controlled via the LOD threshold.
* When disabled, neck correctives will not be evaluated which will result in higher performance but decreases mesh deformation quality.]`
- `bool bEnableNeckProcControlRig [* Enable evaluation of the neck procedural control rig.
* When enabled, evaluation for LODs can still be controlled via the LOD threshold.
* When disabled, the neck procedural control rig will not be evaluated which will result in higher performance but decreases mesh deformation quality.]`

---

