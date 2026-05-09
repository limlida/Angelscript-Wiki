### UPhysicsControlAsset


Asset for storing Physics Control Profiles. The asset will contain data that define:
- Controls and body modifiers to be created on a mesh
- Sets referencing those controls and body modifiers
- Full profiles containing settings for all the controls/modifiers
- Sparse profiles containing partial sets of settings for specific controls/modifiers

It will also be desirable to support "inheritance" - so a generic profile can be made, and then
customized for certain characters or scenarios.

**属性**:

- `TArray<TSoftObjectPtr<UPhysicsControlAsset>> AdditionalProfileAssets [Additional profile assets from which profiles (not the setup data, extra sets etc) will be added
to this asset.]`
- `FPhysicsControlAndBodyModifierCreationDatas MyAdditionalControlsAndModifiers [Additional controls and modifiers. If these have the same name as one that's
already created, they'll just override it.]`
- `FPhysicsControlSetUpdates MyAdditionalSets [Additional control and body modifier sets]`
- `FPhysicsControlCharacterSetupData MyCharacterSetupData [We can define controls in the form of limbs etc here]`
- `TArray<FPhysicsControlControlAndModifierUpdates> MyInitialControlAndModifierUpdates [Initial updates to apply immediately after controls and modifiers are created]`
- `TMap<FName,FPhysicsControlControlAndModifierUpdates> MyProfiles [The named profiles, which are essentially control and modifier updates]`
- `TSoftObjectPtr<UPhysicsControlAsset> ParentAsset [A profile asset to inherit from (can be null). If set, we will just add/modify data in that]`
- `TSoftObjectPtr<UPhysicsAsset> PhysicsAsset [The PhysicsAsset that this control asset is targeting. This will also determine the preview
mesh. You will need to close/re-open the Physics Control Asset editor in order to see the
effect of changing it.]`
- `bool bAutoCompileProfiles [Whether editing the profiles will automatically compile.]`
- `bool bAutoCompileSetup [Whether editing the setup data will automatically compile.]`
- `bool bAutoInvokeProfileAfterSetup [Whether to automatically re-invoke the previously invoked profile after automatically running the setup]`
- `bool bAutoInvokeProfiles [Whether to automatically invoke profiles that have been edited (and have auto-compiled) when simulating]`
- `bool bAutoReinitSetup [Whether to automatically reinitialize following editing of setup data (when auto-compiling) when simulating]`

---

