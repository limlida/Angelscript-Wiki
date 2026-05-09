### UAutoDestroySubsystem


The Auto destroy subsystem manages actors who have bAutoDestroyWhenFinished
set as true. This ensures that even actors who do not have Tick enabled
get properly destroyed, as well as decouple this behavior from AActor::Tick
---

