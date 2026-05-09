### ULiveLinkPreset


**方法**:

- `bool AddToClient(bool bRecreatePresets = true) const`  
  Add the sources and subjects from this preset, but leave any existing sources and subjects connected.

@param bRecreatePresets      When true, if subjects and sources from this preset already exist, we will recreate them.

@return True is all sources and subjects from this preset could be created and added.
- `bool ApplyToClient() const`
- `ApplyToClientLatent(UObject WorldContextObject, FLatentActionInfo LatentInfo)`  
  Remove all previous sources and subjects and add the sources and subjects from this preset.
@return True is all sources and subjects from this preset could be created and added.
- `BuildFromClient()`  
  Reset this preset and build the list of sources and subjects from the client.

---

