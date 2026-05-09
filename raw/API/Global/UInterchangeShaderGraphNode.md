### UInterchangeShaderGraphNode


A shader graph has its own set of inputs on which shader nodes can be connected to.

**方法**:

- `bool GetCustomBlendMode(int& AttributeValue) const`  
  Set the Blend Mode using EBlendMode to avoid a dependency on the Engine.
- `bool GetCustomDisplacementCenterMode(float32& AttributeValue) const`  
  Set the center of the displacement
- `bool GetCustomIsAShaderFunction(bool& AttributeValue) const`
- `bool GetCustomOpacityMaskClipValue(float32& AttributeValue) const`
- `bool GetCustomScreenSpaceReflections(bool& AttributeValue) const`
- `bool GetCustomTwoSided(bool& AttributeValue) const`
- `bool GetCustomTwoSidedTransmission(bool& AttributeValue) const`  
  Forces two-sided even for Transmission materials.
- `bool SetCustomBlendMode(int AttributeValue)`
- `bool SetCustomDisplacementCenterMode(float32 AttributeValue)`
- `bool SetCustomIsAShaderFunction(bool AttributeValue)`  
  Set whether this shader graph should be considered as a material (false), or a material function (true).
- `bool SetCustomOpacityMaskClipValue(float32 AttributeValue, bool bAddApplyDelegate = true)`  
  The shader is transparent if its alpha value is lower than the clip value, or opaque if it is higher.
- `bool SetCustomScreenSpaceReflections(bool AttributeValue)`
- `bool SetCustomTwoSided(bool AttributeValue)`  
  Set if this shader graph should be rendered two-sided or not. Defaults to off.
- `bool SetCustomTwoSidedTransmission(bool AttributeValue)`

---

