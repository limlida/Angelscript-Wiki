### UNiagaraValidationRule_UserDataInterfaces


This validation rule checks to see if you have exposed user data interfaces.

**属性**:

- `TArray<TSubclassOf<UNiagaraDataInterface>> AllowDataInterfaces [List data interfaces that we always allow.]`
- `TArray<TSubclassOf<UNiagaraDataInterface>> BannedDataInterfaces [List data interfaces to validate against, if this list is empty all data interfaces will be included.]`
- `ENiagaraValidationSeverity Severity [How do we want to repro the error in the stack]`
- `bool bOnlyIncludeExposedUObjects [Only include data interfaces that contain exposed UObject properties in them.]`

---

