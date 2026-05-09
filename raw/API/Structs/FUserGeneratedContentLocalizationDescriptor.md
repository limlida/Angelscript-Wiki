### FUserGeneratedContentLocalizationDescriptor


Minimal descriptor needed to generate a localization target for UGC localization.

**属性**:

- `TArray<FString> CulturesToGenerate [The languages that we should generate localization data for.
@note Will implicitly always contain the native language during export/compile.]`
- `FString NativeCulture [The language that the source text is authored in.
@note You shouldn't change this once you start to localize your text.]`
- `EPortableObjectFormat PoFormat [What format of PO file should we use?
@note You can adjust this later and we'll attempt to preserve any existing localization data by importing with the old setting prior to export.]`


**方法**:

- `FUserGeneratedContentLocalizationDescriptor& opAssign(FUserGeneratedContentLocalizationDescriptor Other)`

---

