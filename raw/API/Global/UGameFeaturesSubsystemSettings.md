### UGameFeaturesSubsystemSettings


Settings for the Game Features framework

**属性**:

- `TArray<FString> AdditionalPluginMetadataKeys [List of metadata (additional keys) to try parsing from the .uplugin to provide to FGameFeaturePluginDetails]`
- `TArray<FString> DisabledPlugins [List of plugins that are forcibly disabled (e.g., via a hotfix)]`
- `TArray<FString> EnabledPlugins [List of plugins that are forcibly enabled (e.g., via a hotfix)]`
- `FSoftClassPath GameFeaturesManagerClassName [Name of a singleton class to spawn as the game feature project policy. If empty, it will spawn the default one (UDefaultGameFeaturesProjectPolicies)]`

---

