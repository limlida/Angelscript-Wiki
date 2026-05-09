### UTkHorseMovementMode


马匹移动模式（新）：不继承 SmoothWalkingMode。
- 实际移动方向 = 从「当前马朝向」按 InterpSpeed 向「输入速度方向」插值（符合现实马转向）。
- 马的朝向 = 当前实际速度方向。

**属性**:

- `float32 CanterSpeed []`
- `float32 FacingTurnRate [朝向跟随速度方向的角速度 (deg/s)，通常 >= InterpSpeed]`
- `float32 GallopSpeed []`
- `float32 InterpSpeed [方向插值速率 (deg/s)：从当前朝向转向输入方向的最大角速度，可按步态区分]`
- `float32 SpeedAccelRate []`
- `float32 SpeedDecelRate []`
- `float32 TrotSpeed []`
- `bool bDebugAngularVelocity [调试：绘制并打印本帧输出的 AngularVelocityDegrees（黄箭头=转轴方向，长度∝角速度 deg/s）]`

---

