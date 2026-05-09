### UApplicationLifecycleComponent


Component to handle receiving notifications from the OS about application state (activated, suspended, termination, etc).

**属性**:

- `FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationHasEnteredForegroundDelegate [Called when the application is returning to the foreground (reverse any processing done in the EnterBackground delegate)]`
- `FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationHasReactivatedDelegate [Called when the application has been reactivated (reverse any processing done in the Deactivate delegate)]`
- `FApplicationStartupArgumentsDelegate__ApplicationLifecycleComponent ApplicationReceivedStartupArgumentsDelegate [Called with arguments passed to the application on statup, perhaps meta data passed on by another application which launched this one.]`
- `FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationShouldUnloadResourcesDelegate [Called when the OS is running low on resources and asks the application to free up any cached resources, drop graphics quality etc.]`
- `FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationWillDeactivateDelegate [This is called when the application is about to be deactivated (e.g., due to a phone call or SMS or the sleep button).
The game should be paused if possible, etc...]`
- `FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationWillEnterBackgroundDelegate [This is called when the application is being backgrounded (e.g., due to switching
to another app or closing it via the home button)
The game should release shared resources, save state, etc..., since it can be
terminated from the background state without any further warning.]`
- `FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationWillTerminateDelegate [This *may* be called when the application is getting terminated by the OS.
There is no guarantee that this will ever be called on a mobile device,
save state when ApplicationWillEnterBackgroundDelegate is called instead.]`
- `FOnLowPowerModeDelegate__ApplicationLifecycleComponent OnLowPowerModeDelegate [Called when we are in low power mode]`
- `FOnTemperatureChangeDelegate__ApplicationLifecycleComponent OnTemperatureChangeDelegate [Called when temperature level has changed, and receives the severity]`

---

