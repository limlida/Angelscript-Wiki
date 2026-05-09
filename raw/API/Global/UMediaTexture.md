### UMediaTexture


Implements a texture asset for rendering video tracks from UMediaPlayer assets.

note: derives directly from UTexture, not from UTexture2D or UTexture2DDynamic
   maybe should have been UTexture2DDynamic?

**属性**:

- `TextureAddress AddressX [The addressing mode to use for the X axis.]`
- `TextureAddress AddressY [The addressing mode to use for the Y axis.]`
- `bool AutoClear [Whether to clear the texture when no media is being played (default = enabled).]`
- `FLinearColor ClearColor [The color used to clear the texture if AutoClear is enabled (default = black).]`
- `float32 CurrentAspectRatio [Current aspect ratio]`
- `MediaTextureOrientation CurrentOrientation [Current media orientation]`
- `bool EnableGenMips [Basic enablement for mip generation (default = false).]`
- `UMediaPlayer MediaPlayer [The media player asset associated with this texture.

This property is meant for design-time convenience. To change the
associated media player at run-time, use the SetMediaPlayer method.

@see SetMediaPlayer]`
- `bool NewStyleOutput [Allows the media texture to be used as a regular 2D texture in materials, with Color or Linear Color sampler types as opposed to External.
Note however that external textures can remain more efficient on lower-end platforms (OpenGL ES).]`


**方法**:

- `float32 GetAspectRatio() const`  
  Gets the current aspect ratio of the texture.

@return Texture aspect ratio.
@see GetHeight, GetWidth
- `int GetHeight() const`  
  Gets the current height of the texture.

@return Texture height (in pixels).
@see GetAspectRatio, GetWidth
- `UMediaPlayer GetMediaPlayer() const`  
  Get the media player that provides the video samples.

@return The texture's media player, or nullptr if not set.
@see SetMediaPlayer
- `int GetTextureNumMips() const`  
  Gets the current numbe of mips of the texture.

@return Number of mips.
- `int GetWidth() const`  
  Gets the current width of the texture.

@return Texture width (in pixels).
@see GetAspectRatio, GetHeight
- `SetMediaPlayer(UMediaPlayer NewMediaPlayer)`  
  Set the media player that provides the video samples.

@param NewMediaPlayer The player to set.
@see GetMediaPlayer
- `UpdateResource()`  
  Creates a new resource for the texture, and updates any cached references to the resource.
This obviously is just an override to expose to blueprints. Since the base is deprecated in favor
of the new params version, we remove the virtual override and pass the flags we care about here.

---

