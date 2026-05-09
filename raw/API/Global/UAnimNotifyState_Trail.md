### UAnimNotifyState_Trail


**属性**:

- `FName FirstSocketName [Name of the first socket defining this trail.]`
- `UParticleSystem PSTemplate [The particle system to use for this trail.]`
- `FName SecondSocketName [Name of the second socket defining this trail.]`
- `FName WidthScaleCurve [Name of the curve to drive the width scale.]`
- `ETrailWidthMode WidthScaleMode [Controls the way width scale is applied. In each method a width scale of 1.0 will mean the width is unchanged from the position of the sockets. A width scale of 0.0 will cause a trail of zero width.
From Centre = Trail width is scaled outwards from the centre point between the two sockets.
From First = Trail width is scaled outwards from the position of the first socket.
From Second = Trail width is scaled outwards from the position of the Second socket.]`
- `bool bRecycleSpawnedSystems`
- `bool bRenderGeometry [If true, render the trail geometry (this should typically be on)]`
- `bool bRenderSpawnPoints [If true, render stars at each spawned particle point along the trail]`
- `bool bRenderTangents [If true, render a line showing the tangent at each spawned particle point along the trail]`
- `bool bRenderTessellation [If true, render the tessellated path between spawned particles]`


**方法**:

- `UParticleSystem OverridePSTemplate(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation) const`

---

