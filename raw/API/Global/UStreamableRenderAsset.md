### UStreamableRenderAsset


**属性**:

- `bool NeverStream`
- `int NumCinematicMipLevels [Number of mip-levels to use for cinematic quality.]`
- `bool bGlobalForceMipLevelsToBeResident [Global and serialized version of ForceMiplevelsToBeResident.]`


**方法**:

- `SetForceMipLevelsToBeResident(float32 Seconds, int CinematicLODGroupMask = 0)`  
  Tells the streaming system that it should force all mip-levels to be resident for a number of seconds.
@param Seconds                                        Duration in seconds
@param CinematicTextureGroups Bitfield indicating which texture groups that use extra high-resolution mips

---

