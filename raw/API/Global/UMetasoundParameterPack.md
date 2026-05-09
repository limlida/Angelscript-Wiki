### UMetasoundParameterPack


Here is the UObject BlueprintType that can be used in c++ and blueprint code. It holds a FMetasoundParamStorage
instance and can pass it along to the audio system's SetObjectParameter function via an AudioProxy.

**方法**:

- `bool GetBool(FName ParameterName, ESetParamResult& Result) const`
- `float32 GetFloat(FName ParameterName, ESetParamResult& Result) const`
- `int GetInt(FName ParameterName, ESetParamResult& Result) const`
- `FString GetString(FName ParameterName, ESetParamResult& Result) const`
- `bool GetTrigger(FName ParameterName, ESetParamResult& Result) const`
- `bool HasBool(FName ParameterName) const`
- `bool HasFloat(FName ParameterName) const`
- `bool HasInt(FName ParameterName) const`
- `bool HasString(FName ParameterName) const`
- `bool HasTrigger(FName ParameterName) const`
- `ESetParamResult SetBool(FName ParameterName, bool InValue, bool OnlyIfExists = true)`
- `ESetParamResult SetFloat(FName ParameterName, float32 InValue, bool OnlyIfExists = true)`
- `ESetParamResult SetInt(FName ParameterName, int InValue, bool OnlyIfExists = true)`
- `ESetParamResult SetString(FName ParameterName, FString InValue, bool OnlyIfExists = true)`
- `ESetParamResult SetTrigger(FName ParameterName, bool OnlyIfExists = true)`

---

