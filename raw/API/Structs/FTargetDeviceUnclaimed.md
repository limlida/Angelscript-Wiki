### FTargetDeviceUnclaimed


Implements a message that is sent when a device is no longer claimed.

@see FTargetDeviceClaimDenied, FTargetDeviceClaimRequest

**属性**:

- `FString DeviceName [Holds the identifier of the device that is no longer claimed.]`
- `FString HostName [Holds the name of the host computer that had claimed the device.]`
- `FString HostUser [Holds the name of the user that had claimed the device.]`


**方法**:

- `FTargetDeviceUnclaimed& opAssign(FTargetDeviceUnclaimed Other)`

---

