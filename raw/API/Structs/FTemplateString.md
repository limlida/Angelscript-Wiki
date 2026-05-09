### FTemplateString


Structure for templated strings that are displayed in the editor with an optional set of valid args.

**属性**:

- `FText Resolved [The (localizable) resolved text, used to persist the result.
This is especially useful when resolution isn't always available, or is static (editor vs. runtime, for example)]`
- `FString Template [The template string.]`


**方法**:

- `FTemplateString& opAssign(FTemplateString Other)`

---

