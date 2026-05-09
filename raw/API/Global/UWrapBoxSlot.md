### UWrapBoxSlot


The Slot for the UWrapBox, contains the widget that is flowed vertically

**属性**:

- `float32 FillSpanWhenLessThan [If the total available space in the wrap panel drops below this threshold, this slot will attempt to fill an entire line.
NOTE: A value of 0, denotes no filling will occur.]`
- `EHorizontalAlignment HorizontalAlignment [The alignment of the object horizontally.]`
- `FMargin Padding [The padding area between the slot and the content it contains.]`
- `EVerticalAlignment VerticalAlignment [The alignment of the object vertically.]`
- `bool bFillEmptySpace [Should this slot fill the remaining space on the line?]`
- `bool bForceNewLine [Should this slot start on a new line?]`


**方法**:

- `SetFillEmptySpace(bool InbFillEmptySpace)`
- `SetFillSpanWhenLessThan(float32 InFillSpanWhenLessThan)`
- `SetHorizontalAlignment(EHorizontalAlignment InHorizontalAlignment)`
- `SetNewLine(bool InForceNewLine)`
- `SetPadding(FMargin InPadding)`
- `SetVerticalAlignment(EVerticalAlignment InVerticalAlignment)`

---

