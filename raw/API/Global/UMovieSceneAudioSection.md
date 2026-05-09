### UMovieSceneAudioSection


Audio section, for use in the audio track, or by attached audio objects

**属性**:

- `USoundAttenuation AttenuationSettings [The attenuation settings to use.]`
- `USoundBase Sound [The sound cue or wave that this section plays]`
- `FFrameNumber StartFrameOffset [The offset into the beginning of the audio clip]`
- `bool bLooping [Allow looping if the section length is greater than the sound duration]`
- `bool bOverrideAttenuation [Should the attenuation settings on this section be used.]`
- `bool bSuppressSubtitles []`


**方法**:

- `USoundAttenuation GetAttenuationSettings() const`  
  @return The attenuation settings
- `bool GetLooping() const`  
  @return Whether to allow looping if the section length is greater than the sound duration
- `bool GetOverrideAttenuation() const`  
  @return Whether override settings on this section should be used
- `USoundBase GetPlaybackSound() const`  
  Gets the sound that this section should use for playback, taking into account localization concerns
- `USoundBase GetSound() const`  
  Gets the sound for this section
- `FFrameNumber GetStartOffset() const`  
  Get the offset into the beginning of the audio clip
- `bool GetSuppressSubtitles() const`  
  @return Whether subtitles should be suppressed
- `SetAttenuationSettings(USoundAttenuation InAttenuationSettings)`  
  Set the attenuation settings for this audio section
- `SetLooping(bool bInLooping)`  
  Set whether the sound should be looped
- `SetOverrideAttenuation(bool bInOverrideAttenuation)`  
  Set whether the attentuation should be overriden
- `SetSound(USoundBase InSound)`  
  Sets this section's sound
- `SetStartOffset(FFrameNumber InStartOffset)`  
  Set the offset into the beginning of the audio clip
- `SetSuppressSubtitles(bool bInSuppressSubtitles)`  
  Set whether subtitles should be suppressed

---

