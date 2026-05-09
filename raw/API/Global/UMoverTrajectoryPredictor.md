### UMoverTrajectoryPredictor


Trajectory predictor that can query from a Mover-driven actor, for use with Pose Search

**属性**:

- `FFrameRate MoverSamplingFrameRate [Sampling frame rate to query the mover, doesn't necessarily match the SecondsPerPredictionSample which is used to write to the trajectory
This allows sampling of mover at a high frequency for accuracy but then we can downsample the results to a more coarse grained trajectory]`


**方法**:

- `Setup(UMoverComponent InMoverComponent)`

---

