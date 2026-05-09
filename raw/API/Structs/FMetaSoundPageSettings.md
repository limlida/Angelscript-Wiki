### FMetaSoundPageSettings


**属性**:

- `FPerPlatformBool CanTarget [When true, page asset data (i.e. graphs and input defaults) can be targeted
for the most applicable platform/platform group. If associated asset data is
defined, will always be cooked. If false, asset page data is only cooked if it is
resolved to from a higher-indexed page setting and is not set to explicitly
"ExcludeFromCook".]`
- `FPerPlatformBool ExcludeFromCook [When true, exclude page data when cooking from the assigned platform(s)/platform group(s).
If false, page data may or may not be included in cook depending on whether or not the given
page data is required in order to ensure a value is always resolved for the cook platform target(s).
(Ignored if 'Targetable' is true for most applicable platform/platform group).]`
- `FName Name [Name of this page's setting to be displayed in editors and used for identification from Blueprint/native API.]`
- `bool bIsDefaultPage [Just used to inform edit condition to enable/disable exclude from cook. Maintained by ConformPageSettings on object load/mutation.
EditCondition meta mark-up is hack to avoid boolean being default added to name field]`


**方法**:

- `FMetaSoundPageSettings& opAssign(FMetaSoundPageSettings Other)`

---

