### UCommonLazyWidget


A widget that can async load and create an instance of a UserWidget.

**属性**:

- `FSlateBrush LoadingBackgroundBrush []`
- `FSlateBrush LoadingThrobberBrush [The loading throbber brush]`
- `FOnLoadGuardStateChangedDynamic OnLoadingStateChanged`
- `TSoftClassPtr<UUserWidget> WidgetClass []`


**方法**:

- `UUserWidget GetContent() const`  
  Gets the attached Content which was instanced from an async loaded TSoftClassPtr.
- `bool IsLoading() const`
- `LoadLazyContent()`  
  Loads and creates an instance of the WidgetClass property.
- `SetLazyContent(TSoftClassPtr<UUserWidget> SoftWidget)`  
  Loads and creates an instance of SoftWidget.
- `SetLazyContentWithCallback(TSoftClassPtr<UUserWidget> SoftWidget, FOnWidgetCreated__CommonLazyWidget OnCreatedCallback = FOnWidgetCreated__CommonLazyWidget ( ))`  
  Loads and creates an instance of SoftWidget.

---

