### FDataRegistryCachePolicy


Rules to use when deciding how to unload registry items and related assets

**属性**:

- `float32 ForceKeepSeconds [Any item accessed within this amount of seconds is never unloaded]`
- `float32 ForceReleaseSeconds [Any item not accessed within this amount of seconds is always unloaded]`
- `int MaxNumberKept [Maximum number of items to keep loaded, 0 means infinite]`
- `int MinNumberKept [Will not release items if fewer then this number loaded, 0 means infinite]`
- `bool bCacheIsAlwaysVolatile [If this is true, the cache is always considered volatile when returning EDataRegistryCacheResult]`
- `bool bUseCurveTableCacheVersion [If this is true, the cache version is synchronized with the global CurveTable cache version]`


**方法**:

- `FDataRegistryCachePolicy& opAssign(FDataRegistryCachePolicy Other)`

---

