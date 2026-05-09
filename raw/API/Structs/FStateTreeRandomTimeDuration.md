### FStateTreeRandomTimeDuration


Time duration with random variance. Stored compactly as two uint16s, which gives time range of about 650 seconds.
The variance is symmetric (+-) around the specified duration.

**属性**:

- `uint16 Duration []`
- `uint16 RandomVariance []`


**方法**:

- `FStateTreeRandomTimeDuration& opAssign(FStateTreeRandomTimeDuration Other)`

---

