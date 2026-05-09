### UCompositeCorePluginSettings


Settings for the CompositeCore module.

**属性**:

- `TArray<FSoftClassPath> AllowedComponentClasses [Allowed component classes for which users will not be warned if associated primitive cannot immediately be found.]`
- `TArray<FSoftClassPath> DisabledPrimitiveClasses [Primitive component classes that do not support the composite pipeline.]`
- `int SceneViewExtensionPriority [Composite (scene view extension) post-processing priority, which defaults to before OpenColorIO.]`
- `bool bApplyFXAA [When enabled, FXAA is applied onto the separate composited render. Quality is controlled with "r.FXAA.Quality". (Maps to "CompositeCore.ApplyFXAA" console variable).]`
- `bool bApplyPreExposure [When enabled, the scene main render pre-exposure is applied onto the separate composited render. This can be used to match exposure to the scene. (Maps to "CompositeCore.ApplyPreExposure" console variable).]`

---

