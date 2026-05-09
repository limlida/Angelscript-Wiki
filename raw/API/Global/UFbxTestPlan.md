### UFbxTestPlan


Container for detailing collision automated test data.

**属性**:

- `EFBXTestPlanActionType Action [Tell the system what we want to do]`
- `TArray<FFbxTestPlanExpectedResult> ExpectedResult [Expected preset type]`
- `UFbxImportUI ImportUI [Options use for this test plan, Transient because we manually serialize the options.]`
- `int LodIndex [The LOD index in case the user choose to add or reimport a LOD]`
- `FString TestPlanName [Name of the Test Plan]`
- `bool bDeleteFolderAssets [If true the test will delete all assets create in the import folder]`

---

