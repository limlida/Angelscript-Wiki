### UMovieSceneMediaSection


Implements a movie scene section for media playback.

**属性**:

- `FMediaSourceCacheSettings CacheSettings [Override the default cache settings. Not used if we have a player proxy as the settings come from the proxy instead.]`
- `UMediaPlayer ExternalMediaPlayer [The external media player this track should control.]`
- `FFrameRate FrameRateAlignment [Specify the frame rate for internal presentation frame alignment (i.e. frame duration used for Block On Range calculation).]`
- `UMediaSoundComponent MediaSoundComponent [The media sound component that receives the track's audio output.]`
- `UMediaSource MediaSource [The source to play with this video track if MediaSourceProxy is not available.]`
- `FMovieSceneObjectBindingID MediaSourceProxyBindingID [The object to get the source to play from if you don't want to directly specify a media source.]`
- `int MediaSourceProxyIndex [The index to pass to MediaSourceProxy to get the media source.]`
- `UMediaTexture MediaTexture [The media texture that receives the track's video output.]`
- `FFrameNumber StartFrameOffset [Offset into the source media.]`
- `int TextureIndex [If using an object like a MediaPlate, then this determines which texture to use for crossfading purposes.]`
- `bool bLooping [Should the media player be set to loop? This can be helpful for media formats that can use this information (such as exr sequences) to pre-cache the starting data when nearing the end of playback. Does not cause the media to continue playing after the end of the section is reached.]`
- `bool bManualFrameRateAlignment [If true, the specified framerate alignment will be used instead of the media's frame rate. Use this in case the automatic media frame rate is inaccurate.]`
- `bool bUseExternalMediaPlayer [If true, this track will control a previously created media player instead of automatically creating one.]`

---

