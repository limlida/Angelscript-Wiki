### FRetargetStretchChainSettings


**属性**:

- `float MatchSourceLength [Range 0 to 1. Default 0. Matches the total length of this chain with the mapped source chain.
At 0, the chain's length will be left alone
At 1, the chain will be stretched to match the length of the source.]`
- `float ScaleChainLength [Range 0 to inf. Default 1. A multiplier on the length of the chain, applied after matching the source length.]`
- `FName TargetChainName [The name of the target chain to stretch.]`
- `bool bEnabled [Enable/disable stretching.]`


**方法**:

- `FRetargetStretchChainSettings& opAssign(FRetargetStretchChainSettings Other)`

---

