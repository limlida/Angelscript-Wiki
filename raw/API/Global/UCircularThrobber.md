### UCircularThrobber


A throbber widget that orients images in a spinning circle.

* No Children
* Spinner Progress

**属性**:

- `FSlateBrush Image [The throbber image.]`
- `int NumberOfPieces [How many pieces there are]`
- `float32 Period [The amount of time for a full circle (in seconds)]`
- `float32 Radius [The radius of the circle. If the throbber is a child of Canvas Panel, the 'Size to Content' option must be enabled in order to set Radius.]`
- `bool bEnableRadius []`


**方法**:

- `SetNumberOfPieces(int InNumberOfPieces)`  
  Sets how many pieces there are.
- `SetPeriod(float32 InPeriod)`  
  Sets the amount of time for a full circle (in seconds).
- `SetRadius(float32 InRadius)`  
  Sets the radius of the circle.

---

