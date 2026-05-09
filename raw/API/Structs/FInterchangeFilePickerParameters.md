### FInterchangeFilePickerParameters


**属性**:

- `FString DefaultPath [Set the default open path that the dialog will show to the user.]`
- `TArray<FString> ExtraFormats [Add some extension to the picker. Format text item that way TEXT("fbx;Filmbox")]`
- `FText Title [If not empty, this will override the default title.]`
- `bool bAllowMultipleFiles [If true, the user will be able to select multiple files.]`
- `bool bShowAllFactoriesExtension [If true, the user will be able to select any unreal editor factory + interchange file types.]`


**方法**:

- `FInterchangeFilePickerParameters& opAssign(FInterchangeFilePickerParameters Other)`

---

