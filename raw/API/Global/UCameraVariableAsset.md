### UCameraVariableAsset


The base asset class for all camera variables.

**属性**:

- `bool bAutoReset [Whether this variable auto-resets to its default value every frame.]`
- `bool bIsPreBlended [Whether this variable should be pre-blended.

Pre-blending means that if two blending camera rigs share this variable,
each of their values will be blended in a first evaluation pass, and then
both camera rigs will evaluate with the same blended value.]`

---

