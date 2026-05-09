### URigVMLink


The Link represents a connection between two Pins
within a Graph. The Link can be accessed on the
Graph itself - or through the URigVMPin::GetLinks()
method.

**方法**:

- `URigVMGraph GetGraph() const`  
  Returns the Link's owning Graph/
- `int GetGraphDepth() const`  
  Returns the graph nesting depth of this link
- `int GetLinkIndex() const`  
  Returns the current index of this Link within its owning Graph.
- `URigVMPin GetOppositePin(const URigVMPin InPin) const`  
  Returns the opposite Pin of this Link given one of its edges (or nullptr)
- `FString GetPinPathRepresentation() const`  
  Returns a string representation of the Link,
for example: "NodeA.Color.R -> NodeB.Translation.X"
note: can be split again using SplitPinPathRepresentation
- `URigVMNode GetSourceNode() const`  
  Returns the source Node of this Link (or nullptr)
- `URigVMPin GetSourcePin() const`  
  Returns the source Pin of this Link (or nullptr)
- `URigVMNode GetTargetNode() const`  
  Returns the target Node of this Link (or nullptr)
- `URigVMPin GetTargetPin() const`  
  Returns the target Pin of this Link (or nullptr)

---

