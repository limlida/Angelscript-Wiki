### UPawnSensingComponent


**属性**:

- `float32 HearingMaxSoundAge [Max age of sounds we can hear. Should be greater than SensingInterval, or you might miss hearing some sounds!]`
- `float32 HearingThreshold [Max distance at which a makenoise(1.0) loudness sound can be heard, regardless of occlusion]`
- `float32 LOSHearingThreshold [Max distance at which a makenoise(1.0) loudness sound can be heard if unoccluded (LOSHearingThreshold should be > HearingThreshold)]`
- `FHearNoiseDelegate__PawnSensingComponent OnHearNoise [Delegate to execute when we hear a noise from a Pawn's PawnNoiseEmitterComponent.]`
- `FSeePawnDelegate__PawnSensingComponent OnSeePawn [Delegate to execute when we see a Pawn.]`
- `float32 PeripheralVisionAngle [How far to the side AI can see, in degrees. Use SetPeripheralVisionAngle to change the value at runtime.]`
- `float32 SensingInterval [Amount of time between pawn sensing updates. Use SetSensingInterval() to adjust this at runtime. A value <= 0 prevents any updates.]`
- `float32 SightRadius [Maximum sight distance.]`
- `bool bEnableSensingUpdates [If true, component will perform sensing updates. At runtime change this using SetSensingUpdatesEnabled().]`
- `bool bHearNoises [If true, we will perform audibility tests and will be notified when a Pawn makes a noise that can be heard. Default: true
IMPORTANT NOTE: If we can see pawns (bSeePawns is true), and the pawn is visible, noise notifications are not triggered.]`
- `bool bOnlySensePlayers [If true, will only sense player-controlled pawns in the world. Default: true]`
- `bool bSeePawns [If true, we will perform visibility tests and will trigger notifications when a Pawn is visible. Default: true]`


**方法**:

- `float32 GetPeripheralVisionAngle() const`
- `float32 GetPeripheralVisionCosine() const`
- `SetPeripheralVisionAngle(float32 NewPeripheralVisionAngle)`  
  Sets PeripheralVisionAngle. Calculates PeripheralVisionCosine from PeripheralVisionAngle
- `SetSensingInterval(float32 NewSensingInterval)`  
  Changes the SensingInterval.
If we are currently waiting for an interval, this can either extend or shorten that interval.
A value <= 0 prevents any updates.
- `SetSensingUpdatesEnabled(bool bEnabled)`  
  Enables or disables sensing updates. The timer is reset in either case.

---

