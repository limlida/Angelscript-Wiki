### FMediaPlateResource


Helper struct to wrap source selection functionality,
and enabling the usage of media source properties for places like Remote Control.

This struct allows to choose between Asset, External File, Playlist options.
It's mainly conceived to be used by MediaPlateComponent.

See FMediaPlayerResourceCustomization class for its customization.

**属性**:

- `FString ExternalMediaPath [A path pointing to an external media resource]`
- `TSoftObjectPtr<UMediaSource> MediaAsset [Media source coming from MediaSource asset]`
- `TSoftObjectPtr<UMediaPlaylist> SourcePlaylist [User facing Playlist asset]`
- `EMediaPlateResourceType Type [Media Source Type]`


**方法**:

- `FMediaPlateResource& opAssign(FMediaPlateResource Other)`

---

