### ULiveLinkMessageBusFinder


Asset for finding available Message Bus Sources.

**方法**:

- `GetAvailableProviders(FLatentActionInfo LatentInfo, float32 Duration, TArray<FProviderPollResult>& AvailableProviders)`  
  * Broadcasts a message to the network and returns a list of all providers who replied within a set amount of time.
*
* @param AvailableProviders Will contain the collection of found Message Bus Providers.
* @param Duration The amount of time to wait for replies in seconds

---

