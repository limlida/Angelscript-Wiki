### UAnimGraphNode_Base


This is the base class for any animation graph nodes that generate or consume an animation pose in
the animation blend graph.

Any concrete implementations will be paired with a runtime graph node derived from FAnimNode_Base

**属性**:

- `UAnimGraphNodeBinding Binding [Bindings for pins that this node exposes]`
- `TArray<FOptionalPinFromProperty> ShowPinForProperties []`
- `FName Tag [Optional reference tag name. If this is set then this node can be referenced from elsewhere in this animation blueprint using an anim node reference]`

---

