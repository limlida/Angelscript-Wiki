### UCommonLoadGuard


The Load Guard behaves similarly to a Border, but with the ability to hide its primary content and display a loading spinner
and optional message while needed content is loaded or otherwise prepared.

Use GuardAndLoadAsset to automatically display the loading state until the asset is loaded (then the content widget will be displayed).
For other applications (ex: waiting for an async backend call to complete), you can manually set the loading state of the guard.

**属性**:

- `FOnLoadGuardStateChangedDynamic BP_OnLoadingStateChanged`
- `FSlateBrush LoadingBackgroundBrush [The background brush to display while loading the content]`
- `FText LoadingText [Loading message to display alongside the throbber]`
- `FSlateBrush LoadingThrobberBrush [The loading throbber brush]`
- `TSubclassOf<UCommonTextStyle> TextStyle [Style to apply to the loading message]`
- `EHorizontalAlignment ThrobberAlignment [The horizontal alignment of the loading throbber & message]`
- `FMargin ThrobberPadding [The padding of the loading throbber & message]`
- `bool bShowLoading []`


**方法**:

- `GuardAndLoadAsset(TSoftObjectPtr<UObject> InLazyAsset, FOnAssetLoaded__CommonLoadGuard OnAssetLoaded = FOnAssetLoaded__CommonLoadGuard ( ))`
- `bool IsLoading() const`
- `SetIsLoading(bool bInIsLoading)`
- `SetLoadingText(FText InLoadingText)`

---

