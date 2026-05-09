### UXcodeProjectSettings


Implements the settings for Xcode projects

**属性**:

- `FFilePath AdditionalPrivacyInfoIOS [The path to the optional PrivacyInfo.xcprivacy file for your project]`
- `FFilePath AdditionalPrivacyInfoMac [The path to the optional PrivacyInfo.xcprivacy file for your project]`
- `FString AppCategory [The App Category that will be used for Apple App Store submissions]`
- `FString AppStoreConnectIssuerID [The Issuer ID for your App Store Connect API]`
- `FString AppStoreConnectKeyID [The Key ID for your App Store Connect generated API key, a 32 hex-character string, including dashes]`
- `FFilePath AppStoreConnectKeyPath [The path to the downloaded .p8 file shared with your team]`
- `FString ApplicationDisplayName [The name of the Mac .app when making an archived build (for uploading to App Store, etc). The Finder shows Mac apps by their .app name, and we don't name the .app  with
"pretty" names during development. When packaging for distribution (or using Archive menu in Xcode) this will become the name of the .app, and will be what end users
will have on their Mac. If this is not set, the .app will have the name of the .uproject file]`
- `FString BundleIdentifier [Bundle ID used for nativr Xcode code signing]`
- `FString CodeSigningPrefix [Bundle ID prefix used for native Xcode code signing. This is only needed if you use the default, pieced-together Bundle ID above. If you specify a full Bundle ID, you can ignore this field.]`
- `FString CodeSigningTeam [Team ID used for native Xcode code signing. This must be the 10 letters/numbers ID found in Membership Details tab found in https://developer.apple.com/account]`
- `FFilePath IOSProvisioningProfile [The path to a .mobileprovision file to use for signing for IOS. Alternatively, if it's a single name or UUID (no .mobileprovision extension), it will use this as the name/UUID of an already installed provision to sign with]`
- `FString IOSSigningIdentity [The name (prefix or full) of the certificate to use for IOS and TVOS code signing]`
- `FString MacSigningIdentity [The name (prefix or full) of the certificate to use for Mac code signing.]`
- `FFilePath PremadeIOSEntitlements [The premade entitlement file used for development IOS builds]`
- `FFilePath PremadeMacEntitlements [The premade entitlement file used for development Mac builds]`
- `FFilePath ShippingSpecificIOSEntitlements [The premade entitlement file used for shipping IOS builds]`
- `FFilePath ShippingSpecificMacEntitlements [The premade entitlement file used for shipping Mac builds]`
- `FFilePath TVOSProvisioningProfile [The path to a .mobileprovision file to use for signing for TVOS. Alternatively, if it's a single name or UUID (no .mobileprovision extension), it will use this as the name/UUID of an already installed provision to sign with]`
- `FFilePath TemplateIOSPlist [The template info.plist used for iOS game targets]`
- `FFilePath TemplateMacPlist [The template info.plist used for Mac game targets]`
- `bool bMacSignToRunLocally [If true, Mac will sign to run locally. Running on another Mac may bring up a dialog preventing running the app. If this and Use Automatic Code Signing are both false, you will need a certificate installed]`
- `bool bUseAppStoreConnect [If true, use AppStore Connect authentication for commandline builds. This allows for automatic codesigning functionality without needing to be signed in to Xcode. See the App Store Connect API section of the Keys tab in your Users and Access page in Apple dev center.]`
- `bool bUseAutomaticCodeSigning [Enable native Xcode code signing]`
- `bool bUseModernXcode [Enable modernized Xcode, when building from Xcode, use native Xcode for bundle generation and archiving instead of UBT
Restart required to apply this setting]`

---

