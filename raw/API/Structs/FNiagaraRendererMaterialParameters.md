### FNiagaraRendererMaterialParameters


Parameters to apply to the material, these are both constant and dynamic bindings
Having any bindings set will cause a MID to be generated

**属性**:

- `TArray<FNiagaraMaterialAttributeBinding> AttributeBindings []`
- `TArray<FNiagaraRendererMaterialScalarParameter> ScalarParameters []`
- `TArray<FNiagaraRendererMaterialStaticBoolParameter> StaticBoolParameters []`
- `TArray<FNiagaraRendererMaterialTextureParameter> TextureParameters []`
- `TArray<FNiagaraRendererMaterialVectorParameter> VectorParameters []`


**方法**:

- `FNiagaraRendererMaterialParameters& opAssign(FNiagaraRendererMaterialParameters Other)`

---

