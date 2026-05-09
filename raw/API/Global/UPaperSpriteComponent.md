### UPaperSpriteComponent


A component that handles rendering and collision for a single instance of a UPaperSprite asset.

This component is created when you drag a sprite asset from the content browser into a Blueprint, or
contained inside of the actor created when you drag one into the level.

@see UPrimitiveComponent, UPaperSprite

**属性**:

- `UPaperSprite SourceSprite [The sprite asset used by this component]`
- `FLinearColor SpriteColor [The color of the sprite (passed to the sprite material as a vertex color)]`


**方法**:

- `UPaperSprite GetSprite()`  
  Gets the PaperSprite used by this instance.
- `bool SetSprite(UPaperSprite NewSprite)`  
  Change the PaperSprite used by this instance.
- `SetSpriteColor(FLinearColor NewColor)`  
  Set color of the sprite

---

