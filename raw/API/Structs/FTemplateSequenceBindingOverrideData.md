### FTemplateSequenceBindingOverrideData


Template sequence binding override data

This is similar to FMovieSceneBindingOverrideData, but works only for a template sequence's root object,
so we don't need it to store the object binding ID.

**属性**:

- `TWeakObjectPtr<UObject> Object [Specifies the object binding to override.]`
- `bool bOverridesDefault [Specifies whether the default assignment should remain bound (false) or if this should completely override the default binding (true).]`


**方法**:

- `FTemplateSequenceBindingOverrideData& opAssign(FTemplateSequenceBindingOverrideData Other)`

---

