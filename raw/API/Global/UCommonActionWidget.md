### UCommonActionWidget


A widget that shows a platform-specific icon for the given input action.

**属性**:

- `FKey DesignTimeKey []`
- `FSlateBrush IconRimBrush`
- `TArray<FDataTableRowHandle> InputActions [List all the input actions that this common action widget is intended to represent.  In some cases you might have multiple actions
that you need to represent as a single entry in the UI.  For example - zoom, might be mouse wheel up or down, but you just need to
show a single icon for Up & Down on the mouse, this solves that problem.]`
- `FOnInputIconUpdated__CommonActionWidget OnInputIconUpdated`
- `FOnInputMethodChanged__CommonActionWidget OnInputMethodChanged`
- `FSlateBrush ProgressMaterialBrush [The material to use when showing held progress, the progress will be sent using the material parameter
defined by ProgressMaterialParam and the value will range from 0..1.]`
- `FName ProgressMaterialParam [The material parameter on ProgressMaterialBrush to update the held percentage.  This value will be 0..1.]`


**方法**:

- `FText GetDisplayText() const`
- `const UInputAction GetEnhancedInputAction() const`
- `FSlateBrush GetIcon() const`  
  End UWidget
- `UMaterialInstanceDynamic GetIconDynamicMaterial()`
- `bool IsHeldAction() const`
- `SetEnhancedInputAction(UInputAction InInputAction)`
- `SetIconRimBrush(FSlateBrush InIconRimBrush)`
- `SetInputAction(FDataTableRowHandle InputActionRow)`
- `SetInputActionBinding(FUIActionBindingHandle BindingHandle)`
- `SetInputActions(TArray<FDataTableRowHandle> NewInputActions)`

---

