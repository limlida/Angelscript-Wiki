### UProjectPackagingSettings


Implements the Editor's user settings.

**属性**:

- `FDirectoryPath ApplocalPrerequisitesDirectory [A directory containing additional prerequisite packages that should be staged in the executable directory. Can be relative to $(EngineDir) or $(ProjectDir)]`
- `EProjectPackagingBuild Build [Specifies whether to build the game executable during packaging.]`
- `EProjectPackagingBuildConfigurations BuildConfiguration [The build configuration for which the project is packaged.]`
- `FString BuildTarget [Name of the target to build]`
- `TArray<FString> CompressedChunkWildcard [If set, only these specific pak files will be compressed. This should take the form of "*pakchunk0*"
This can be set in a platform-specific ini file]`
- `TArray<FString> CulturesToStage [Languages whose data should be cooked, staged, and packaged.]`
- `TArray<FDirectoryPath> DirectoriesToAlwaysCook [Directories containing .uasset files that should always be cooked regardless of whether they're referenced by anything in your project
These paths are stored either as a full package path (e.g. /Game/Folder, /Engine/Folder, /PluginName/Folder) or as a relative package path from /Game]`
- `TArray<FDirectoryPath> DirectoriesToAlwaysStageAsNonUFS [Directories containing files that should always be copied when packaging your project, but are not supposed to be part of the .pak file
This is used to stage additional files that you manually load without using the UFS (Unreal File System) file IO API, eg, third-party libraries that perform their own internal file IO
Note: These paths are relative to your project Content directory]`
- `TArray<FDirectoryPath> DirectoriesToAlwaysStageAsNonUFSServer [Directories containing files that should always be copied when packaging your project for a dedicated server, but are not supposed to be part of the .pak file
This is used to stage additional files that you manually load without using the UFS (Unreal File System) file IO API, eg, third-party libraries that perform their own internal file IO
Note: These paths are relative to your project Content directory]`
- `TArray<FDirectoryPath> DirectoriesToAlwaysStageAsUFS [Directories containing files that should always be added to the .pak file (if using a .pak file; otherwise they're copied as individual files)
This is used to stage additional files that you manually load via the UFS (Unreal File System) file IO API
Note: These paths are relative to your project Content directory]`
- `TArray<FDirectoryPath> DirectoriesToAlwaysStageAsUFSServer [Directories containing files that should always be added to the .pak file for a dedicated server (if using a .pak file; otherwise they're copied as individual files)
This is used to stage additional files that you manually load via the UFS (Unreal File System) file IO API
Note: These paths are relative to your project Content directory]`
- `TArray<FDirectoryPath> DirectoriesToNeverCook [Directories containing .uasset files that should never be cooked even if they are referenced by your project
These paths are stored either as a full package path (e.g. /Game/Folder, /Engine/Folder, /PluginName/Folder) or as a relative package path from /Game]`
- `bool ForDistribution [If enabled, a distribution build will be created and the shipping configuration will be used
If disabled, a development build will be created
Distribution builds are for publishing to the App Store]`
- `bool FullRebuild [If enabled, a full rebuild will be enforced each time the project is being packaged.
If disabled, only modified files will be built, which can improve iteration time.
Unless you iterate on packaging, we recommend full rebuilds when packaging.]`
- `FDirectoryPath HttpChunkInstallDataDirectory [When "Build HTTP Chunk Install Data" is enabled this is the directory where the data will be build to.]`
- `FString HttpChunkInstallDataVersion [Version name for HTTP Chunk Install Data.]`
- `bool IncludeAppLocalPrerequisites [Specifies whether to include prerequisites alongside the game executable.]`
- `bool IncludeCrashReporter [Specifies whether to include the crash reporter in the packaged project.
This is included by default for Blueprint based projects, but can optionally be disabled.]`
- `bool IncludeDebugFiles [If enabled, debug files will be included in staged shipping builds.]`
- `bool IncludePrerequisites [Specifies whether to include an installer for prerequisites of packaged games, such as redistributable operating system components, on platforms that support it.]`
- `TArray<FString> IniKeyDenylist [List of ini file keys to strip when packaging]`
- `TArray<FString> IniSectionDenylist [List of ini file sections to strip when packaging]`
- `EProjectPackagingInternationalizationPresets InternationalizationPreset [Predefined sets of culture whose internationalization data should be packaged.]`
- `int LocalizationTargetCatchAllChunkId [The chunk ID that should be used as the catch-all chunk for any non-asset localized strings]`
- `TArray<FString> LocalizationTargetsToChunk [List of localization targets that should be chunked during cooking (if using chunks)]`
- `TArray<FFilePath> MapsToCook [List of maps to include when no other map list is specified on commandline]`
- `int64 MaxChunkSize [If > 0 this sets a maximum size per chunk. Chunks larger than this size will be split into multiple pak files such as pakchunk0_s1
This can be set in platform specific game.ini files]`
- `TArray<FString> NonUFSMovies [If SkipMovies is true, these specific movies will be copied when packaging your project, but are not supposed to be part of the .pak file
This should be the name with no extension]`
- `FString PackageAdditionalCompressionOptions [A generic setting for allowing a project to control compression settings during .pak file and iostore compression.
For instance PackageAdditionalCompressionOptions=-compressionblocksize=1MB -asynccompression]`
- `FString PackageCompressionFormat [A comma separated list of formats to use for .pak file and IoStore compression. If more than one is specified, the list is in order of priority, with fallbacks to other formats
in case of errors or unavailability of the format (plugin not enabled, etc).
Commonly PackageCompressionFormat=Oodle or PackageCompressionFormat=None]`
- `int PackageCompressionLevel_DebugDevelopment [* For compressors with variable levels, select the compressor effort level, which makes packages smaller but takes more time to encode.
* This does not affect decode speed.  For faster iteration, use lower effort levels (eg. 1)]`
- `int PackageCompressionLevel_Distribution []`
- `int PackageCompressionLevel_TestShipping []`
- `FString PackageCompressionMethod [For compressors with multiple methods, select one.  eg. for Oodle you may use one of {Kraken,Mermaid,Selkie,Leviathan}]`
- `int PackageCompressionMinBytesSaved [A generic setting which is used to determine whether it is worth using compression for a block of data when creating IoStore or .pak files.
If the amount of saved bytes is smaller than the specified value, then the block of data remains uncompressed.
The optimal value of this setting depends on the capabilities of the target platform. For instance PackageCompressionMinBytesSaved=1024
Note that some compressors (for example Oodle) do their own internal worth it check and only use this value to determine the minimal size of a block which should be compressed.]`
- `int PackageCompressionMinPercentSaved [A generic setting which is used to determine whether it is worth using compression for a block of data when creating IoStore or .pak files.
If the saved percentage of a compressed block of data is smaller than the specified value, then the block remains uncompressed.
The optimal value of this setting depends on the capabilities of the target platform. For instance PackageCompressionMinPercentSaved=5
Note that some compressors (for example Oodle) do their own internal worth it check and ignore this value.]`
- `int PackageCompressionMinSizeToConsiderDDC [Specifies the minimum (uncompressed) size for storing a compressed IoStore chunk in DDC.]`
- `TArray<FProjectBuildSettings> ProjectCustomBuilds [A list of custom builds that will show up in the Platforms menu to allow customized builds that make sense for your project. Will show up near Package Project in the Platforms menu.]`
- `TArray<FDirectoryPath> TestDirectoriesToNotSearch [Directories containing .uasset files that are for editor testing purposes and should not be included in
enumerations of all packages in a root directory, because they will cause errors on load
These paths are stored either as a full package path (e.g. /Game/Folder, /Engine/Folder, /PluginName/Folder) or as a relative package path from /Game]`
- `TArray<FString> UFSMovies [If SkipMovies is true, these specific movies will still be added to the .pak file (if using a .pak file; otherwise they're copied as individual files)
This should be the name with no extension]`
- `bool UsePakFile [If enabled, all content will be put into a one or more .pak files instead of many individual files (default = enabled).]`
- `EAssetRegistryWritebackMethod WriteBackMetadataToAssetRegistry [Whether to write staging metadata back to the asset registry. This metadata contains information such as
the actual compressed chunk sizes of the assets as well as some bulk data diff blame support information.]`
- `bool bBuildHttpChunkInstallData [If enabled, will generate data for HTTP Chunk Installer. This data can be hosted on webserver to be installed at runtime. Requires "Generate Chunks" enabled.]`
- `bool bChunkHardReferencesOnly [Normally during chunk generation all dependencies of a package in a chunk will be pulled into that package's chunk.
If this is enabled then only hard dependencies are pulled in. Soft dependencies stay in their original chunk.]`
- `bool bCompressed [Create compressed cooked packages (decreased deployment size)]`
- `bool bCookAll [Cook all things in the project content directory]`
- `bool bCookMapsOnly [Cook only maps (this only affects the cookall flag)]`
- `bool bDeterministicShaderCodeOrder [With this option off, the shader code will be stored in the library essentially in a random order,
squarely the same in which the assets were loaded by the cooker. Enabling this will sort the shaders
by their hash, which makes the shader library more similar between the builds which can help patching, but
can adversely affect loading times.]`
- `bool bForceOneChunkPerFile [If true, individual files are only allowed to be in a single chunk and it will assign it to the lowest number requested
If false, it may end up in multiple chunks if requested by the cooker]`
- `bool bForceUseProjectCompressionFormatIgnoreHardwareOverride [Force use of PackageCompressionFormat (do not use override HardwareCompressionFormat from DDPI)]`
- `bool bGenerateChunks [If enabled, will generate pak file chunks.  Assets can be assigned to chunks in the editor or via a delegate (See ShooterGameDelegates.cpp).
Can be used for streaming installs (PS4 Playgo, XboxOne Streaming Install, etc)]`
- `bool bGenerateNoChunks [If enabled, no platform will generate chunks, regardless of settings in platform-specific ini files.]`
- `bool bMakeBinaryConfig [If enabled, staging will make a binary config file for faster loading.]`
- `bool bPackageCompressionEnableDDC [Specifies if DDC should be used to store and retrieve compressed data when creating IoStore containers.]`
- `bool bRetainStagedDirectory [If set, platforms that destructively edit the iostore containers during packaging will save a copy prior to doing so.]`
- `bool bShareMaterialShaderCode [By default shader code gets saved inline inside material assets,
enabling this option will store only shader code once as individual files
This will reduce overall package size but might increase loading time]`
- `bool bSharedMaterialNativeLibraries [By default shader shader code gets saved into individual platform agnostic files,
enabling this option will use the platform-specific library format if and only if one is available
This will reduce overall package size but might increase loading time]`
- `bool bSkipEditorContent [Don't include content in any editor folders when cooking.  This can cause issues with missing content in cooked games if the content is being used.]`
- `bool bSkipMovies [Don't include movies by default when staging/packaging
Specific movies can be specified below, and this can be in a platform ini]`
- `bool bTreatWarningsAsErrorsOnCook [Cook with Warnings As Errors]`
- `bool bUseIoStore [If enabled, use .utoc/.ucas container files for staged/packaged package data instead of pak.]`
- `bool bUseZenStore [If enabled, use Zen Server for storing and fetching cooked data instead of using the local file system.]`
- `bool bWritePluginSizeSummaryJsons [Whether or not to write a json summary file that contains size information to the cooked Metadata directory]`

---

