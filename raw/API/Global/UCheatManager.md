### UCheatManager


Cheat Manager is a central blueprint to implement test and debug code and actions that are not to ship with the game.
As the Cheat Manager is not instanced in shipping builds, it is for debugging purposes only

**属性**:

- `TSubclassOf<ADebugCameraController> DebugCameraControllerClass [Debug camera - used to have independent camera without stopping gameplay]`


**方法**:

- `ChangeSize(float32 F)`  
  Scale the player's size to be F * default size.
- `DamageTarget(float32 DamageAmount)`  
  Damage the actor you're looking at (sourced from the player).
- `DestroyTarget()`  
  Destroy the actor you're looking at.
- `DisableDebugCamera()`  
  Switch controller from debug camera back to normal controller
- `EnableDebugCamera()`  
  Switch controller to debug camera without locking gameplay and with locking local player controller input
- `Fly()`  
  Pawn can fly.
- `FreezeFrame(float32 Delay)`  
  Pause the game for Delay seconds.
- `APlayerController GetPlayerController() const`
- `Ghost()`  
  Pawn no longer collides with the world, and can fly
- `God()`  
  Invulnerability cheat.
- `PlayersOnly()`  
  Freeze everything in the level except for players.
- `EndPlay()`  
  This is the End Play event for the CheatManager
- `InitCheatManager()`  
  BP implementable event for when CheatManager is created to allow any needed initialization.
- `ServerToggleAILogging()`
- `Slomo(float32 NewTimeDilation)`  
  Modify time dilation to change apparent speed of passage of time. e.g. "Slomo 0.1" makes everything move very slowly, while "Slomo 10" makes everything move very fast.
- `Teleport()`  
  Teleport to surface player is looking at.
- `Walk()`  
  Return to walking movement mode from Fly or Ghost cheat.

---

