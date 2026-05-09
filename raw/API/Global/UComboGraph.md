### UComboGraph


Combo Graph Assets provide a way to visually design combo strings and link montages together.

Combo Graphs are then run with custom Ability Tasks from within a Gameplay Ability.

**属性**:

- `TArray<TObjectPtr<UComboGraphNodeBase>> AllNodes [Holds all combo nodes defined for this graph]`
- `TSoftObjectPtr<UInputMappingContext> ContextMapping [Enhanced Input Context Mapping to use to draw edge (transition) icons in Graphs (if not set, will fallback to the one defined in Project Settings)]`
- `UInputAction DefaultInputAction [Default Input Action to use when creating new connections.]`
- `TSubclassOf<UComboGraphNodeMontage> DefaultNodeMontageType [Node Class type used for montages assets when dropped in a graph, or dropped on an existing node pin.

This property lets you customize which class Combo Graph will use to create a new montage node in these situations.
Mainly useful if you have a custom Combo Node Montage BP or native subclass.]`
- `TSubclassOf<UComboGraphNodeSequence> DefaultNodeSequenceType [Node Class type used for sequence assets when dropped in a graph, or dropped on an existing node pin.

This property lets you customize which class Combo Graph will use to create a new sequence node in these situations.
Mainly useful if you have a custom Combo Node Montage BP or native subclass.]`
- `UComboGraphNodeEntry EntryNode [Represents the top level combo node direct child of entry node.]`
- `UComboGraphNodeBase FirstNode [Represents the top level combo node direct child of entry node.]`
- `EComboGraphIconType IconPreference [Icon preference to draw edge (transition) icons in Graph. Can be either Keyboard or Gamepad based]`
- `TArray<TObjectPtr<UComboGraphNodeBase>> RootNodes [Holds any combo nodes with no direct parent

Note: should usually hold only one node, the first one. If more than one,
means that some combo nodes are present in graph but not linked to a valid
path from entry node as all nodes below entry should have direct
parent / child relationship.]`
- `bool bCanBeCyclical [Determine if we can have cycles or not in a graph]`

---

