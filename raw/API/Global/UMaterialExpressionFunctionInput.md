### UMaterialExpressionFunctionInput


**属性**:

- `EBlendInputRelevance BlendInputRelevance [Marks that this input is necessary for blend function use *]`
- `FString Description [The input's description, which will be used as a tooltip on the connector in function call expressions that use this function.]`
- `FName InputName [The input's name, which will be drawn on the connector in function call expressions that use this function.]`
- `EFunctionInputType InputType [Type of this input.
Input code chunks will be cast to this type, and a compiler error will be emitted if the cast fails.]`
- `FVector4f PreviewValue [Value used to preview this input when editing the material function.]`
- `int SortPriority [Controls where the input is displayed relative to the other inputs.]`
- `bool bUsePreviewValueAsDefault [Whether to use the preview value or texture as the default value for this input.]`

---

