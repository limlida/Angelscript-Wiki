### UPrimaryAssetLabel


A seed file that is created to mark referenced assets as part of this primary asset

**属性**:

- `FCollectionReference AssetCollection [Collection to load asset references out of]`
- `TArray<TSoftObjectPtr<UObject>> ExplicitAssets [List of manually specified assets to label]`
- `TArray<TSoftClassPtr<UObject>> ExplicitBlueprints [List of manually specified blueprint assets to label]`
- `FPrimaryAssetRules Rules [Management rules for this specific asset, if set it will override the type rules]`
- `bool bIncludeRedirectors [If true, redirectors found by the AssetLabel's explicit assets or directory will be labeled. If false, redirectors will be skipped.]`
- `bool bIsRuntimeLabel [Set to true if the label asset itself should be cooked and available at runtime. This does not affect the assets that are labeled, they are set with cook rule]`
- `bool bLabelAssetsInMyDirectory [True to Label everything in this directory and sub directories]`

---

