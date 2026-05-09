### UMassStationaryISMSwitcherProcessor


This processor's sole responsibility is to process all entities tagged with FMassStaticRepresentationTag
and check if they've switched to or away from EMassRepresentationType::StaticMeshInstance; and acordingly add or remove
the entity from the appropriate FMassInstancedStaticMeshInfoArrayView.
---

