### UPlatformEventsComponent


Component to handle receiving notifications from the OS about platform events.

**属性**:

- `FPlatformEventDelegate__PlatformEventsComponent PlatformChangedToLaptopModeDelegate [This is called when a convertible laptop changed into laptop mode.]`
- `FPlatformEventDelegate__PlatformEventsComponent PlatformChangedToTabletModeDelegate [This is called when a convertible laptop changed into tablet mode.]`


**方法**:

- `bool IsInLaptopMode()`  
  Check whether a convertible laptop is laptop mode.

@return true if in laptop mode, false otherwise or if not a convertible laptop.
@see IsInTabletMode, SupportsConvertibleLaptops
- `bool IsInTabletMode()`  
  Check whether a convertible laptop is laptop mode.

@return true if in tablet mode, false otherwise or if not a convertible laptop.
@see IsInLaptopMode, SupportsConvertibleLaptops
- `bool SupportsConvertibleLaptops()`  
  Check whether the platform supports convertible laptops.

Note: This does not necessarily mean that the platform is a convertible laptop.
For example, convertible laptops running Windows 7 or older will return false,
and regular laptops running Windows 8 or newer will return true.

@return true for convertible laptop platforms, false otherwise.
@see IsInLaptopMode, IsInTabletMode

---

