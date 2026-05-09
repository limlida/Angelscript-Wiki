### UInterchangeImportTestPlan


Define a test plan

**属性**:

- `FString Description [Test Description]`
- `UInterchangeImportTestStepImport ImportStep [File Import Step]`
- `TArray<TObjectPtr<UInterchangeImportTestStepReimport>> ReimportStack [Set of re-imports that will follow the above import step]`
- `FSoftObjectPath WorldPath [Level to use for taking Screenshot]`


**方法**:

- `RunThisTest()`  
  Click here to immediately run this single test through the automation framework

---

