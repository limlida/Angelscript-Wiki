### AFirearmWeaponVisual


Base class for firearm weapon visual that need aim down sights

**属性**:

- `FName ADSSightSocketName [We'll look on the weapon mesh for a socket with this name to provide the ADS location]`


**方法**:

- `FVector GetADSLocation() const`  
  Return the FVector we need to camera to line up with when we're aiming
- `FVector GetADSRelativeLocation() const`  
  Return the location our ADS needs to go to, relative to the root bone

---

