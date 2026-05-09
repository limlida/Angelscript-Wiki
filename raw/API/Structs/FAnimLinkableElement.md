### FAnimLinkableElement


Used to describe an element that can be linked to a segment in a montage or sequence.
   Usage:
           Inherit from FAnimLinkableElement and make sure to call LinkMontage or LinkSequence
           both on creation and on loading the element. From there SetTime and GetTime should be
           used to control where this element is in the montage or sequence.

           For more advanced usage, see this implementation used in FAnimNotifyEvent where
           we have a secondary link to handle a duration
           @see FAnimNotifyEvent

**属性**:

- `EAnimLinkMethod LinkMethod [The method we are using to calculate our times]`
- `int SlotIndex [The slot index we are currently using within LinkedMontage]`


**方法**:

- `FAnimLinkableElement& opAssign(FAnimLinkableElement Other)`

---

