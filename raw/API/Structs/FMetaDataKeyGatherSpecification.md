### FMetaDataKeyGatherSpecification


**属性**:

- `FMetaDataKeyName MetaDataKey [The metadata key for which values will be gathered as text.]`
- `FMetaDataTextKeyPattern TextKeyPattern [The pattern which will be formatted to form the localization key for the metadata value gathered as text.
      Placeholder - Description
      {FieldPath} - The fully qualified name of the object upon which the metadata resides.
      {MetaDataValue} - The value associated with the metadata key.]`
- `FString TextNamespace [The localization namespace in which the gathered text will be output.]`


**方法**:

- `FMetaDataKeyGatherSpecification& opAssign(FMetaDataKeyGatherSpecification Other)`

---

