### ASwitchActor


Switch Actor allows quickly toggling the visibility of its child actors so that
only one is visible at a time. It can also be captured with the Variant Manager
to expose this capability as a property capture

**属性**:

- `USceneComponent SceneComponent [Exposing our root component like this allows manual Mobility control on the details panel]`


**方法**:

- `TArray<AActor> GetOptions() const`  
  Returns the child actors that are available options, in a fixed order that may differ from the one displayed in the world outliner
- `int GetSelectedOption() const`  
  If we have exactly one child actor visible, it will return a pointer to it. Returns nullptr otherwise
- `SelectOption(int OptionIndex)`  
  Select one of the available options by index

---

