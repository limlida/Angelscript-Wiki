### UMovieSceneFolder


Represents a folder used for organizing objects in tracks in a movie scene.

**属性**:

- `FColor FolderColor [This folder's color]`


**方法**:

- `bool AddChildFolder(UMovieSceneFolder FolderToAdd)`  
  Add a child folder to the target folder

@param TargetFolder  The folder to add a child folder to
@param FolderToAdd   The child folder to be added
@return True if the addition is successful
- `bool AddChildObjectBinding(FMovieSceneBindingProxy InObjectBinding)`  
  Add a guid for an object binding to this folder

@param Folder                        The folder to add a child object to
@param InObjectBinding       The binding to add to the folder
@return True if the addition is successful
- `bool AddChildTrack(UMovieSceneTrack InTrack)`  
  Add a track to this folder

@param Folder                        The folder to add a child track to
@param InTrack                   The track to add to the folder
@return True if the addition is successful
- `TArray<UMovieSceneFolder> GetChildFolders()`  
  Get the child folders of a given folder

@param Folder        The folder to get the child folders of
@return The child folders associated with the given folder
- `TArray<FMovieSceneBindingProxy> GetChildObjectBindings()`  
  Get the object bindings contained by this folder

@param Folder        The folder to get the bindings of
@return The object bindings under the given folder
- `TArray<UMovieSceneTrack> GetChildTracks()`  
  Get the tracks contained by this folder

@param Folder        The folder to get the tracks of
@return The tracks under the given folder
- `FColor GetFolderColor()`  
  Get the display color of the given folder

@param Folder        The folder to get the display color of
@return The display color of the given folder
- `FName GetFolderName()`  
  Get the given folder's display name

@param Folder        The folder to use
@return The target folder's name
- `bool RemoveChildFolder(UMovieSceneFolder FolderToRemove)`  
  Remove a child folder from the given folder

@param TargetFolder          The folder from which to remove a child folder
@param FolderToRemove        The child folder to be removed
@return True if the removal succeeds
- `bool RemoveChildObjectBinding(FMovieSceneBindingProxy InObjectBinding)`  
  Remove an object binding from the given folder

@param Folder                        The folder from which to remove an object binding
@param InObjectBinding       The object binding to remove
@return True if the operation succeeds
- `bool RemoveChildTrack(UMovieSceneTrack InTrack)`  
  Remove a track from the given folder

@param Folder                        The folder from which to remove a track
@param InTrack                   The track to remove
@return True if the removal succeeds
- `bool SetFolderColor(FColor InFolderColor)`  
  Set the display color of the given folder

@param Folder                        The folder to set the display color of
@param InFolderColor         The new display color for the folder
@return True if the folder's display color is set successfully
- `bool SetFolderName(FName InFolderName)`  
  Set the name of the given folder

@param Folder                The folder to set the name of
@param InFolderName  The new name for the folder
@return True if the setting of the folder name succeeds

---

