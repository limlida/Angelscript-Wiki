### UCommonUserWidget


**属性**:

- `bool bConsumePointerInput [Set this to true if you don't want any pointer (mouse and touch) input to bubble past this widget]`
- `bool bDisplayInActionBar [True to generally display this widget's actions in the action bar, assuming it has actions.]`


**方法**:

- `RegisterScrollRecipientExternal(const UWidget AnalogScrollRecipient)`  
  Add a widget to the list of widgets to get scroll events for this input root node
- `SetConsumePointerInput(bool bInConsumePointerInput)`  
  Sets whether or not this widget will consume ALL pointer input that reaches it
- `UnregisterScrollRecipientExternal(const UWidget AnalogScrollRecipient)`  
  Remove a widget from the list of widgets to get scroll events for this input root node

---

