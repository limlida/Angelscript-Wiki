### FLiveLinkLocatorStaticData


Static data for Locator purposes. Contains data about locators that should not change every frame. If data is unlabelled markers, Locator names array must be empty.

**属性**:

- `TArray<FName> LocatorNames`
- `TArray<FName> PropertyNames [Names for each curve values that will be sent for each frame]`
- `bool bUnlabelledData [* Set this to true if you wish to send an unstructured number of locators that can vary from one frame to the next.]`


**方法**:

- `FLiveLinkLocatorStaticData& opAssign(FLiveLinkLocatorStaticData Other)`

---

