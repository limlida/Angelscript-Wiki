### FSmartObjectAnnotation_SlotUserCollision


Annotation to check if a smart object user can stand on the slot without overlaps.
Uses validation filter to get the user capsule for collisions testing, or use specific capsule defined in the annotation.

**属性**:

- `FSmartObjectUserCapsuleParams Capsule [Dimensions of the capsule to test at the slot location.]`
- `bool bUseUserCapsuleSize [If true, the user capsule size is got from validation filter and used for testing.]`


**方法**:

- `FSmartObjectAnnotation_SlotUserCollision& opAssign(FSmartObjectAnnotation_SlotUserCollision Other)`

---

