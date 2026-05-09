### FSlatePostSettings


Settings for a particular Slate Post RT.
Notably if enabled & blur by default. To be updated with additional effects & to be expandable in game code / settings.

**属性**:

- `TSubclassOf<USlateRHIPostBufferProcessor> PostProcessorClass [Copy of actually loaded post processor class]`
- `ESlatePostResolution Resolution [Resolution of the post buffer]`
- `bool bEnabled [Should this post buffer be enabled for updating]`


**方法**:

- `FSlatePostSettings& opAssign(FSlatePostSettings Other)`

---

