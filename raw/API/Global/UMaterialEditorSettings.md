### UMaterialEditorSettings


**属性**:

- `float32 ContextMenuCategoryWeight [The amount of weight placed on categories that match what the user has typed.]`
- `float32 ContextMenuDescriptionWeight [amount of weight placed on description that match what the user has typed in.]`
- `float32 ContextMenuKeywordWeight [The amount of weight placed on search items keyword.]`
- `float32 ContextMenuNodeTitleWeight [The amount of weight placed on the search items title".]`
- `float32 ContextMenuPercentageMatchWeightMultiplier [A multiplier for how much weight to give something based on the percentage match it is.]`
- `float32 ContextMenuShorterMatchWeight [Increasing this weight will make shorter words preferred.]`
- `float32 ContextMenuStartsWithBonusWeightMultiplier [The multiplier given if the keyword starts with a term the user typed in.]`
- `float32 ContextMenuWholeMatchLocalizedWeightMultiplier [The multiplier given if there is an exact localized match to the search.]`
- `float32 ContextMenuWholeMatchWeightMultiplier [The multiplier given if there is an exact match to the search term.]`
- `int DefaultPreviewHeight [The height (in pixels) of the preview viewport when a material editor is first opened]`
- `int DefaultPreviewWidth [The width (in pixels) of the preview viewport when a material editor is first opened]`
- `FString GPUTarget [The GPU target if the offline shader compiler needs one (Adreno GPU only).]`
- `EOfflineShaderCompiler OfflineCompiler [Offline shader compiler to use.
Mali Offline Compiler: Official website address: https://developer.arm.com/products/software-development-tools/graphics-development-tools/mali-offline-compiler/downloads
Adreno Offline Compiler: Official website address: https://developer.qualcomm.com/software/adreno-gpu-sdk/tools]`
- `FFilePath OfflineCompilerPath [Path to user installed shader compiler that can be used by the material editor to compile and extract shader informations for Android platforms.]`
- `FPreviewBackgroundSettings PreviewBackground [Configures the background shown behind the UI material preview]`
- `bool bAllowIgnoringCompilationErrors [Allow ignoring compilation errors of platform shaders and derived materials.]`
- `bool bDumpAll [Whether to dump stats only or all information to file (Adreno GPU only).]`
- `bool bSaveCompilerStatsFiles [Whether to save offline compiler stats files to Engine\Shaders]`

---

