### FPlayerMappableKeyProfileCreationArgs


Arguments that can be used when creating a new mapping profile

**属性**:

- `FText DisplayName [The display name of this profile]`
- `FString ProfileStringIdentifier [The unique identifier that this profile should have]`
- `TSubclassOf<UEnhancedPlayerMappableKeyProfile> ProfileType`
- `FPlatformUserId UserId [The user ID of the ULocalPlayer that this profile is associated with]`
- `bool bSetAsCurrentProfile`


**方法**:

- `FPlayerMappableKeyProfileCreationArgs& opAssign(FPlayerMappableKeyProfileCreationArgs Other)`

---

