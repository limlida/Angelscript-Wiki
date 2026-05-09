### FLiveLinkVirtualSubjectBoneAttachment


A bone attachment used by the virtual subjects to attach 2 subjects together by specifying a child and parent bone.

**属性**:

- `FName ChildBone [Bone that will be attached to the parent bone.]`
- `FLiveLinkSubjectName ChildSubject [Subject that will be attached to the parent.]`
- `FVector LocationOffset [Location of the component relative to its parent]`
- `FName ParentBone [Name of the bone in the parent subject that will serve as a parent to the child bone of the child subject.]`
- `FLiveLinkSubjectName ParentSubject [Subject that the child subject will be attached to.]`
- `FRotator RotationOffset [Rotation of the component relative to its parent]`


**方法**:

- `FLiveLinkVirtualSubjectBoneAttachment& opAssign(FLiveLinkVirtualSubjectBoneAttachment Other)`

---

