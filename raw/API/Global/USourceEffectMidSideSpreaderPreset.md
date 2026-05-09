### USourceEffectMidSideSpreaderPreset


USourceEffectMidSideSpreaderPreset
This code exposes your preset settings and effect class to the editor.
And allows for a handle to setting/updating effect settings dynamically.

**属性**:

- `FSourceEffectMidSideSpreaderSettings Settings [The copy of the settings struct. Can't be written to in BP, but can be read.
Note that the value read in BP is the serialized settings, will not reflect dynamic changes made in BP.]`


**方法**:

- `SetSettings(FSourceEffectMidSideSpreaderSettings InSettings)`  
  Change settings of your effect from blueprints. Will broadcast changes to active instances.

---

