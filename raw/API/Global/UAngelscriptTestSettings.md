### UAngelscriptTestSettings


**属性**:

- `TArray<FString> CoverageExcludePatterns [Don't measure coverage in paths that match these wildcards.
Paths start at the Angelscript root (by convention this dir is named Script/). If you want
to exclude a directory from which modules are imported as Network.MyFile, you want to add
Network/_* to this list (NOTE: remove the _, it's there to avoid -Wcomment in clang).
If you just want to exclude MyFile.as, add Network/MyFile.as. If you have the convention
that unit tests be in files named _Test.as, add the pattern *_Test.as, and so on.]`
- `int GarbageCollectEveryNTests [Force garbage collection every N tests.
This will also perform test execution in batches when hot reloading.
All the tests of an AS module are added or not, so the number of test in a batch can
be greater that this. Understand this setting as a minimum number of tests per batch but
don't continue adding modules once this number has been reached.
This allows the editor to refresh between batches and prevents a lock because of PhysX issues.
Set to 0 to disable.]`
- `int InPacketsMaxLatency [The maximum latency of incoming packets.]`
- `int InPacketsMinLatency [The minimum latency of incoming packets.]`
- `int InPacketsPacketLossPercentage [The packet loss percentage of incoming packets.]`
- `FString IntegrationTestMapRoot [Where integration test maps are stored.]`
- `FString IntegrationTestNamingConvention [Module paths containing IntegrationTests must match the following wildcard pattern]`
- `int OutPacketsMaxLatency [The maximum latency of outgoing packets.]`
- `int OutPacketsMinLatency [The minimum latency of outgoing packets.]`
- `int OutPacketsPacketLossPercentage [The packet loss percentage of outgoing packets.]`
- `TSoftClassPtr<UGameInstance> UnitTestGameInstanceClass [The game instance class to use for unit tests.]`
- `FString UnitTestNamingConvention [Module paths containing UnitTests must match the following wildcard pattern]`
- `bool bEnableCodeCoverage [Turn on code coverage measurements. Reports are written to Saved/CodeCoverage/.]`
- `bool bEnableDebugBreaksInTests [Debug-break on ensures in tests. This is generally off in tests because ensures
are intentionally triggered by tests all the time, which is really annoying.]`
- `bool bEnableNetworkEmulation [Whether tests that use client/server should apply any network emulation.]`
- `bool bEnableTestDiscovery [Whether to enable test discovery from script files.]`
- `bool bUseServerClientModel [The original Angelscript integration code has a focus on testing multiplayer, using a
client-server model (ENetPlayMode::PIE_Client). This breaks a lot of singleplayer features
and causes errors that early-fail the test when testing singleplayer games (e.g. creating
widgets, player controller things). Set this to false to to use ENetPlayMode::PIE_Standalone,
which allows you to test things in a singleplayer context, as you'd expect.

Notes:
  - changing maps breaks world context, so combine this with the _GetMapName() functionality
    to load into your existing singleplayer maps if you want to test them.
  - The PIE window that is started by the automation tool will probably still capture your
    mouse, so you might want to disable that to avoid disturbing tests. There's an editor
    option, or you can add some code.]`

---

