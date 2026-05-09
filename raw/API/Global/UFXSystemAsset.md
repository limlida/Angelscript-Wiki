### UFXSystemAsset


**属性**:

- `uint MaxPoolSize [Max number of components of this system to keep resident in the world component pool.]`
- `uint PoolPrimeSize [How many instances we should use to initially prime the pool.
This can amortize runtime activation cost by moving it to load time.
Use with care as this could cause large hitches for systems loaded/unloaded during play rather than at level load.]`

---

