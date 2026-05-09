### FAnimPhysSimSpaceSettings


**属性**:

- `FVector ExternalAngularVelocity [Additional angular velocity that is added to the component angular velocity. This can be used to make the simulation act as if the actor is rotating
even when it is not. E.g., to apply physics to a character on a podium as the camera rotates around it, to emulate the podium itself rotating.
Vector is in world space. Units are rad/s.]`
- `float32 MaxAngularAcceleration [A clamp on the effective world-space angular accleration that is passed to the simulation. Units are radian/s/s. The default value effectively means "unlimited".
This has a similar effect to MaxAngularVelocity, except that it is related to the flying out of bodies when the rotation speed suddenly changes. Typical limits for
a character might be around 100.]`
- `float32 MaxAngularVelocity [A clamp on the effective world-space angular velocity that is passed to the simulation. Units are radian/s, so a value of about 6.0 is one rotation per second.
The default value effectively means "unlimited". You would reduce this (and MaxAngularAcceleration) to limit how much bodies "fly out" when the actor spins on the spot.
This is especially useful if you have characters than can rotate very quickly and you would probably want values around or less than 10 in this case.]`
- `float32 SimSpaceAngularAlpha [Global multipler on the effects of simulation space rotational movement. Must be in range[0, 1].If SimSpaceAngularAlpha = 0.0, the system is disabled and the simulation will
be fully local (i.e., world-space actor movement and rotation does not affect the simulation).]`


**方法**:

- `FAnimPhysSimSpaceSettings& opAssign(FAnimPhysSimSpaceSettings Other)`

---

