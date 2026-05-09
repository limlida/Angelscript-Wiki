### UNavigationInvokerComponent


**属性**:

- `ENavigationInvokerPriority Priority [Experimental invocation priority. It will modify the order in which invoked tiles are being built if SortPendingTilesMethod is set to SortByPriority.]`
- `FNavAgentSelector SupportedAgents [restrict navigation generation to specific agents]`
- `float32 TileGenerationRadius [Navigation data is requested within a TileGenerationRadius circle around the component owner.]`
- `float32 TileRemovalRadius [Navigation data can be discarded when outside of a TileRemovalRadius circle around the component owner.
This is computed for all navigation invokers, so a navigation data must be outside of all navigation invokers TileRemovalRadius circles to be discarded.]`

---

