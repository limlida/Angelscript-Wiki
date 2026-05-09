### FChaosVDPlaybackEngineSnapshot


Structure containing data about the playback engine state at the time when this struct is created.
This is used for functional testing, to verify if a loaded file at a specific frame keeps the expected composition

@note If you change the composition of this structure or of the structures used by it, you need to re-generate the snapshots used by the
scene integrity playback tests in the Simulation Tests Plugin

**方法**:

- `FChaosVDPlaybackEngineSnapshot& opAssign(FChaosVDPlaybackEngineSnapshot Other)`

---

