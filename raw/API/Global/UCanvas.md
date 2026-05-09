### UCanvas


A drawing canvas.

**方法**:

- `Deproject(FVector2D ScreenPosition, FVector& WorldOrigin, FVector& WorldDirection)`  
  Performs a deprojection of a screen space coordinate using the projection matrix set up for the Canvas.

@param ScreenPosition                        Screen space position to deproject to the World.
@param WorldOrigin                           Vector which is the world position of the screen space position.
@param WorldDirection                        Vector which can be used in a trace to determine what is "behind" the screen space position. Useful for object picking.
- `DrawBorder(UTexture BorderTexture, UTexture BackgroundTexture, UTexture LeftBorderTexture, UTexture RightBorderTexture, UTexture TopBorderTexture, UTexture BottomBorderTexture, FVector2D ScreenPosition, FVector2D ScreenSize, FVector2D CoordinatePosition, FVector2D CoordinateSize = FVector2D ( 1.000000 , 1.000000 ), FLinearColor RenderColor = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ), FVector2D BorderScale = FVector2D ( 0.100000 , 0.100000 ), FVector2D BackgroundScale = FVector2D ( 0.100000 , 0.100000 ), float32 Rotation = 0.000000, FVector2D PivotPoint = FVector2D ( 0.500000 , 0.500000 ), FVector2D CornerSize = FVector2D ( ))`  
  Draws a 3x3 grid border with tiled frame and tiled interior on the Canvas.

@param BorderTexture                         Texture to use for border.
@param BackgroundTexture                     Texture to use for border background.
@param LeftBorderTexture                     Texture to use for the tiling left border.
@param RightBorderTexture            Texture to use for the tiling right border.
@param TopBorderTexture                      Texture to use for the tiling top border.
@param BottomBorderTexture           Texture to use for the tiling bottom border.
@param ScreenPosition                        Screen space position to render the texture.
@param ScreenSize                            Screen space size to render the texture.
@param CoordinatePosition            Normalized UV starting coordinate to use when rendering the border texture.
@param CoordinateSize                        Normalized UV size coordinate to use when rendering the border texture.
@param RenderColor                           Color to tint the border.
@param BorderScale                           Scale of the border.
@param BackgroundScale                       Scale of the background.
@param Rotation                                      Rotation, in degrees, to render the texture.
@param PivotPoint                            Normalized pivot point to use when rotating the texture.
@param CornerSize                            Frame corner size in percent of frame texture (should be < 0.5f).
- `DrawBox(FVector2D ScreenPosition, FVector2D ScreenSize, float32 Thickness = 1.000000, FLinearColor RenderColor = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ))`  
  Draws an unfilled box on the Canvas.

@param ScreenPosition                        Screen space position to render the text.
@param ScreenSize                            Screen space size to render the texture.
@param Thickness                                     How many pixels thick the box lines should be.
@param RenderColor                           Color to tint the box.
- `DrawLine(FVector2D ScreenPositionA = FVector2D ( ), FVector2D ScreenPositionB = FVector2D ( ), float32 Thickness = 1.000000, FLinearColor RenderColor = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ))`  
  Draws a line on the Canvas.

@param ScreenPositionA               Starting position of the line in screen space.
@param ScreenPositionB               Ending position of the line in screen space.
@param Thickness                             How many pixels thick this line should be.
@param RenderColor                   Color to render the line.
- `DrawMaterial(UMaterialInterface RenderMaterial, FVector2D ScreenPosition, FVector2D ScreenSize, FVector2D CoordinatePosition, FVector2D CoordinateSize = FVector2D ( 1.000000 , 1.000000 ), float32 Rotation = 0.000000, FVector2D PivotPoint = FVector2D ( 0.500000 , 0.500000 ))`  
  Draws a material on the Canvas.

@param RenderMaterial                        Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas.
@param ScreenPosition                        Screen space position to render the texture.
@param ScreenSize                            Screen space size to render the texture.
@param CoordinatePosition            Normalized UV starting coordinate to use when rendering the texture.
@param CoordinateSize                        Normalized UV size coordinate to use when rendering the texture.
@param Rotation                                      Rotation, in degrees, to render the texture.
@param PivotPoint                            Normalized pivot point to use when rotating the texture.
- `DrawMaterialTriangles(UMaterialInterface RenderMaterial, TArray<FCanvasUVTri> Triangles)`  
  Draws a set of triangles on the Canvas.

@param RenderMaterial                        Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas.
@param Triangles                                     Triangles to render.
- `DrawPolygon(UTexture RenderTexture, FVector2D ScreenPosition, FVector2D Radius = FVector2D ( 1.000000 , 1.000000 ), int NumberOfSides = 3, FLinearColor RenderColor = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ))`  
  Draws a polygon on the Canvas.

@param RenderTexture                         Texture to use when rendering the triangles. If no texture is set, then the default white texture is used.
@param ScreenPosition                        Screen space position to render the text.
@param Radius                                        How large in pixels this polygon should be.
@param NumberOfSides                         How many sides this polygon should have. This should be above or equal to three.
@param RenderColor                           Color to tint the polygon.
- `DrawText(UFont RenderFont, FString RenderText, FVector2D ScreenPosition, FVector2D Scale = FVector2D ( 1.000000 , 1.000000 ), FLinearColor RenderColor = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ), float32 Kerning = 0.000000, FLinearColor ShadowColor = FLinearColor ( 0.000000 , 0.000000 , 0.000000 , 1.000000 ), FVector2D ShadowOffset = FVector2D ( 1.000000 , 1.000000 ), bool bCentreX = false, bool bCentreY = false, bool bOutlined = false, FLinearColor OutlineColor = FLinearColor ( 0.000000 , 0.000000 , 0.000000 , 1.000000 ))`  
  Draws text on the Canvas.

@param RenderFont                            Font to use when rendering the text. If this is null, then a default engine font is used.
@param RenderText                            Text to render on the Canvas.
@param ScreenPosition                        Screen space position to render the text.
@param RenderColor                           Color to render the text.
@param Kerning                                       Horizontal spacing adjustment to modify the spacing between each letter.
@param ShadowColor                           Color to render the shadow of the text.
@param ShadowOffset                          Pixel offset relative to the screen space position to render the shadow of the text.
@param bCentreX                                      If true, then interpret the screen space position X coordinate as the center of the rendered text.
@param bCentreY                                      If true, then interpret the screen space position Y coordinate as the center of the rendered text.
@param bOutlined                                     If true, then the text should be rendered with an outline.
@param OutlineColor                          Color to render the outline for the text.
- `DrawTexture(UTexture RenderTexture, FVector2D ScreenPosition, FVector2D ScreenSize, FVector2D CoordinatePosition, FVector2D CoordinateSize = FVector2D ( 1.000000 , 1.000000 ), FLinearColor RenderColor = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ), EBlendMode BlendMode = EBlendMode :: BLEND_Translucent, float32 Rotation = 0.000000, FVector2D PivotPoint = FVector2D ( 0.500000 , 0.500000 ))`  
  Draws a texture on the Canvas.

@param RenderTexture                         Texture to use when rendering. If no texture is set then this will use the default white texture.
@param ScreenPosition                        Screen space position to render the texture.
@param ScreenSize                            Screen space size to render the texture.
@param CoordinatePosition            Normalized UV starting coordinate to use when rendering the texture.
@param CoordinateSize                        Normalized UV size coordinate to use when rendering the texture.
@param RenderColor                           Color to use when rendering the texture.
@param BlendMode                                     Blending mode to use when rendering the texture.
@param Rotation                                      Rotation, in degrees, to render the texture.
@param PivotPoint                            Normalized pivot point to use when rotating the texture.
- `DrawTriangles(UTexture RenderTexture, TArray<FCanvasUVTri> Triangles)`  
  Draws a set of triangles on the Canvas.

@param RenderTexture                         Texture to use when rendering the triangles. If no texture is set, then the default white texture is used.
@param Triangles                                     Triangles to render.
- `FVector Project(FVector WorldLocation)`  
  Performs a projection of a world space coordinates using the projection matrix set up for the Canvas.

@param WorldLocation                         World space location to project onto the Canvas rendering plane.
@return                                                      Returns a vector where X, Y defines a screen space position representing the world space location.
- `FVector2D WrappedTextSize(UFont RenderFont, FString RenderText)`  
  Returns the wrapped text size in screen space coordinates.

@param RenderFont                            Font to use when determining the size of the text. If this is null, then a default engine font is used.
@param RenderText                            Text to determine the size of.
@return                                                      Returns the screen space size of the text.
- `FVector2D ClippedTextSize(UFont RenderFont, FString RenderText, FVector2D Scale = FVector2D ( 1.000000 , 1.000000 ))`  
  Returns the clipped text size in screen space coordinates.

@param RenderFont                            Font to use when determining the size of the text. If this is null, then a default engine font is used.
@param RenderText                            Text to determine the size of.
@param Scale                                         Scale of the font to use when determining the size of the text.
@return                                                      Returns the screen space size of the text.

---

