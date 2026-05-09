### FContentBrowserItemPath


Hold multiple versions of a path as FNames

Path conversion each time Set is called

**方法**:

- `FName GetInternalPath() const`  
  Returns internal path if there is one (eg,. "/PluginA/MyFile").
- `FName GetVirtualPath() const`  
  Returns virtual path as FName (eg, "/All/Plugins/PluginA/MyFile").
- `SetPath(FName InPath, EContentBrowserPathType InPathType)`  
  Set the path being stored
- `FContentBrowserItemPath& opAssign(FContentBrowserItemPath Other)`

---

