### FShapedTextOptions


Common data for all widgets that use shaped text.
Contains the common options that should be exposed for the underlying Slate widget.

**属性**:

- `ETextFlowDirection TextFlowDirection [Which text flow direction should the text within this widget use? (unset to use the default returned by GetDefaultTextFlowDirection)]`
- `ETextShapingMethod TextShapingMethod [Which text shaping method should the text within this widget use? (unset to use the default returned by GetDefaultTextShapingMethod)]`
- `bool bOverride_TextFlowDirection`
- `bool bOverride_TextShapingMethod`


**方法**:

- `FShapedTextOptions& opAssign(FShapedTextOptions Other)`

---

