### UMaterialExpressionUserSceneTexture


**属性**:

- `FName UserSceneTexture [User Scene Texture (screen space texture with a user specified name, written by a previous PostProcess shader) to make a lookup into]`
- `bool bClamped [Whether to clamp the texture lookup.  Necessary when sampling a UserSceneTexture at reduced resolution with filtering, to avoid blending out of bounds pixels.]`
- `bool bFiltered [Whether to use point sampled texture lookup (default) or using [bi-linear] filtered (can be slower, avoid faceted lock with distortions)]`

---

