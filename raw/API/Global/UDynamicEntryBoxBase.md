### UDynamicEntryBoxBase


Base for widgets that support a dynamic number of auto-generated entries at both design- and run-time.
Contains all functionality needed to create, construct, and cache an arbitrary number of entry widgets, but exposes no means of entry creation or removal
It's up to child classes to decide how they want to perform the population (some may do so entirely on their own without exposing a thing)

@see UDynamicEntryBox for a ready-to-use version

**属性**:

- `EDynamicBoxType EntryBoxType [The type of box panel into which created entries are added. Some differences in functionality exist between each type.]`
- `EHorizontalAlignment EntryHorizontalAlignment [Horizontal alignment of generated entries. Horizontal/Vertical/Wrap boxes only.]`
- `FSlateChildSize EntrySizeRule [Sizing rule to apply to generated entries. Horizontal/Vertical boxes only.]`
- `FVector2D EntrySpacing [The padding to apply between entries in the box.
Note horizontal boxes only use the X and vertical boxes only use Y. Value is also ignored for the first entry in the box.
Wrap and Overlay types use both X and Y for spacing.]`
- `EVerticalAlignment EntryVerticalAlignment [Vertical alignment of generated entries. Horizontal/Vertical/Wrap boxes only.]`
- `int MaxElementSize [The maximum size of each entry in the dominant axis of the box. Vertical/Horizontal boxes only.]`
- `FRadialBoxSettings RadialBoxSettings [Settings only relevant to RadialBox]`
- `TArray<FVector2D> SpacingPattern [The looping sequence of entry paddings to apply as entries are created. Overlay boxes only. Ignores EntrySpacing if not empty.]`


**方法**:

- `TArray<UUserWidget> GetAllEntries() const`
- `int GetNumEntries() const`
- `SetEntrySpacing(FVector2D InEntrySpacing)`
- `SetRadialSettings(FRadialBoxSettings InSettings)`

---

