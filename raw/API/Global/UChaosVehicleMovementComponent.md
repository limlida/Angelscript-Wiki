### UChaosVehicleMovementComponent


Base component to handle the vehicle simulation for an actor.

**属性**:

- `TArray<FVehicleAerofoilConfig> Aerofoils [Optional aerofoil setup - can be used for car spoilers or aircraft wings/elevator/rudder]`
- `FVehicleInputRateConfig BrakeInputRate [Rate at which input brake can rise and fall]`
- `FVector CenterOfMassOverride [The center of mass override value, this value overrides the calculated COM and the COM offset value in the mesh is also ignored.]`
- `float32 ChassisHeight [Chassis height used for drag force computation (cm)]`
- `float32 ChassisWidth [Chassis width used for drag force computation (cm)]`
- `float32 DownforceCoefficient [DownforceCoefficient of the vehicle chassis - force pressing vehicle into ground at speed]`
- `float32 DragCoefficient [DragCoefficient of the vehicle chassis - force resisting forward motion at speed]`
- `FVehicleInputRateConfig HandbrakeInputRate [Rate at which input handbrake can rise and fall]`
- `float32 IdleBrakeInput [How much to press the brake when the player has release throttle]`
- `FVector InertiaTensorScale [Scales the vehicle's inertia in each direction (forward, right, up)]`
- `float32 Mass [Mass to set the vehicle chassis to. It's much easier to tweak vehicle settings when
the mass doesn't change due to tweaks with the physics asset. [kg]]`
- `FVehicleInputRateConfig PitchInputRate [Rate at which input pitch can rise and fall]`
- `FVehicleInputRateConfig RollInputRate [Rate at which input roll can rise and fall]`
- `float32 SleepSlopeLimit [Option to apply some aggressive sleep logic if slopes up Z is less than this value, i.e value = Cos(SlopeAngle) so 0.866 will sleep up to 30 degree slopes]`
- `float32 SleepThreshold [Option to apply some aggressive sleep logic, larger number is more agressive, 0 disables]`
- `FVehicleStabilizeControlConfig StabilizeControl [Arcade style control of vehicle]`
- `FVehicleInputRateConfig SteeringInputRate [Rate at which input steering can rise and fall]`
- `float32 StopThreshold [Auto-brake when absolute vehicle forward speed is less than this (cm/s)]`
- `FVehicleTargetRotationControlConfig TargetRotationControl [Arcade style direct control of vehicle rotation via torque force]`
- `FVehicleInputRateConfig ThrottleInputRate [Rate at which input throttle can rise and fall]`
- `TArray<FVehicleThrustConfig> Thrusters [Optional thruster setup, use one or more as your main engine or as supplementary booster]`
- `FVehicleTorqueControlConfig TorqueControl [Arcade style direct control of vehicle rotation via torque force]`
- `float32 WrongDirectionThreshold [Auto-brake when vehicle forward speed is opposite of player input by at least this much (cm/s)]`
- `FVehicleInputRateConfig YawInputRate [Rate at which input yaw can rise and fall]`
- `bool bEnableCenterOfMassOverride [Enable to override the calculated COM position with your own fixed value - this prevents the vehicle handling changing when the asset changes]`
- `bool bRequiresControllerForInputs [Bypass the need for a controller in order for the controls to be processed.]`
- `bool bReverseAsBrake [If true, the brake and reverse controls will behave in a more arcade fashion where holding reverse also functions as brake. For a more realistic approach turn this off]`
- `bool bThrottleAsBrake [If true, when reversing the throttle will behave like a brake while the vehicle moving in a backwards direction - requires bReverseAsBrake to be enabled for operation]`


**方法**:

- `DecreaseThrottleInput(float32 ThrottleDelta)`  
  Decrease the vehicle throttle position  [throttle range normalized 0 to 1]
- `EnableSelfRighting(bool InState)`
- `float32 GetBrakeInput()`  
  Get the user input for the vehicle brake - can use this to feed control to a connected trailer
- `int GetCurrentGear() const`  
  Get current gear
- `float32 GetForwardSpeed() const`  
  How fast the vehicle is moving forward
- `float32 GetForwardSpeedMPH() const`  
  How fast the vehicle is moving forward
- `bool GetHandbrakeInput() const`  
  Get the user input for the vehicle handbrake - can use this to feed control to a connected trailer
- `float32 GetSteeringInput()`  
  Get the user input for the vehicle steering - can use this to feed control to a connected trailer
- `int GetTargetGear() const`  
  Get target gear
- `float32 GetThrottleInput()`  
  Get the user input for the vehicle throttle - can use this to feed control to a connected trailer
- `bool GetUseAutoGears() const`  
  Are gears being changed automatically?
- `IncreaseThrottleInput(float32 ThrottleDelta)`  
  Increase the vehicle throttle position [throttle range normalized 0 to 1]
- `bool IsParked() const`  
  Is the vehicle in park mode
- `ResetVehicle()`  
  Reset some vehicle state - call this if you are say creating pool of vehicles that get reused and you don't want to carry over the previous state
- `ServerUpdateState(float32 InSteeringInput, float32 InThrottleInput, float32 InBrakeInput, float32 InHandbrakeInput, int InCurrentGear, float32 InRollInput, float32 InPitchInput, float32 InYawInput)`  
  Pass current state to server
- `SetBrakeInput(float32 Brake)`  
  Set the user input for the vehicle Brake [range 0 to 1]
- `SetChangeDownInput(bool bNewGearDown)`  
  Set the user input for gear down
- `SetChangeUpInput(bool bNewGearUp)`  
  Set the user input for gear up
- `SetHandbrakeInput(bool bNewHandbrake)`  
  Set the user input for handbrake
- `SetParked(bool bParked)`  
  Set the vehicle in park mode
- `SetPitchInput(float32 Pitch)`  
  Set the user input for the vehicle pitch [range -1 to 1]
- `SetRequiresControllerForInputs(bool bRequiresController)`  
  Set the flag that determines whether a controller is required to set control inputs
- `SetRollInput(float32 Roll)`  
  Set the user input for the vehicle roll [range -1 to 1]
- `SetSleeping(bool bEnableSleep)`  
  Set the vehicle sleeping (bEnableSleep=true) or wake it up (bEnableSleep=false)
- `SetSteeringInput(float32 Steering)`  
  Set the user input for the vehicle steering [range -1 to 1]
- `SetTargetGear(int GearNum, bool bImmediate)`  
  Set the user input for gear (-1 reverse, 0 neutral, 1+ forward)
- `SetThrottleInput(float32 Throttle)`  
  Set the user input for the vehicle throttle [range 0 to 1]
- `SetUseAutomaticGears(bool bUseAuto)`  
  Set the flag that will be used to select auto-gears
- `SetYawInput(float32 Yaw)`  
  Set the user input for the vehicle yaw [range -1 to 1]

---

