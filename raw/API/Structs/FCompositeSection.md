### FCompositeSection


Section data for each track. Reference of data will be stored in the child class for the way they want
AnimComposite vs AnimMontage have different requirement for the actual data reference
This only contains composite section information. (vertical sequences)

**属性**:

- `EAnimLinkMethod LinkMethod [The method we are using to calculate our times]`
- `TArray<TObjectPtr<UAnimMetaData>> MetaData [Meta data that can be saved with the asset

You can query by GetMetaData function]`
- `FName SectionName [Section Name]`
- `int SlotIndex [The slot index we are currently using within LinkedMontage]`


**方法**:

- `FCompositeSection& opAssign(FCompositeSection Other)`

---

