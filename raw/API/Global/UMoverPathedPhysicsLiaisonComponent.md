### UMoverPathedPhysicsLiaisonComponent


WARNING - This class will be removed. Please use UChaosMoverBackend along with UChaosPathedMovementControllerComponent
to simulate moving platforms

Liaison that works with path-following movement modes.
Establishes a joint constraint between the actual component to update and wherever it should be along the path.
This allows the platform's velocity and rotation to be affected by physics as it moves along the path, and the joint pulls it back where it should be (think spring).
Only compatible with UPathedPhysicsMovementModes, which are responsible for dictating how "loose" the joint between the platform and its ideal position is.
---

