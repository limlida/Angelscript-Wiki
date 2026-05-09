### UInputDeviceSubsystem


The input device subsystem provides an interface to allow users to set Input Device Properties
on any Platform User.

**属性**:

- `FHardwareInputDeviceChanged OnInputHardwareDeviceChanged [A delegate that is fired when a platform user changes what Hardware Input device they are using]`


**方法**:

- `FInputDevicePropertyHandle ActivateDevicePropertyOfClass(TSubclassOf<UInputDeviceProperty> PropertyClass, FActivateDevicePropertyParams Params)`  
  Spawn a new instance of the given device property class and activate it.
- `UInputDeviceProperty GetActiveDeviceProperty(FInputDevicePropertyHandle Handle) const`  
  Returns a pointer to the active input device property with the given handle. Returns null if the property doesn't exist
- `FHardwareDeviceIdentifier GetInputDeviceHardwareIdentifier(FInputDeviceId InputDevice) const`
- `FHardwareDeviceIdentifier GetMostRecentlyUsedHardwareDevice(FPlatformUserId InUserId) const`  
  Gets the most recently used hardware input device for the given platform user
- `FInputDeviceId GetMostRecentlyUsedInputDeviceId(FPlatformUserId InUserId, EHardwareDevicePrimaryType OfType = EHardwareDevicePrimaryType :: Unspecified) const`  
  Returns the most recently used FInputDeviceId for the given platform user id.

This will be INPUTDEVICEID_NONE if there is no known device for the given user.

@param InUserId      The platform user to find the most recent device for
@param OfType        The type of input device to filter by. If unspecified, then the latest device regardless of its type will be returned.
- `bool IsPropertyActive(FInputDevicePropertyHandle Handle) const`  
  Returns true if the property associated with the given handle is currently active, and it is not pending removal
- `RemoveAllDeviceProperties()`  
  Removes all the current Input Device Properties that are active, regardless of the Platform User
- `RemoveDevicePropertyByHandle(FInputDevicePropertyHandle HandleToRemove)`  
  Remove a single device property based on it's handle

@param FInputDevicePropertyHandle             Device property handle to be removed

@return                                                               The number of removed device properties.
- `RemoveDevicePropertyHandles(TSet<FInputDevicePropertyHandle> HandlesToRemove)`  
  Remove a set of device properties based on their handles.

@param HandlesToRemove        The set of device property handles to remove

@return                                       The number of removed device properties

---

