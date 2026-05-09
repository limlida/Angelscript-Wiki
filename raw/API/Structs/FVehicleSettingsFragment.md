### FVehicleSettingsFragment


**属性**:

- `float32 BrakingDistanceFromNext [The distance that we begin braking when there is an incoming obstacle]`
- `float32 BrakingDistanceFromObstacle [The distance that we begin braking when there is an incoming obstacle]`
- `float32 ClosedLaneBrakingDistance [The distance that we begin to brake when there is an incoming closed lane]`
- `float32 ClosedLaneBrakingPower [The power used on the brakes to have the vehicle come to a stop when there is an incoming closed lane]`
- `float32 ClosedLaneMinDistance [The minimum distance to be from a closed lane]`
- `float32 LaneSearchRadius [The range to search for a nearby zonegraph lane]`
- `float32 MinimumDistanceToNext [The minimum distance we want to be from an obstacle]`
- `float32 MinimumDistanceToObstacle [The minimum distance we want to be from an obstacle]`
- `float32 NextVehicleAvoidanceBrakingPower [The power that we use on the brakes to stop the vehicle on an incoming obstacle]`
- `float32 ObstacleAvoidanceBrakingPower [The power that we use on the brakes to stop the vehicle on an incoming obstacle]`
- `float32 ObstacleSearchRadius [Radius to search around for nearby obstacles]`
- `FZoneGraphTagFilter VehicleLaneFilter [The filter that will be used when picking a lane in the zonegraph]`
- `float32 VehicleMaxSpeed [The max speed we would like the vehicle to be going]`


**方法**:

- `FVehicleSettingsFragment& opAssign(FVehicleSettingsFragment Other)`

---

