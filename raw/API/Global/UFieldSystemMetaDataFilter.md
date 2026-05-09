### UFieldSystemMetaDataFilter


Filter the particles on which the field will be applied

**属性**:

- `EFieldFilterType FilterType [Filter state type used to select the particles on which the field will be applied]`
- `EFieldObjectType ObjectType [Filter object type used to select the particles on which the field will be applied]`
- `EFieldPositionType PositionType [Specify which position type will be used for the field evaluation]`


**方法**:

- `UFieldSystemMetaDataFilter SetMetaDataFilterType(EFieldFilterType FilterType, EFieldObjectType ObjectType, EFieldPositionType PositionType)`  
  Set the particles filter type
@param    FilterType State type used to select the state particles on which the field will be applied
@param    ObjectType Object type used to select the type of objects(rigid, cloth...) on which the field will be applied
@param    PositionType Position type used to compute the samples positions

---

