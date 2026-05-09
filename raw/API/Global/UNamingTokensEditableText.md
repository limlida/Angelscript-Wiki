### UNamingTokensEditableText


Editable text for displaying tokenized strings in either their unevaluated or resolved form.

**属性**:

- `FTextBlockStyle ArgumentStyle [The font to apply to the non-resolved tokens.]`
- `FSlateColor BackgroundColor [Set the background color of the border image.]`
- `TArray<TObjectPtr<UObject>> Contexts [Contexts to include during our evaluation.]`
- `FNamingTokenFilterArgs FilterArgs [Set naming token filter args to use during token evaluation.]`
- `FOnPreEvaluateNamingTokens__NamingTokensEditableText OnPreEvaluateNamingTokens [Called before naming token evaluation.]`
- `bool bCanDisplayResolvedText [If the resolved text can be displayed.]`
- `bool bDisplayBorderImage [Display the border image.]`
- `bool bDisplayErrorMessage [Display an error message when tokens aren't properly formatted.]`
- `bool bDisplayResolvedTextInDesigner [If the resolved text should display while designing in the UMG window. If false, only the tokenized text will be displayed in the UMG designer.]`
- `bool bDisplayTokenIcon [Display the token icon in the text box.]`
- `bool bEnableSuggestionDropdown [If the dropdown suggestion box should be enabled.]`
- `bool bIsMultiline [If this text box is configured for multiline.]`


**方法**:

- `bool GetCanDisplayResolvedText() const`  
  Get if we can display resolved text.
- `bool GetDisplayBorderImage() const`  
  If the border image should be displayed.
- `bool GetDisplayErrorMessage() const`  
  If the error icon should be displayed.
- `bool GetDisplayTokenIcon() const`  
  If the token icon should be displayed.
- `FText GetResolvedText() const`  
  Retrieve the evaluated text.
- `FText GetTokenizedText() const`  
  Retrieve the raw token text.
- `SetBackgroundColor(FSlateColor InColor)`  
  Set the background color.
- `SetCanDisplayResolvedText(bool bValue)`  
  Set whether we can display resolved text or not.
- `SetContexts(TArray<UObject> InContexts)`  
  Set the contexts to use during evaluation.
- `SetDisplayBorderImage(bool bValue)`  
  Set the background color of the border image.
- `SetDisplayErrorMessage(bool bValue)`  
  Set whether error messages are displayed for token formatting.
- `SetDisplayTokenIcon(bool bValue)`  
  Set whether the token icon is displayed.
- `SetWidgetArgumentStyle(FTextBlockStyle InWidgetStyle)`  
  Sets the argument style to use for the widget.

---

