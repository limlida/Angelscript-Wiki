### UEditorSettings


**属性**:

- `FDirectoryPath GlobalLocalDDCPath [Adjusts the Local Cache location. This affects every project on your computer that uses the UE-LocalDataCachePath environment variable override.
This is usually the first location to query for previously built data.]`
- `FDirectoryPath GlobalS3DDCPath [Adjusts the Local Cache location for AWS/S3 downloaded package bundles.
This affects every project on your computer that uses the UE-S3DataCachePath environment variable override.]`
- `FDirectoryPath GlobalSharedDDCPath [Adjusts the Shared cache location. This affects every project on your computer that uses the UE-SharedDataCachePath environment variable override.
The Shared Cache location is usually queried if we don't find previously built data in the Local cache. Colleagues should point to the same shared location so that work can be distributed.]`
- `FString HordeUrl [URL of the Horde server]`
- `FDirectoryPath LocalDerivedDataCache [Project specific override for the Local Cache location. The editor must be restarted for changes to take effect.
This will override the 'Global Local DDC Path'.]`
- `FDirectoryPath SharedDerivedDataCache [Project specific override for the Shared Cache location. The editor must be restarted for changes to take effect.
This will override the 'Global Shared DDC Path'.]`
- `bool bEnableDDCNotifications [Whether to enable any DDC Notifications]`
- `bool bEnableS3DDC [Whether to enable the S3 derived data cache backend]`
- `bool bNotifyEnableS3DD [Whether to enable the DDC path notification]`
- `bool bNotifySetupDDCPath [Whether to enable the DDC path notification]`
- `bool bNotifyUseUnrealCloudDDC [Whether to enable the Unreal Cloud DDC notification]`

---

