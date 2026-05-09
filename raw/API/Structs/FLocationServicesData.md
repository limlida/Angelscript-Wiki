### FLocationServicesData


Struct to hold relevant location data retrieved from the mobile implementation's Location Service

**属性**:

- `float32 Altitude [In meters, if provided with the result]`
- `float32 HorizontalAccuracy [Estimated horizontal (Android: overall) accuracy of the result, in meters]`
- `float32 Latitude`
- `float32 Longitude`
- `float32 Timestamp [Timestamp from when this location data was taken (UTC time in milliseconds since 1 January 1970)]`
- `float32 VerticalAccuracy [Estimated accuracy of the result, in meters (iOS only)]`


**方法**:

- `FLocationServicesData& opAssign(FLocationServicesData Other)`

---

