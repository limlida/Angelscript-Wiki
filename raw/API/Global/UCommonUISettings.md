### UCommonUISettings


**属性**:

- `ECommonButtonAcceptKeyHandling CommonButtonAcceptKeyHandling [How should CommonButton widgets handle SlateNavigation Accept actions?]`
- `TSoftObjectPtr<UObject> DefaultImageResourceObject [The Default Image Resource, newly created CommonImage Widgets will use this style.]`
- `TSoftClassPtr<UCommonUIRichTextData> DefaultRichTextDataClass [The Default Data for rich text to show inline icon and others.]`
- `TSoftObjectPtr<UMaterialInterface> DefaultThrobberMaterial [The Default Throbber Material, newly created CommonLoadGuard Widget will use this style.]`
- `TArray<FGameplayTag> PlatformTraits [The set of traits defined per-platform (e.g., the default input mode, whether or not you can exit the application, etc...)]`
- `bool bAutoLoadData [Controls if the data referenced is automatically loaded.
If False then game code must call LoadData() on it's own.]`

---

