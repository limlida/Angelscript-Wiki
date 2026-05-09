### UMediaPlateComponent


This is a component for AMediaPlate that can play and show media in the world.

**属性**:

- `FMediaSourceCacheSettings CacheSettings [Override the default cache settings.]`
- `TArray<TObjectPtr<UStaticMeshComponent>> Letterboxes [Holds the component for the mesh.]`
- `FMediaPlateResource MediaPlateResource [Which media source is used to populate the media playlist]`
- `FMediaTextureResourceSettings MediaTextureSettings [Exposes Media Texture settings via Media Plate component.]`
- `int MipLevelToUpscale [With exr playback, upscale into lower quality mips from this specified level. All levels including and above the specified value will be fully read.]`
- `float32 MipMapBias [Media texture mip map bias shared between the (image sequence) loader and the media texture sampler.]`
- `int PlaylistIndex [The current index of the source in the play list being played.]`
- `UMediaSoundComponent SoundComponent [Holds the component to play sound.]`
- `float32 StartTime [What time to start playing from (in seconds).]`
- `UStaticMeshComponent StaticMeshComponent [Holds the component for the mesh.]`
- `EMediaTextureVisibleMipsTiles VisibleMipsTilesCalculations [Visible mips and tiles calculation mode for the supported mesh types in MediaPlate. (Player restart on change.)]`
- `bool bAdaptivePoleMipUpscaling [If true then Media Plate will attempt to load and upscale lower quality mips and display those at the poles (Sphere object only).]`
- `bool bAutoPlay [If set then start playing when this object is active.]`
- `bool bEnableAudio [If set then enable audio.]`
- `bool bEnableMipMapUpscaling [If true then enable the use of MipLevelToUpscale as defined below.]`
- `bool bIsAspectRatioAuto [If true then set the aspect ratio automatically based on the media.]`
- `bool bIsMediaPlatePlaying [If true, then we want the media plate to play.
Note that this could be true, but the player is not actually playing because
bPlayOnlyWhenVisible = true and the plate is not visible.]`
- `bool bLoop [If set then loop when we reach the end.]`
- `bool bPlayOnOpen [If set then play when opening the media.]`
- `bool bPlayOnlyWhenVisible [If true then only allow playback when the media plate is visible.]`


**方法**:

- `Close()`  
  Call this to close the media.
- `bool GetIsAspectRatioAuto() const`  
  Gets whether automatic aspect ratio is enabled.
- `float32 GetLetterboxAspectRatio()`  
  Call this to get the aspect ratio of the screen.
- `bool GetLoop()`  
  Call this to see if we want to loop.
- `UMediaPlayer GetMediaPlayer()`  
  Call this get our media player.
- `UMediaPlaylist GetMediaPlaylist() const`  
  Get the currently active Media Playlist
- `UMediaTexture GetMediaTexture(int Index = 0)`  
  Call this get our media texture.
- `FVector2D GetMeshRange() const`  
  Return the arc size in degrees used for visible mips and tiles calculations, specific to the sphere.
- `UMediaSource GetSelectedMediaSource() const`  
  Get the currently active Media Source.
- `bool IsEventStateChangeAllowed(EMediaPlateEventState InRequestEventState) const`  
  Indicates if switching to the given event state (open, play, etc) is currently allowed by
the backend.
@param InRequestEventState Requested event state to switch to (Open, Play, etc)
@return true if the state switch is allowed, false otherwise.
- `bool IsMediaPlatePlaying() const`  
  Call this to see if the media plate is playing.
- `bool Next()`  
  Play the next item in the playlist.

returns      True if it played something.
- `Open()`  
  Call this to open the media.
- `OpenLatent(FLatentActionInfo InLatentInfo, float32 InTimeout, bool bInWaitForTexture, bool& bOutSuccess)`  
  Open the media using a latent action.

@param InTimeout Wait timeout in seconds
@param bInWaitForTexture Wait for the media texture to have rendered a sample.
@param bOutSuccess The media was opened successfully.
- `Pause()`  
  Call this to pause playback.
Play can be called to resume playback.
- `Play()`  
  Call this to start playing.
Open must be called before this.
- `bool Previous()`  
  Play the previous item in the playlist.

returns      True if it played something.
- `bool Rewind()`  
  Rewinds the media to the beginning.

This is the same as seeking to zero time.

@return                              True if rewinding, false otherwise.
- `bool Seek(FTimespan Time)`  
  Call this to seek to the specified playback time.

@param Time                  Time to seek to.
@return                              True on success, false otherwise.
- `SelectExternalMedia(FString InFilePath)`  
  @brief Select the external media file (non-UE asset) to be opened.
@param InFilePath non-UFS path (absolute or relative to executable) to the media file.
- `SelectMediaPlaylistAsset(const UMediaPlaylist InMediaPlaylist)`  
  @brief Select the media playlist asset to be opened.
@param InMediaPlaylist media playlist asset to open.
- `SelectMediaSourceAsset(const UMediaSource InMediaSource)`  
  @brief Select the media source asset to be opened.
@param InMediaSource media source asset to open.
- `SetEnableAudio(bool bInEnableAudio)`
- `SetIsAspectRatioAuto(bool bInIsAspectRatioAuto)`  
  Sets whether automatic aspect ratio is enabled.
- `SetLetterboxAspectRatio(float32 AspectRatio)`  
  Call this to set the aspect ratio of the screen.
- `SetLoop(bool bInLoop)`  
  Call this enable/disable looping.
- `SetMeshRange(FVector2D InMeshRange)`  
  Set the arc size in degrees used for visible mips and tiles calculations, specific to the sphere.
- `SetPlayOnlyWhenVisible(bool bInPlayOnlyWhenVisible)`  
  Call this to set bPlayOnlyWhenVisible.

---

