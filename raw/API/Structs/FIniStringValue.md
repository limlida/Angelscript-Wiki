### FIniStringValue


Helper struct for setting string console ini values.

**属性**:

- `FString Branch [Ini branch that Filename belongs to. Ex: if Filename is "/Config/DefaultEngine.ini", Branch should be "Engine".

If this isn't set, the system will attempt to detect it based on Filename.]`
- `FString Filename [From .ini, relative to {PROJECT}. Ex: /Config/DefaultEngine.ini]`
- `FString Key [From .ini. Ex: r.GPUSkin.Support16BitBoneIndex]`
- `FString Section [From .ini. Ex: /Script/Engine.RendererSettings]`
- `FString Value [From .ini. Ex: True]`


**方法**:

- `FIniStringValue& opAssign(FIniStringValue Other)`

---

