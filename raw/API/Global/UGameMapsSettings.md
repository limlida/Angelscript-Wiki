### UGameMapsSettings


**属性**:

- `FSoftObjectPath EditorStartupMap [If set, this map will be loaded when the Editor starts up.]`
- `TArray<FTemplateMapInfoOverride> EditorTemplateMapOverrides [Map templates that should show up in the new level dialog. This will completely override the default maps chosen by the default editor]`
- `EFourPlayerSplitScreenType FourPlayerSplitscreenLayout [The viewport layout to use if the screen should be split and there are three local players]`
- `FSoftObjectPath GameDefaultMap [The map that will be loaded by default when no other map is loaded.]`
- `FSoftClassPath GameInstanceClass [The class to use when instantiating the transient GameInstance class]`
- `TArray<FGameModeName> GameModeClassAliases [List of GameModes to load when game= is specified in the URL (e.g. "DM" could be an alias for "MyProject.MyGameModeMP_DM")]`
- `TArray<FGameModeName> GameModeMapPrefixes [Overrides the GameMode to use when loading a map that starts with a specific prefix]`
- `FSoftClassPath GlobalDefaultGameMode [GameMode to use if not specified in any other way. (e.g. per-map DefaultGameMode or on the URL).]`
- `FSoftClassPath GlobalDefaultServerGameMode [GameMode to use if not specified in any other way. (e.g. per-map DefaultGameMode or on the URL) (DEDICATED SERVERS)
If not set, the GlobalDefaultGameMode value will be used.]`
- `FString LocalMapOptions [The default options that will be appended to a map being loaded.]`
- `FSoftObjectPath ServerDefaultMap [The map that will be loaded by default when no other map is loaded (DEDICATED SERVER).]`
- `EThreePlayerSplitScreenType ThreePlayerSplitscreenLayout [The viewport layout to use if the screen should be split and there are three local players]`
- `FSoftObjectPath TransitionMap [The map loaded when transition from one map to another.]`
- `ETwoPlayerSplitScreenType TwoPlayerSplitscreenLayout [The viewport layout to use if the screen should be split and there are two local players]`
- `bool bOffsetPlayerGamepadIds [If enabled, this will make so that gamepads start being assigned to the second controller ID in local multiplayer games.
In PIE sessions with multiple windows, this has the same effect as enabling "Route 1st Gamepad to 2nd Client"]`
- `bool bShowAllPlayerWidgetsWhenSplitscreenDisabled [Determines whether all player widget layers should be displayed in the main viewport when splitscreen is disabled. If unchecked, only Player 1 widget will be visible]`
- `bool bUseSplitscreen [Whether the screen should be split or not when multiple local players are present]`


**方法**:

- `bool GetSkipAssigningGamepadToPlayer1() const`
- `SetSkipAssigningGamepadToPlayer1(bool bSkipFirstPlayer = true)`  
  Modify "Skip Assigning Gamepad to Player 1" GameMapsSettings option
@param bSkipFirstPlayer              If set connected game pads will only be assigned to the second and subsequent players
@note This value is saved to local config when changed.

---

