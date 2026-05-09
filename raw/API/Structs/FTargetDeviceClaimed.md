### FTargetDeviceClaimed


Implements a message that is sent when a service claimed a device.

@see FTargetDeviceClaimDenied
@see FTargetDeviceClaimDropped

**属性**:

- `FString DeviceName [Holds the identifier of the device that is being claimed.]`
- `FString HostName [Holds the name of the host computer that is claiming the device.]`
- `FString HostUser [Holds the name of the user that is claiming the device.]`


**方法**:

- `FTargetDeviceClaimed& opAssign(FTargetDeviceClaimed Other)`

---

