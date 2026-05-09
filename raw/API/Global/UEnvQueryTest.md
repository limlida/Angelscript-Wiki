### UEnvQueryTest


**属性**:

- `FAIDataProviderBoolValue BoolValue [Desired boolean value of the test for scoring to occur or filtering test to pass.]`
- `EEnvQueryTestClamping ClampMaxType [How should the upper bound for normalization of the raw test value before applying the scoring formula be determined?
          Should it use the highest value found (tested), the upper threshold for filtering, or a separate specified normalization maximum?]`
- `EEnvQueryTestClamping ClampMinType [How should the lower bound for normalization of the raw test value before applying the scoring formula be determined?
          Should it use the lowest value found (tested), the lower threshold for filtering, or a separate specified normalization minimum?]`
- `EEnvTestFilterType FilterType [Does this test filter out results that are below a lower limit, above an upper limit, or both?  Or does it just look for a matching value?]`
- `FAIDataProviderFloatValue FloatValueMax [Maximum limit (inclusive) of valid values for the raw test value. Higher values will be discarded as invalid.]`
- `FAIDataProviderFloatValue FloatValueMin [Minimum limit (inclusive) of valid values for the raw test value. Lower values will be discarded as invalid.]`
- `EEnvTestFilterOperator MultipleContextFilterOp [Determines filtering operator when context returns multiple items]`
- `EEnvTestScoreOperator MultipleContextScoreOp [Determines scoring operator when context returns multiple items]`
- `EEQSNormalizationType NormalizationType [Specifies how to determine value span used to normalize scores]`
- `FAIDataProviderFloatValue ReferenceValue [When specified gets used to normalize test's results in such a way that the closer a value is to ReferenceValue
    the higher normalized result it will produce. Value farthest from ReferenceValue will be normalized
    to 0, and all the other values in between will get normalized linearly with the distance to ReferenceValue.]`
- `FAIDataProviderFloatValue ScoreClampMax [Maximum value to use to normalize the raw test value before applying scoring formula.]`
- `FAIDataProviderFloatValue ScoreClampMin [Minimum value to use to normalize the raw test value before applying scoring formula.]`
- `EEnvTestScoreEquation ScoringEquation [The shape of the curve equation to apply to the normalized score before multiplying by factor.]`
- `FAIDataProviderFloatValue ScoringFactor [The weight (factor) by which to multiply the normalized score after the scoring equation is applied.]`
- `FString TestComment [Optional comment or explanation about what this test is for.  Useful when the purpose of tests may not be clear,
especially when there are multiple tests of the same type.]`
- `EEnvTestPurpose TestPurpose [The purpose of this test.  Should it be used for filtering possible results, scoring them, or both?]`
- `bool bDefineReferenceValue [When set to true enables usage of ReferenceValue. It's false by default]`

---

