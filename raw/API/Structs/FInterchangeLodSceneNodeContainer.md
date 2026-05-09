### FInterchangeLodSceneNodeContainer


* This container exists only because UPROPERTY cannot support nested container. See FInterchangeMeshInstance.

**属性**:

- `TArray<TObjectPtr<const UInterchangeBaseNode>> BaseNodes [Each scene node here represents a mesh scene/component node. If it represents a LOD group, there may be more then one mesh scene node for a specific LOD index.]`


**方法**:

- `FInterchangeLodSceneNodeContainer& opAssign(FInterchangeLodSceneNodeContainer Other)`

---

