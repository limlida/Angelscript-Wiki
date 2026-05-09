### UTakeRecorderProjectSettings


Universal take recorder settings that apply to a whole take

**属性**:

- `FTakeRecorderHitchProtectionParameters HitchProtectionSettings [Controls the behaviour for hitch protection.

On a high level, it achieves even key spacing in recorded data even when the engine freezes on a frame ("hitches").
When a frames takes longer, the simulation continues to advance at the same fixed time step and assigned to the timecode the frame would have
had, if they hitch hadn't occured.

Example: frame n at 17:56:12:02 freezes for 1s. In physical time, once the hitches finishes, timecode will have advanced by 1s to 17:56:13:02.
However, hitch protection annotates frame n+1 with timecode 17:56:12:03. The subsequent frames continue to be ticked at the same rate, e.g. 1/24s;
as long as it takes less CPU time to run the simulation (i.e. CPU time to simulate is less than 1/24s), the simulation time eventually catches
up with physical time.]`
- `FTakeRecorderProjectParameters Settings [General take recorder settings]`

---

