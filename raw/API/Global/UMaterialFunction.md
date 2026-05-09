### UMaterialFunction


A Material Function is a collection of material expressions that can be reused in different materials

**属性**:

- `FString Description [Description of the function which will be displayed as a tooltip wherever the function is used.]`
- `TArray<FText> LibraryCategoriesText [Categories that this function belongs to in the material function library.
Ideally categories should be chosen carefully so that there are not too many.]`
- `EBlendMode PreviewBlendMode [Determines the blend mode when previewing a material function.]`
- `EMaterialDomain PreviewMaterialDomain [The domain to use when previewing a material function.]`
- `FString UserExposedCaption [Name of the function to be displayed on the node within the material editor instead of the asset name.]`
- `bool bEnableExecWire`
- `bool bEnableNewHLSLGenerator`
- `bool bExposeToLibrary [Whether to list this function in the material function library, which is a window in the material editor that lists categorized functions.]`

---

