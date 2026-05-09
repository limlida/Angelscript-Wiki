### FTargetDeviceClaimDenied


Implements a message that is sent when a device is already claimed by someone else.

@see FTargetDeviceClaimDropped
@see FTargetDeviceClaimRequest

**属性**:

- `FString DeviceName [Holds the identifier of the device that is already claimed.]`
- `FString HostName [Holds the name of the host computer that claimed the device.]`
- `FString HostUser [Holds the name of the user that claimed the device.]`


**方法**:

- `FTargetDeviceClaimDenied& opAssign(FTargetDeviceClaimDenied Other)`

---

