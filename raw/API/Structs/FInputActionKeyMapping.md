### FInputActionKeyMapping


Defines a mapping between an action and key

@see https://docs.unrealengine.com/latest/INT/Gameplay/Input/index.html

**属性**:

- `FName ActionName [Friendly name of action, e.g "jump"]`
- `FKey Key [Key to bind it to.]`
- `bool bAlt [true if one of the Alt keys must be down when the KeyEvent is received to be acknowledged]`
- `bool bCmd [true if one of the Cmd keys must be down when the KeyEvent is received to be acknowledged]`
- `bool bCtrl [true if one of the Ctrl keys must be down when the KeyEvent is received to be acknowledged]`
- `bool bShift [true if one of the Shift keys must be down when the KeyEvent is received to be acknowledged]`


**方法**:

- `bool opEquals(FInputActionKeyMapping Other) const`
- `FInputActionKeyMapping& opAssign(FInputActionKeyMapping Other)`

---

