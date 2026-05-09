### UNiagaraStatelessModule_InitialMeshOrientation


Set the initial mesh orientation, directly, randomly or by orienting by axis

**属性**:

- `FNiagaraDistributionRangeVector3 MeshAxisToOrient [This represents the Axis on which the model was first imported from your DCC package.
This vector is then rotated in the direction of the Orientation Vector input.
If your mesh was imported on a different axis than X forward, you can change it here.]`
- `ENSMInitialMeshOrientationMode MeshOrientationMode []`
- `FNiagaraDistributionRangeVector3 OrientationVector [Establish an initial orientation around which to yaw, pitch, or roll. Can be overriden with any vector, for instance the normalized velocity vector, to accomplish more elaborate behavior.]`
- `FNiagaraDistributionRangeVector3 Rotation [Rotation in Degrees, this is applied after any other orientation is calculated and in the space of that orientation]`

---

