### UPropertyWrapper


FProperty wrapper object.
The purpose of this object is to provide a UObject wrapper for native FProperties that can
be used by property editors (grids).
Specialized wrappers can be used to allow specialized editors for specific property types.
Property wrappers are owned by UStruct that owns the property they wrap and are tied to its lifetime
so that weak object pointer functionality works as expected.
---

