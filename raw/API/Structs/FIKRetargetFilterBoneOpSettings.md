### FIKRetargetFilterBoneOpSettings


**属性**:

- `TArray<FFilterBoneData> BonesToFilter [A list of bone-pairs to copy transforms between]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `float MinFrequency [Hz. Sets the low-pass cutoff when motion is near zero.
       * Higher = less smoothing at rest (more responsive but more jitter).
       * Lower = more smoothing at rest (less jitter but more “stickiness”).]`
- `float Responsiveness [Raises the cutoff as angular speed grows.
       * Larger values are snappier on fast turns.
       * Smaller values are smoother but laggier during quick motion.
       * Typical sweet spot: 0.3 – 0.8]`
- `float VelocityCutoffHz [Hz. Low-passes the raw angular velocity before we use it to adapt the derivative cutoff.
      * If you see breathing/pumping of the smoothing during motion onsets or reversals, lower this value (e.g., 30 → 20 Hz).
      * If responsiveness to fast changes is sluggish, raise this a bit.
      * Good starting range: 15–30 Hz. Keep under Nyquist frequency (frame_rate/2).]`
- `bool bResetPlayback [If true, filter is reset when playback loops.]`


**方法**:

- `FIKRetargetFilterBoneOpSettings& opAssign(FIKRetargetFilterBoneOpSettings Other)`

---

