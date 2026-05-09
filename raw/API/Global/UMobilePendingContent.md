### UMobilePendingContent


**方法**:

- `float32 GetDownloadSize()`  
  Get the total download size for this content installation
- `float32 GetDownloadSpeed()`  
  Get the current download speed in megabytes per second. Valid during installation
- `FText GetDownloadStatusText()`
- `float32 GetInstallProgress()`  
  Get the current installation progress. Between 0 and 1 for known progress, or less than 0 for unknown progress
- `float32 GetRequiredDiskSpace()`  
  Get the required disk space in megabytes for this content installation
- `float32 GetTotalDownloadedSize()`  
  Get the total downloaded size in megabytes. Valid during installation
- `StartInstall(FOnContentInstallSucceeded OnSucceeded = FOnContentInstallSucceeded ( ), FOnContentInstallFailed OnFailed = FOnContentInstallFailed ( ))`  
  Attempt to download and install remote content.
User can choose to mount installed content into the game.
@param       OnSucceeded: Callback on installation success.
@param       OnFailed: Callback on installation fail. Will return error message text and error integer code

---

