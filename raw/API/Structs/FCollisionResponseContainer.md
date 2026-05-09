### FCollisionResponseContainer


Container for indicating a set of collision channels that this object will collide with.

**属性**:

- `ECollisionResponse Camera [3]`
- `ECollisionResponse Destructible [6]`
- `ECollisionResponse ECC_AttackTrace [17]`
- `ECollisionResponse ECC_Climbable [15]`
- `ECollisionResponse ECC_NarrativeInteraction [in order to use this custom channels
we recommend to define in your local file
- i.e. #define COLLISION_WEAPON               ECC_GameTraceChannel1
and make sure you customize these it in INI file by

in DefaultEngine.ini

[/Script/Engine.CollisionProfile]
GameTraceChannel1="Weapon"

also in the INI file, you can override collision profiles that are defined by simply redefining
note that Weapon isn't defined in the BaseEngine.ini file, but "Trigger" is defined in Engine
+Profiles=(Name="Trigger",CollisionEnabled=QueryOnly,ObjectTypeName=WorldDynamic, DefaultResponse=ECR_Overlap, CustomResponses=((Channel=Visibility, Response=ECR_Ignore), (Channel=Weapon, Response=ECR_Ignore)))]`
- `ECollisionResponse ECC_NarrativeWeapon [14]`
- `ECollisionResponse ECC_Traversable [16]`
- `ECollisionResponse ECC_Weapon [18]`
- `ECollisionResponse EngineTraceChannel1 [Unspecified Engine Trace Channels]`
- `ECollisionResponse EngineTraceChannel2 [8]`
- `ECollisionResponse EngineTraceChannel3 [9]`
- `ECollisionResponse EngineTraceChannel4 [10]`
- `ECollisionResponse EngineTraceChannel5 [11]`
- `ECollisionResponse EngineTraceChannel6 [12]`
- `ECollisionResponse GameTraceChannel10 [22]`
- `ECollisionResponse GameTraceChannel11 [23]`
- `ECollisionResponse GameTraceChannel12 [24]`
- `ECollisionResponse GameTraceChannel13 [25]`
- `ECollisionResponse GameTraceChannel14 [26]`
- `ECollisionResponse GameTraceChannel15 [27]`
- `ECollisionResponse GameTraceChannel16 [28]`
- `ECollisionResponse GameTraceChannel17 [28]`
- `ECollisionResponse GameTraceChannel18 [30]`
- `ECollisionResponse GameTraceChannel7 [19]`
- `ECollisionResponse GameTraceChannel8 [20]`
- `ECollisionResponse GameTraceChannel9 [21]`
- `ECollisionResponse Pawn [1.]`
- `ECollisionResponse PhysicsBody [4]`
- `ECollisionResponse Vehicle [5]`
- `ECollisionResponse Visibility [2]`
- `ECollisionResponse WorldDynamic [0]`
- `ECollisionResponse WorldStatic [Reserved Engine Trace Channels

Note -        If you change this (add/remove/modify)
                      you should make sure it matches with ECollisionChannel (including DisplayName)
                      They has to be mirrored if serialized]`


**方法**:

- `bool SetResponse(ECollisionChannel Channel, ECollisionResponse NewResponse)`
- `bool SetAllChannels(ECollisionResponse NewResponse)`
- `bool ReplaceChannels(ECollisionResponse OldResponse, ECollisionResponse NewResponse)`
- `ECollisionResponse GetResponse(ECollisionChannel Channel) const`
- `bool opEquals(FCollisionResponseContainer Other) const`
- `FCollisionResponseContainer& opAssign(FCollisionResponseContainer Other)`

---

