### UTargetingTransformProvider


Our targeting transform uses instanced objects so we can de-couple targeting behavior from the combat ability, since we need more of a composition based approach rather than inheritance based for GAS Combat abilities.

**方法**:

- `FTransform ProvideTargetingTransform(const AController Controller) const`  
  Provide a targeting transform that combat gameplay abilities can use to specify targeting without needing lots of code.

---

