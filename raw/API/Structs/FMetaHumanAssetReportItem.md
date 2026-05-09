### FMetaHumanAssetReportItem


A line in a report representing some Info, a Warning or an Error. Can optionally reference a specific item or file. *

**属性**:

- `FText Message [The message to display to the user]`
- `const UObject ProjectItem [The relevant object (if any) in the project to which this message relates]`
- `FString SourceItem [The file path (if any) to which this message relates]`


**方法**:

- `FMetaHumanAssetReportItem& opAssign(FMetaHumanAssetReportItem Other)`

---

