### UEnvQueryGenerator


**属性**:

- `EEnvQueryResultNormalizationOption EnvQueryResultNormalizationOption [Should the scores be normalized or not before returning the result.
If set to UEnvQueryResultNormalizationOption::Default, only runmode EEnvQueryRunMode::AllMatching is normalized and the other modes are not
If set to UEnvQueryResultNormalizationOption::Normalized, all run modes will be normalized.
If set to UEnvQueryResultNormalizationOption::Unaltered, all run modes will NOT be normalized.]`
- `FString OptionName []`
- `bool bAutoSortTests [if set, tests will be automatically sorted for best performance before running query]`
- `bool bCanRunAsync [To be overwritten by MassEnvQueryGenerators to indicate that they will run asynchronously.]`

---

