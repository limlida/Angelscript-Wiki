### USkeletalMeshSocket


**属性**:

- `FName BoneName []`
- `FVector RelativeLocation`
- `FRotator RelativeRotation`
- `FVector RelativeScale`
- `FName SocketName [Defines a named attachment location on the USkeletalMesh.
These are set up in editor and used as a shortcut instead of specifying
everything explicitly to AttachComponent in the SkeletalMeshComponent.
The Outer of a SkeletalMeshSocket should always be the USkeletalMesh.]`
- `bool bForceAlwaysAnimated [If true then the hierarchy of bones this socket is attached to will always be
          evaluated, even if it had previously been removed due to the current lod setting]`


**方法**:

- `FTransform GetSocketLocalTransform() const`  
  returns FTransform of Socket local transform
- `FVector GetSocketLocation(const USkeletalMeshComponent SkelComp) const`
- `InitializeSocketFromLocation(const USkeletalMeshComponent SkelComp, FVector WorldLocation, FVector WorldNormal)`  
  Sets BoneName, RelativeLocation and RelativeRotation based on closest bone to WorldLocation and WorldNormal
- `SetSocketLocalTransform(FTransform InTransform)`  
  Sets the relative transform parameters of the socket to the given local FTransform
- `SetSocketParent(USkeletalMesh InSkeletalMesh, FName InBoneName)`  
  Change the sockets parent to a new bone. The skeleton is used to validate that the bone exists

---

