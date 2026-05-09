### UPlatformGameInstance


UObject based class for handling mobile events. Having this object as an option gives the app lifetime access to these global delegates. The component UApplicationLifecycleComponent is destroyed at level loads

**属性**:

- `FPlatformFailedToRegisterForRemoteNotificationsDelegate__PlatformGameInstance ApplicationFailedToRegisterForRemoteNotificationsDelegate [called when the application fails to register for remote notifications]`
- `FPlatformDelegate__PlatformGameInstance ApplicationHasEnteredForegroundDelegate [Called when the application is returning to the foreground (reverse any processing done in the EnterBackground delegate)]`
- `FPlatformDelegate__PlatformGameInstance ApplicationHasReactivatedDelegate [Called when the application has been reactivated (reverse any processing done in the Deactivate delegate)]`
- `FPlatformReceivedLocalNotificationDelegate__PlatformGameInstance ApplicationReceivedLocalNotificationDelegate [called when the application receives a local notification]`
- `FPlatformReceivedRemoteNotificationDelegate__PlatformGameInstance ApplicationReceivedRemoteNotificationDelegate [called when the application receives a remote notification]`
- `FPlatformScreenOrientationChangedDelegate__PlatformGameInstance ApplicationReceivedScreenOrientationChangedNotificationDelegate [called when the application receives a screen orientation change notification]`
- `FPlatformStartupArgumentsDelegate__PlatformGameInstance ApplicationReceivedStartupArgumentsDelegate [Called with arguments passed to the application on statup, perhaps meta data passed on by another application which launched this one.]`
- `FPlatformRegisteredForRemoteNotificationsDelegate__PlatformGameInstance ApplicationRegisteredForRemoteNotificationsDelegate [called when the user grants permission to register for remote notifications]`
- `FPlatformRegisteredForUserNotificationsDelegate__PlatformGameInstance ApplicationRegisteredForUserNotificationsDelegate [called when the user grants permission to register for notifications]`
- `FPlatformDelegate__PlatformGameInstance ApplicationShouldUnloadResourcesDelegate [Called when the OS is running low on resources and asks the application to free up any cached resources, drop graphics quality etc.]`
- `FPlatformDelegate__PlatformGameInstance ApplicationWillDeactivateDelegate [This is called when the application is about to be deactivated (e.g., due to a phone call or SMS or the sleep button).
The game should be paused if possible, etc...]`
- `FPlatformDelegate__PlatformGameInstance ApplicationWillEnterBackgroundDelegate [This is called when the application is being backgrounded (e.g., due to switching
to another app or closing it via the home button)
The game should release shared resources, save state, etc..., since it can be
terminated from the background state without any further warning.]`
- `FPlatformDelegate__PlatformGameInstance ApplicationWillTerminateDelegate [This *may* be called when the application is getting terminated by the OS.
There is no guarantee that this will ever be called on a mobile device,
save state when ApplicationWillEnterBackgroundDelegate is called instead.]`

---

