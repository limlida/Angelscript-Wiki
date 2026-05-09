### USourceControlPreferences


Settings for the Source Control Integration

**属性**:

- `TArray<FString> CollectionChangelistTags [List of lines to add to any collection on checkin]`
- `TMap<FName,FString> SpecificCollectionChangelistTags [Map of collection names and additional text to apply to changelist descriptions when checking them in]`
- `bool bEnableUncontrolledChangelists [Enables Uncontrolled Changelists features. The editor must be restarted for the change to be fully taken into account.]`
- `bool bEnableValidationTag [Adds validation tag to changelist description on submit.]`
- `bool bRequiresRevisionControlToRenameLocalizableAssets [If the project uses Localization and its localized content might not be on disk (but still in your Revision Control), then enabling this feature will require a Revision Control Provider to be configured to move/rename/delete files to be sure no localized variants become orphaned. (Works only with Perforce for now)]`
- `bool bShouldDeleteNewFilesOnRevert [Deletes new files when reverted.]`

---

