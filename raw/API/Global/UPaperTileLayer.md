### UPaperTileLayer


This class represents a single layer in a tile map.  All layers in the map must have the size dimensions.

**属性**:

- `float32 CollisionOffsetOverride [The override offset of the collision for this layer (when bOverrideCollisionOffset is set)
Note: This is measured in Unreal Units (cm) from the center of the tile map component, not from the previous layer.]`
- `float32 CollisionThicknessOverride [The override thickness of the collision for this layer (when bOverrideCollisionThickness is set)]`
- `FLinearColor LayerColor [The color of this layer (multiplied with the tile map color and passed to the material as a vertex color)]`
- `int LayerHeight [Height of the layer (in tiles)]`
- `FText LayerName [Name of the layer]`
- `int LayerWidth [Width of the layer (in tiles)]`
- `bool bHiddenInEditor [Is this layer currently hidden in the editor?]`
- `bool bHiddenInGame [Should this layer be hidden in the game?]`
- `bool bLayerCollides [Should this layer generate collision?
Note: This only has an effect if the owning tile map has collision enabled]`
- `bool bOverrideCollisionOffset [Should this layer use a custom offset for generated collision instead of the layer drawing offset?]`
- `bool bOverrideCollisionThickness [Should this layer use a custom thickness for generated collision instead of the thickness setting in the tile map?]`

---

