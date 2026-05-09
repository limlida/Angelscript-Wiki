### UMetaHumanVerificationRuleCollection


A collection of Rules which make up a verification test for a class of MetaHuman asset compatibility, for example
groom compatibility, clothing compatibility, animation compatibility etc.

**方法**:

- `AddVerificationRule(UMetaHumanVerificationRuleBase Rule)`  
  Adds a rule to this collection
- `UMetaHumanAssetReport ApplyAllRules(const UObject Target, UMetaHumanAssetReport Report, FMetaHumanVerificationOptions Options) const`  
  Runs all registered rules against the Target. Compiles the results in OutReport.

@param Target The root UObject of the asset that is being verified
@param Report The report which should be updated with the results of the tests
@param Options The options struct which may contain relevant options for the verification rule

---

