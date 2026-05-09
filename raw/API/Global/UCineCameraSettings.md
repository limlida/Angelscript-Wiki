### UCineCameraSettings


**属性**:

- `TArray<FNamedPlateCropPreset> CropPresets [List of available crop presets]`
- `FString DefaultCropPresetName [Name of the default crop preset]`
- `FString DefaultFilmbackPreset [Name of the default filmback preset]`
- `float32 DefaultLensFStop [Default aperture (will be constrained by default lens)]`
- `float32 DefaultLensFocalLength [Default focal length (will be constrained by default lens)]`
- `FString DefaultLensPresetName [Name of the default lens preset]`
- `TArray<FNamedFilmbackPreset> FilmbackPresets [List of available filmback presets]`
- `TArray<FNamedLensPreset> LensPresets [List of available lens presets]`


**方法**:

- `bool GetCropPresetByName(FString PresetName, FPlateCropSettings& CropSettings)`  
  Gets the Crop settings associated with a given preset name
Returns true if a preset with the given name was found
- `bool GetFilmbackPresetByName(FString PresetName, FCameraFilmbackSettings& FilmbackSettings)`  
  Gets the Filmback settings associated with a given preset name
Returns true if a preset with the given name was found
- `bool GetLensPresetByName(FString PresetName, FCameraLensSettings& LensSettings)`  
  Gets the Lens settings associated with a given preset name
Returns true if a preset with the given name was found
- `SetCropPresets(TArray<FNamedPlateCropPreset> InCropPresets)`
- `SetDefaultCropPresetName(FString InDefaultCropPresetName)`
- `SetDefaultFilmbackPreset(FString InDefaultFilmbackPreset)`
- `SetDefaultLensFocalLength(float32 InDefaultLensFocalLength)`
- `SetDefaultLensFStop(float32 InDefaultLensFStop)`
- `SetDefaultLensPresetName(FString InDefaultLensPresetName)`  
  Internal Blueprint Setter functions that call SaveConfig after setting the variable to ensure settings persist
- `SetFilmbackPresets(TArray<FNamedFilmbackPreset> InFilmbackPresets)`
- `SetLensPresets(TArray<FNamedLensPreset> InLensPresets)`

---

