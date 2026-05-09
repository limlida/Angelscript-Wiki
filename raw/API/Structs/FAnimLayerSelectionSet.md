### FAnimLayerSelectionSet


Bound object/control rig and the properties/channels it is made of
A layer will consist of a bunch of these

**属性**:

- `TWeakObjectPtr<UObject> BoundObject`
- `TMap<FName,FAnimLayerPropertyAndChannels> Names [bound object is either a CR or a bound sequencer object]`


**方法**:

- `FAnimLayerSelectionSet& opAssign(FAnimLayerSelectionSet Other)`

---

