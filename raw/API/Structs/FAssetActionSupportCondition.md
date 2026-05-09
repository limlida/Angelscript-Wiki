### FAssetActionSupportCondition


**属性**:

- `FString FailureReason [This is the failure reason to reply to the user with if the condition above fails.
If you fill in the reason, it will override the default failure text in the tooltip for the function menu option.]`
- `FString Filter [This is a content browser styled filter.  For example, ..._N AND VirtualTextureStreaming=FALSE, would require that
asset tag VirtualTextureStreaming be false, and the asset name end in _N.

You can learn more about the content browser search syntax in the "Advanced Search Syntax" documentation.]`
- `bool bShowInMenuIfFilterFails [If this filter does not pass, show the corresponding functions from the menu anyways.
If true, the menu option will display with the error tooltip, but be disabled.
If false, the menu options will be removed entirely.]`


**方法**:

- `FAssetActionSupportCondition& opAssign(FAssetActionSupportCondition Other)`

---

