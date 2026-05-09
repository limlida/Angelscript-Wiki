### UCommonInputActionDomain


Describes an input-event handling domain. It's InnerBehavior determines how events
flow between widgets within the domain and Behavior determines how events will flow to
other Domains in the DomainTable.

**属性**:

- `ECommonInputEventFlowBehavior Behavior [Behavior of an input event between Action Domains, i.e., how an event flows into the next Action Domain]`
- `ECommonInputEventFlowBehavior InnerBehavior [Behavior of an input event within an Action Domain, i.e., how an event flows to a lower ZOrder active widget
within the same Action Domain]`
- `ECommonInputMode InputMode []`
- `EMouseCaptureMode MouseCaptureMode []`
- `bool bUseActionDomainDesiredInputConfig []`

---

