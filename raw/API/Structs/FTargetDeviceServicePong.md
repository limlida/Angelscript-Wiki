### FTargetDeviceServicePong


Implements a message that is sent in response to target device service discovery messages.

**属性**:

- `bool Aggregated [Flag for the "All devices" proxy.]`
- `FName AllDevicesDefaultVariant [Holds the default variant name of "All devices" proxy.]`
- `FString AllDevicesName [Holds the name of "All devices" proxy.]`
- `FString Architecture [Holds the device architecture.]`
- `bool Authorized [Holds a flag indicating whether the device is authorized.]`
- `bool Connected [Holds a flag indicating whether the device is currently connected.]`
- `FString ConnectionType [Holds the connection type.]`
- `FName DefaultVariant [Holds the variant name of the default device.]`
- `FString DeviceUser [Holds the name of the user that we log in to remote device as, i.e "root".]`
- `FString DeviceUserPassword [Holds the password of the user that we log in to remote device as, i.e "12345".]`
- `FString HostName [Holds the name of the host computer that the device is attached to.]`
- `FString HostUser [Holds the name of the user under which the host computer is running.]`
- `FString Make [Holds the make of the device, i.e. Microsoft or Sony.]`
- `FString Model [Holds the model of the device.]`
- `FString Name [Holds the human readable name of the device, i.e "Bob's XBox'.]`
- `FString OSVersion [Holds the device OS Version.]`
- `bool Shared [Holds a flag indicating whether this device is shared with other users on the network.]`
- `bool SupportsMultiLaunch [Holds a flag indicating whether the device supports running multiple application instances in parallel.]`
- `bool SupportsPowerOff [Holds a flag indicating whether the device can be powered off.]`
- `bool SupportsPowerOn [Holds a flag indicating whether the device can be powered on.]`
- `bool SupportsReboot [Holds a flag indicating whether the device can be rebooted.]`
- `bool SupportsVariants [Holds a flag indicating whether the device's target platform supports variants.]`
- `FString Type [Holds the device type.]`
- `TArray<FTargetDeviceVariant> Variants [List of the Flavors this service supports]`


**方法**:

- `FTargetDeviceServicePong& opAssign(FTargetDeviceServicePong Other)`

---

