### UNarrativeWeaponFX


Handles spawning some FX, could be for a Weapon, Projectile, Gameplay Cue, etc.
This is a standalone object because we want to decouple FX from any particular class, as many different classes all need to spawn VFX into the world.

Currently we roll the actual implementation in BP, but have it defined in C++ for flexibility.
---

