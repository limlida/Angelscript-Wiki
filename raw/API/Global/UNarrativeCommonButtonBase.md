### UNarrativeCommonButtonBase


The base class for a narrative common UI button. Includes a bit of extra functionality over the base common button.

**属性**:

- `FText ButtonText [The text to display on the buttons text block.]`
- `UNarrativeCommonTextBlock ButtonTextBlock [Optional button text that can be placed on the button.]`
- `ETextJustify TextJustification [The justification for text to display on the buttons text block.]`


**方法**:

- `ForceSetIsSelected(bool bInSelected, bool bAllowSound, bool bBroadcast)`  
  Just a wrapper for SetSelectedInternal, which annoyingly is BP Protected and requires wrapping.
- `SetButtonText(FText InText)`  
  Sets the buttons text block text.

---

