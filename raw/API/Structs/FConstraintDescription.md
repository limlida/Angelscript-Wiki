### FConstraintDescription


A description of how to apply a simple transform constraint

**属性**:

- `FFilterOptionPerAxis RotationAxes`
- `FFilterOptionPerAxis ScaleAxes`
- `FFilterOptionPerAxis TranslationAxes`
- `bool bParent [this does composed transform - where as individual will accumulate per component]`
- `bool bRotation`
- `bool bScale`
- `bool bTranslation`


**方法**:

- `FConstraintDescription& opAssign(FConstraintDescription Other)`

---

