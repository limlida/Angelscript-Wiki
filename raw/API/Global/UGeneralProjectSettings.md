### UGeneralProjectSettings


**属性**:

- `FString CompanyDistinguishedName [The Distinguished Name of the company (author, provider) that created the project, which is used by publishing tools on some platforms.]`
- `FString CompanyName [The name of the company (author, provider) that created the project.]`
- `FString CopyrightNotice [The project's copyright and/or trademark notices.]`
- `FString Description [The project's description text.]`
- `float32 DifferenceBetweenEyesForFakeStereoRenderingDevice [Determines difference between left and eyes horizontal -emulatestereo FOVs. If 0, they are the same (their FOVs are symmetric), the closer to 1, the more each eye is looking towards its side. Reasonable values are in 0 - 0.4 range.]`
- `float32 EyeOffsetForFakeStereoRenderingDevice [Determines the Eye offset of the virtual stereo device created when " -emulatestereo" command line arg is detected]`
- `float32 FOVForFakeStereoRenderingDevice [Determines the Field Of View of the virtual stereo device created when " -emulatestereo" command line arg is detected]`
- `FString Homepage [The project's homepage URL.]`
- `FString LicensingTerms [The project's licensing terms.]`
- `FString PrivacyPolicy [The project's privacy policy.]`
- `FText ProjectDebugTitleInfo [Additional data to be displayed on the window title bar in non-shipping configurations (can include the tokens {GameName}, {PlatformArchitecture}, {BuildConfiguration} or {RHIName}, which will be replaced with the specified text)]`
- `FText ProjectDisplayedTitle [The project's title as displayed on the window title bar (can include the tokens {GameName}, {PlatformArchitecture}, {BuildConfiguration} or {RHIName}, which will be replaced with the specified text)]`
- `FGuid ProjectID [The project's unique identifier.]`
- `FString ProjectName [The project's non-localized name.]`
- `FString ProjectVersion [The project's version number.]`
- `FString SupportContact [The project's support contact information.]`
- `float32 TopFOVRatioForFakeStereoRenderingDevice [Determines how much of -emulatestereo FOV is above the horizontal plane (0-1) - usually helmets have a larger FOV down than up, so this value is less than 0.5.]`
- `bool bAllowClose [Should a close button be shown for the game's window, when not using full screen]`
- `bool bAllowMaximize [Should a maximize button be shown for the game's window, when not using full screen]`
- `bool bAllowMinimize [Should a minimize button be shown for the game's window, when not using full screen]`
- `bool bAllowWindowResize [Should the user be allowed to resize the window used by the game, when not using full screen]`
- `bool bShouldWindowPreserveAspectRatio [Should the game's window preserve its aspect ratio when resized by user.]`
- `bool bStartInVR [Should the game attempt to start in VR, regardless of whether -vr was set on the commandline]`
- `bool bUseBorderlessWindow [Should the game use a borderless Slate window instead of a window with system title bar and border]`

---

