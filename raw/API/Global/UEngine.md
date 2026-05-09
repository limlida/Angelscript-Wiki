### UEngine


Abstract base class of all Engine classes, responsible for management of systems critical to editor or game systems.
Also defines default classes for certain engine systems.

**属性**:

- `TArray<FString> AdditionalFontNames [Sets additional fonts that will be loaded at startup and available using GetAdditionalFont.]`
- `FSoftClassPath AssetManagerClassName [Sets the class to spawn as the global AssetManager, configurable per game. If empty, it will not spawn one]`
- `FSoftClassPath ConsoleClassName [Sets the class to use for the game console summoned with ~]`
- `FSoftClassPath CustomTimeStepClassName [Override how the Engine process the Framerate/Timestep.
This class will be responsible of updating the application Time and DeltaTime.
Can be used to synchronize the engine with another process (gen-lock).]`
- `FSoftClassPath DefaultBlueprintBaseClassName [Sets the base class to use for new blueprints created in the editor, configurable on a per-game basis]`
- `FSoftObjectPath DefaultDestructiblePhysMaterialName [Path of the PhysicalMaterial to use if none is defined for a particular object.]`
- `float32 FixedFrameRate [The fixed framerate to use.]`
- `FDirectoryPath GameScreenshotSaveDirectory [The save directory for newly created screenshots]`
- `FSoftClassPath GameSingletonClassName [Sets the class for a global object spawned at startup to handle game-specific data. If empty, it will not spawn one]`
- `FSoftClassPath GameUserSettingsClassName [Sets the GameUserSettings class, which can be overridden to support game-specific options for Graphics/Sound/Gameplay.]`
- `FSoftClassPath GameViewportClientClassName [Sets the class to use for the game viewport client, which can be overridden to change game-specific input and display behavior.]`
- `float32 GenerateDefaultTimecodeFrameDelay [Number of frames to subtract from generated default timecode.]`
- `FFrameRate GenerateDefaultTimecodeFrameRate [When generating a default timecode (bGenerateDefaultTimecode is true and no timecode provider is set) at which frame rate it should be generated (number of frames).]`
- `FSoftObjectPath LargeFontName [Sets the font used for large engine text]`
- `FSoftClassPath LevelScriptActorClassName [Sets the Level Script Actor class, which can be overridden to allow game-specific behavior in per-map blueprint scripting]`
- `FSoftClassPath LocalPlayerClassName [Sets the class to use for local players, which can be overridden to store game-specific information for a local player.]`
- `int MaximumLoopIterationCount [Script maximum loop iteration count used as a threshold to warn users about script execution runaway]`
- `FSoftObjectPath MediumFontName [Sets the font used for medium engine text]`
- `float32 MinDesiredFrameRate [Minimum desired framerate setting, below this frame rate visual detail may be lowered]`
- `FSoftObjectPath MonospaceFontName [Sets the font used for monospace engine text, e.g. in debug displays]`
- `float32 NearClipPlane [The distance of the camera's near clipping plane.]`
- `FSoftClassPath PhysicsCollisionHandlerClassName [Sets the PhysicsCollisionHandler class to use by default, which can be overridden to change game-specific behavior when objects collide using physics.]`
- `FSoftObjectPath PreviewShadowsIndicatorMaterialName [Path of the material that renders a message about preview shadows being used.]`
- `FSoftObjectPath SmallFontName [Sets the font used for small engine text, used for most debug displays]`
- `FFloatRange SmoothedFrameRateRange [Range of framerates in which smoothing will kick in]`
- `FSoftObjectPath SubtitleFontName [Sets the font used by the default Subtitle Manager]`
- `FSoftClassPath TimecodeProviderClassName [Set TimecodeProvider when the engine is started.]`
- `FSoftObjectPath TinyFontName [Sets the font used for the smallest engine text]`
- `bool UseClothAssetMinLODPerQualityLevels []`
- `bool UseGrassVarityPerQualityLevels []`
- `bool UseSkeletalMeshMinLODPerQualityLevels []`
- `bool UseStaticMeshMinLODPerQualityLevels []`
- `FSoftClassPath WorldSettingsClassName [Sets the class to use for WorldSettings, which can be overridden to store game-specific information on map/world.]`
- `bool bAllowMultiThreadedAnimationUpdate [Controls whether by default we allow anim blueprint graph updates to be performed on non-game threads. This enables some extra checks in the anim blueprint compiler that will warn when unsafe operations are being attempted. This will force all anim blueprints to be recompiled.]`
- `bool bCanBlueprintsTickByDefault [Controls whether Blueprint subclasses of actors or components can tick by default.

Blueprints that derive from native C++ classes that have bCanEverTick=true will always be able to tick
Blueprints that derive from exactly AActor or UActorComponent will always be able to tick
Otherwise, they can tick as long as the parent doesn't have meta=(ChildCannotTick) and either bCanBlueprintsTickByDefault is true or the parent has meta=(ChildCanTick)]`
- `bool bGenerateDefaultTimecode [Generate a default timecode from the computer clock when there is no timecode provider.
On desktop, the system time will be used and will behave as if a USystemTimecodeProvider was set.
On console, the high performance clock will be used. That may introduce drift over time.
If you wish to use the system time on console, set the timecode provider to USystemeTimecodeProvider.]`
- `bool bOptimizeAnimBlueprintMemberVariableAccess [Controls whether anim blueprint nodes that access member variables of their class directly should use the optimized path that avoids a thunk to the Blueprint VM. This will force all anim blueprints to be recompiled.]`
- `bool bSmoothFrameRate [Whether to enable framerate smoothing.]`
- `bool bSubtitlesEnabled [Flag for completely disabling subtitles for localized sounds.]`
- `bool bSubtitlesForcedOff [Flag for forcibly disabling subtitles even if you try to turn them back on they will be off]`
- `bool bUseFixedFrameRate [Whether to use a fixed framerate.]`

---

