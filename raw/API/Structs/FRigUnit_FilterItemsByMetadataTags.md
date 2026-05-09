### FRigUnit_FilterItemsByMetadataTags


Filters an item array by a list of tags

**属性**:

- `bool Inclusive [If set to true only items with ALL of tags will be returned,
if set to false items with ANY of the tags will be removed]`
- `TArray<FRigElementKey> Items [The items to filter]`
- `ERigMetaDataNameSpace NameSpace [Defines in which namespace the metadata will be looked up]`
- `TArray<FRigElementKey> Result [The results of the filter]`
- `TArray<FName> Tags [The tags to find]`


**方法**:

- `FRigUnit_FilterItemsByMetadataTags& opAssign(FRigUnit_FilterItemsByMetadataTags Other)`

---

