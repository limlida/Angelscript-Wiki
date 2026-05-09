### FConcertClientSettings


**属性**:

- `FLinearColor AvatarColor [The color used for the presence avatar in a session.]`
- `FSoftClassPath DesktopAvatarActorClass [The desktop representation of this editor's user to other connected users]`
- `int DiscoveryTimeoutSeconds [The timespan at which discovered Multi-User server are considered stale if they haven't answered back]`
- `FString DisplayName [The display name to use when in a session.
Can be specified on the editor cmd with `-CONCERTDISPLAYNAME=`.]`
- `float32 LatencyCompensationMs [Amount of latency compensation to apply to time-synchronization sensitive interactions]`
- `uint16 ServerPort [The port to use to reach the server with static endpoints when launched through the editor. This port will be used over the unicast endpoint port in the UDP Messagging settings if non 0 when transferring the editor settings to the launched server.]`
- `int SessionTickFrequencySeconds [The timespan at which session updates are processed.]`
- `TArray<FName> Tags [Array of tags that can be used for grouping and categorizing.]`
- `FSoftClassPath VRAvatarActorClass [The VR representation of this editor's user to other connected users]`
- `bool bSupportMixedBuildTypes [Enable extended version support when using Multi-user with precompiled and source builds.  When using Unreal Game
Sync, it is possible to have the same engine CL but different engine version due to content changes.  This setting
enables reading engine version CL from the Build.version file produced by UGS to determine engine version
information when joining a session.  This only applies when you intend to mix precompiled with source builds.]`


**方法**:

- `FConcertClientSettings& opAssign(FConcertClientSettings Other)`

---

