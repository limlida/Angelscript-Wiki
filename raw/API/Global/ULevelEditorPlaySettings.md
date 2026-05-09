### ULevelEditorPlaySettings


Implements the Editor's play settings.

**属性**:

- `FString AdditionalLaunchParameters [Extra parameters to be include as part of the command line for the standalone game.]`
- `FString AdditionalServerGameOptions [Additional options that will be passed to the server as URL parameters, in the format ?bIsLanMatch=1?listen - any additional command line switches should be passed in the Additional Server Launch Parameters field below.]`
- `FString AdditionalServerLaunchParameters [Additional options that will be passed to the server as arguments, for example -debug. Only works with separate process servers.]`
- `bool AutoRecompileBlueprints [Automatically recompile blueprints used by the current level when initiating a Play In Editor session]`
- `EPlayOnBuildMode BuildGameBeforeLaunch [Whether to build the game before launching on device.]`
- `bool CenterNewWindow [Whether the new window should be centered on the screen.]`
- `TArray<int> ClientFixedFPS [If > 0, Tick clients at a fixed frame rate. Each client instance will map to an element in the list, wrapping around if num clients exceeds size of list. Includes Listen Server. This is the target frame rate, e.g, "20" for 20fps, which will result in 1/20 second tick steps.]`
- `int ClientWindowHeight [Height to use when spawning additional windows.]`
- `int ClientWindowWidth [Width to use when spawning additional windows.]`
- `bool CreateAudioDeviceForEveryPlayer [If checked, a separate audio device is created for every player.

If unchecked, a separate audio device is created for only the first two players and uses the main audio device for more than 2 players.

Enabling this will allow rendering accurate audio from every player's perspective but will use more CPU. Keep this disabled on lower-perf machines.]`
- `bool DisableStandaloneSound [Whether sound should be disabled when playing standalone games.]`
- `bool EnableGameSound [Whether to play sounds when in a Play In Editor session]`
- `bool EnablePIEEnterAndExitSounds [Whether to play a sound when entering and exiting PIE]`
- `bool GameGetsMouseControl [Give the game mouse control when PIE starts or require a click in the viewport first]`
- `EPlayOnLaunchConfiguration LaunchConfiguration [Which build configuration to use when launching on device.]`
- `ELabelAnchorMode MouseControlLabelPosition [Location on screen to anchor the mouse control label when in PIE mode.]`
- `FLevelEditorPlayNetworkEmulationSettings NetworkEmulationSettings [Customizable settings allowing to emulate latency and packetloss for game network transmissions]`
- `int NewWindowHeight [The height of the new view port window in pixels (0 = use the desktop's screen resolution).]`
- `FIntPoint NewWindowPosition [The position of the new view port window on the screen in pixels.]`
- `int NewWindowWidth [The width of the new view port window in pixels (0 = use the desktop's screen resolution).]`
- `bool PIEAlwaysOnTop [Always have the PIE window on top of the parent windows.]`
- `EPlayOnPakFileMode PackFilesForLaunch [Whether to content should be stored in pak files when launching on device. */]`
- `int PlayInEditorSoundQualityLevel [Which quality level to use when playing in editor]`
- `EPlayNetMode PlayNetMode [NetMode to use for Play In Editor.]`
- `int PlayNumberOfClients [The number of client windows to open. The first one to open will respect the Play In Editor "Modes" option (PIE, PINW), additional clients respect the RunUnderOneProcess setting.]`
- `int PrimaryPIEClientIndex [In multiplayer PIE which client will be the 'primary'. Considered most important and given a larger client window, access to unique hardware like a VirtualReality HMD, etc. Intended to help test issues that affect the second, etc client.  0 is the first client. If the setting is >= than the number of clients the last will be primary. -1 will result in no primary.  Note that this is an index only of PIE instance windows, in netmode 'Play as Client' pie instance zero is a windowless dedicated server, so setting 0 here would make the fist pie window the primary which would be PIEInstance 1, rather than 0 as in other netmodes.]`
- `bool RouteGamepadToSecondWindow [When running multiple player windows in a single process, this option determines how the game pad input gets routed.

If unchecked (default) then the 1st game pad is attached to the 1st window, 2nd to the 2nd window, and so on.

If it is checked, the 1st game pad goes the 2nd window. The 1st window can then be controlled by keyboard/mouse, which is convenient if two people are testing on the same computer.]`
- `bool RunUnderOneProcess [Spawn multiple player windows in a single instance of UE. This will load much faster, but has potential to have more issues.]`
- `FLinearColor ServerDebugDrawingColorTint [Debug drawing originating from the server will be biased towards this color]`
- `float32 ServerDebugDrawingColorTintStrength [How strongly debug drawing originating from the server will be biased towards the tint color]`
- `int ServerFixedFPS [If > 0, Tick dedicated server at a fixed frame rate. Does not impact Listen Server (use ClientFixedFPS setting). This is the target frame rate, e.g, "20" for 20fps, which will result in 1/20 second tick steps.]`
- `FString ServerMapNameOverride [Override the map launched by the dedicated server (currently only used when in PIE_StandaloneWithServer net mode)]`
- `uint16 ServerPort [What port used by the server for simple networking]`
- `bool ShouldMinimizeEditorOnVRPIE [Whether or not the editor is minimized on VR PIE]`
- `bool ShowMouseControlLabel [Whether to show a label for mouse control gestures in the PIE view.]`
- `EInputDeviceMappingPolicy SimulatedDeviceMappingPolicy [If enabled, then this simulated device mapping policy will be used instead of the one set in the Project Settings.
Simulating this device mapping policy may be useful to test different controller connection and login flows
in the editor which would otherwise require you to deploy to a console to test.]`
- `bool SoloAudioInFirstPIEClient [Whether to automatically solo audio in first PIE client]`
- `bool UseMouseForTouch [While using the game viewport, it sends mouse movement and clicks as touch events, instead of as mouse events.]`
- `bool ViewportGetsHMDControl [Whether or not HMD orientation should be used when playing in viewport]`
- `bool bAutoCompileBlueprintsOnLaunch [Whether to automatically recompile dirty Blueprints before launching]`
- `bool bEmulateStereo [Whether we should emulate stereo (helps checking VR rendering issues).]`
- `bool bHMDForPrimaryProcessOnly [When running multiple player windows in multiple processes, this option determines how HMD(s)/Simulator(s) is/are attached to processes.

If checked (default), there is only one HMD/Simulator and it is only attached to the primary process.

If unchecked, there could be multiple HMDs/Simulators if HMD/XRSimulator supports it, and each process could have its own attached HMD or XRSimulator, or all processes could share the same HMD by switching the HMD to the active process dynamically.]`
- `bool bLaunchSeparateServer [This is a rarely used option that will launch a separate server (possibly hidden in-process depending on RunUnderOneProcess)
even if the net mode does not require a server (such as Standalone). If the net mode requires a server (such as Client) a
server will be launched for you (regardless of this setting). This allows you to test offline -> server workflows by connecting
("open 127.0.0.1:<ServerPort>") from the offline game.]`
- `bool bPreferToStreamLevelsInPIE [Prefer to stream sub-levels from the disk instead of duplicating editor sub-levels]`
- `bool bPromoteOutputLogWarningsDuringPIE [Should warnings and errors in the Output Log during "Play in Editor" be promoted to the message log?]`
- `bool bShouldMinimizeEditorOnNonVRPIE [Whether or not the editor is minimized on non-VR PIE]`
- `bool bShowServerDebugDrawingByDefault [Controls the default value of the show flag ServerDrawDebug]`
- `bool bSimulateDeviceMappingPolicy []`

---

