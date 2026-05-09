### UEditorUtilityWidget


**属性**:

- `FString HelpText`
- `FText TabDisplayName [The display name for tabs spawned with this widget]`
- `bool bAlwaysReregisterWithWindowsMenu [Should this widget always be re-added to the windows menu once it's opened]`
- `bool bAutoRunDefaultAction [Should this blueprint automatically run OnDefaultActionClicked, or should it open up a details panel to edit properties and/or offer multiple buttons]`
- `bool bRunEditorUtilityOnStartup [Run this editor utility on start-up (after asset discovery)?]`


**方法**:

- `UWidget FindChildWidgetByName(FName WidgetName) const`
- `Run()`  
  The default action called when the widget is invoked if bAutoRunDefaultAction=true (it is never called otherwise)

---

