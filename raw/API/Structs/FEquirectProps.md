### FEquirectProps


Properties for equirect layers

**属性**:

- `FVector2D LeftBias [Left eye's texture coordinate bias after mapping to 2D.]`
- `FVector2D LeftScale [Left eye's texture coordinate scale after mapping to 2D.]`
- `FBox2D LeftUVRect [Left source texture UVRect, specifying portion of input texture corresponding to left eye.]`
- `float32 Radius [Sphere radius. As of UE 5.3, equirect layers are supported only by the Oculus OpenXR runtime and only with a radius of 0 (infinite sphere).]`
- `FVector2D RightBias [Right eye's texture coordinate bias after mapping to 2D.]`
- `FVector2D RightScale [Right eye's texture coordinate scale after mapping to 2D.]`
- `FBox2D RightUVRect [Right source texture UVRect, specifying portion of input texture corresponding to right eye.]`


**方法**:

- `FEquirectProps& opAssign(FEquirectProps Other)`

---

