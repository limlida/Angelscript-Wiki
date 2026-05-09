### FAnimGraphBlendOptions


Blending options for animation graphs in Linked Animation Blueprints.

**属性**:

- `UBlendProfile BlendInProfile [Optional blend profile to use when blending this graph in (if BlendInTime > 0)]`
- `float32 BlendInTime [Time to blend this graph in using Inertialization. Specify -1.0 to defer to the BlendOutTime of the previous graph.
To blend this graph in you must place an Inertialization node after the Linked Anim Graph node or Linked Anim Layer node that uses this graph.]`
- `UBlendProfile BlendOutProfile [Optional blend profile to use when blending this graph out (if BlendOutTime > 0)]`
- `float32 BlendOutTime [Time to blend this graph out using Inertialization. Specify -1.0 to defer to the BlendInTime of the next graph.
To blend this graph out you must place an Inertialization node after the Linked Anim Graph node or Linked Anim Layer node that uses this graph.]`


**方法**:

- `FAnimGraphBlendOptions& opAssign(FAnimGraphBlendOptions Other)`

---

