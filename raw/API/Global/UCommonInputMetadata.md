### UCommonInputMetadata


Metadata CommonUI will try to acquire from Enhanced Input Mapping Contexts (IMC)

You can Inherit from this class if you have any info that may need to be parsed per platform
by CommonUI. IMC's can be specified per platform, so each platform may have different
Common Input Metadata

Note: We intentionally do not define any context-independant metadata. Even though some
metadata should be context-independant (Like NavBarPriority below). Locking it that info
to a seperate metadata type prevents any chance of future overriding. Instead, we prefer
info for all metadata to be set across all instances.

**属性**:

- `int NavBarPriority [Priority in nav-bar]`
- `bool bIsGenericInputAction [Generic actions like accept or face button top will be subscribed to by multiple
UI elements. These actions will not broadcast enhanced input action delegates
such as "Triggered, Ongoing, Canceled, or Completed." Since those delegates
would be fired by multiple UI elements.

Non-generic input actions will fire Enhanced Input events. However they will
not fire CommonUI action bindings (Since those can be manually fired in BP).]`

---

