### UMetaSoundPresetWidgetInterface


**方法**:

- `OnAuditionStateChanged(UAudioComponent AudioComponent, bool bIsAuditioning)`  
  Called when the MetaSound starts and stops auditioning. Provides a reference to the audio component when auditioning starts, and returns nullptr when auditioning stops.
- `OnConstructed(UMetaSoundBuilderBase Builder)`  
  Called when the preset widget is constructed, giving the builder of the associated MetaSound preset

---

