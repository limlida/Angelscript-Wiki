### UInterchangeSourceData


* Helper class to be able to read different source data
* File on disk
* HTTP URL (TODO)
* Memory buffer (TODO)
* Stream (TODO)

**方法**:

- `TArray<FString> GetAllContextObjectTags() const`
- `UObject GetContextObjectByTag(FString Tag) const`
- `FString GetFilename() const`
- `RemoveAllContextObjects() const`
- `SetContextObjectByTag(FString Tag, UObject Object) const`
- `bool SetFilename(FString InFilename)`

---

