### UAssetGuideline


User data that can be attached to assets to check on load for guidlelines (plugins, project settings, etc).

This class intentionally does not accept FText arguments. The project using your bundled asset would need to have
your localization tables, and we currently do not support text table referencing.

**属性**:

- `FName GuidelineName [Name of this guideline, we will only check once per unique guideline name.]`
- `TArray<FString> Plugins [Plugins to check for on load]`
- `TArray<FIniStringValue> ProjectSettings [Project settings to check for on load. Look at your .ini's to populate this.]`

---

