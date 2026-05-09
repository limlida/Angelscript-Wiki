### FKeyBind


Struct containing mappings for legacy method of binding keys to exec commands.

**属性**:

- `bool Alt [Whether the alt key needs to be held when the key event occurs]`
- `bool Cmd [Whether the command key needs to be held when the key event occurs]`
- `FString Command [The command to execute when the key is pressed/released]`
- `bool Control [Whether the control key needs to be held when the key event occurs]`
- `FKey Key [The key to be bound to the command]`
- `bool Shift [Whether the shift key needs to be held when the key event occurs]`
- `bool bIgnoreAlt [Whether the alt key must not be held when the key event occurs]`
- `bool bIgnoreCmd [Whether the command key must not be held when the key event occurs]`
- `bool bIgnoreCtrl [Whether the control key must not be held when the key event occurs]`
- `bool bIgnoreShift [Whether the shift key must not be held when the key event occurs]`


**方法**:

- `FKeyBind& opAssign(FKeyBind Other)`

---

