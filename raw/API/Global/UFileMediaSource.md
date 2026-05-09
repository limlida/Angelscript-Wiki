### UFileMediaSource


**属性**:

- `FString FilePath [The path to the media file to be played.

@see SetFilePath]`
- `bool PrecacheFile [Load entire media file into memory and play from there (if possible).]`


**方法**:

- `SetFilePath(FString Path)`  
  Set the path to the media file that this source represents.

Automatically converts full paths to media sources that reside in the
Engine's or project's /Content/Movies directory into relative paths.

@param Path The path to set.
@see FilePath, GetFilePath

---

