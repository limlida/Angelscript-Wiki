### UViewportInteractionsBehaviorSource


This class hosts a list of ITF Viewport Interactions and a UBehaviorSet containing the UInteractionBehavior
instances required by those Viewport Interactions.
It also acts as a behavior target, registering the status of Shift, Alt, Ctrl modifier keys. That and other
pieces of information can be accessed externally, so that e.g. Viewport Interactions can know about modifier
states without having to implement themselves what would be duplicate logic to handle those inputs. This class
can also be used to know whether the Viewport camera is being moved using the mouse,or to mark it as such.
---

