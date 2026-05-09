### FLiveLinkBaseFrameData


Base data structure for each frame coming in for a subject
@note subclass can't contains reference to UObject

**属性**:

- `FLiveLinkMetaData MetaData [Frame's metadata.]`
- `TArray<float32> PropertyValues [Values of the properties defined in the static structure. Use FLiveLinkBaseStaticData.FindPropertyValue to evaluate.]`


**方法**:

- `FLiveLinkBaseFrameData& opAssign(FLiveLinkBaseFrameData Other)`

---

