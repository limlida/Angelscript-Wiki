### FShotTrackingSettings


**属性**:

- `EShotTrackingRule AvatarToTrack [What avatar should we track]`
- `FVector TrackBoneNudge [Offset the tracking in actors local space.]`
- `FName TrackedAvatarCustomID [If TrackedAvatar is custom, this is the ID of the avatar to use as the override]`
- `float32 UpdateTrackingInterpSpeed [If Update Tracking every frame is turned on, how fast should we interp towards the head as it moves around]`
- `bool bUpdateTrackingEveryFrame [If true the camera will update the tracking every frame. This is important if your character head is moving around a lot.]`


**方法**:

- `FShotTrackingSettings& opAssign(FShotTrackingSettings Other)`

---

