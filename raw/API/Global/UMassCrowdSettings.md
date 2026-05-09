### UMassCrowdSettings


Settings for the MassCrowd plugin.

**属性**:

- `FColor ClosedLaneColor [Color used to render crowd lane that are closed to navigation.]`
- `FZoneGraphTag CrossingTag [Tag required on a lane to build intersection crossing runtime data for it.]`
- `FZoneGraphTag CrowdTag [Tag required on a lane to build crowd related runtime data for it and render it.]`
- `float32 IntersectionLaneScaleFactor [Scale factor applied on the base thickness to render intersection lanes data.]`
- `float32 LaneBaseLineThickness [Base thickness used to render lane data specific to crowd.]`
- `TArray<FMassCrowdLaneDensityDesc> LaneDensities [List of all lane density descriptors.]`
- `float32 LaneDensityScaleFactor [Scale factor applied on the base or intersection thickness to render density outline.]`
- `float32 LaneRenderZOffset [Z offset used to render lane data specific to crowd over the actual zone graph.]`
- `float32 MoveDistance [Distance ahead of the current lane location for the next movement target location.]`
- `float32 MoveDistanceRandomDeviation [Random deviation of the of the MoveDistance]`
- `float32 ObstacleEffectRadius [The radius an obstacle has effects on navigation.]`
- `float32 ObstacleMovingDistanceTolerance [An obstacle is considered moving when it has moved this much after being stationary.]`
- `float32 ObstacleStoppingSpeedTolerance [An obstacle is considered being stopped when it's speed is less than the tolerance.]`
- `float32 ObstacleTimeToStop [The time an obstacle needs to be not moving before it is reported as stopped.]`
- `FColor OpenedLaneColor [Color used to render crowd lane that are opened for navigation.]`
- `float32 SlotOffset [Offset from the lane entry where the slots are created.]`
- `uint SlotSize [Distance reserved for each entity while waiting on an intersection lane.]`
- `bool bDisplayDensities [Lanes will be displayed to represent their assigned densities. See MassCrowd settings for parameters.]`
- `bool bDisplayStates [Lanes will be displayed to indicates the current state. See MassCrowd settings for parameters.]`
- `bool bDisplayTrackingData [Text will be added on lanes with entity tracking or waiting area to indicate the current occupation]`

---

