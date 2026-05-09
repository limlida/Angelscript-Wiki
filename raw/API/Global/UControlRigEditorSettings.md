### UControlRigEditorSettings


Customize Control Rig Editor.

**属性**:

- `FLinearColor BackwardsAndForwardsBorderColor [The border color of the viewport when entering "Backwards And Forwards" mode]`
- `FLinearColor BackwardsSolveBorderColor [The border color of the viewport when entering "Backwards Solve" mode]`
- `FLinearColor ConstructionEventBorderColor [The border color of the viewport when entering "Construction Event" mode]`
- `EElementNameDisplayMode ElementNameDisplayMode [Defines how the element names will be displayed in treeviews, anim outliner etc]`
- `int MaxStackSize [The maximum number of stacked items in the view
Note that changing this option potentially requires to re-open the editors in question.]`
- `EMultiRigTreeDisplayMode OutlinerMultiRigDisplayMode [Outliner reflection mode for multi rigs]`
- `TMap<FString,FControlRigSettingsPerPinBool> RigUnitPinExpansion [A map which remembers the expansion setting for each rig unit pin.]`
- `bool bArrangeByModules [If turned on the controls in the Anim Outliner will be arranged by modules in Modular Rigs.]`
- `bool bEnableFlashlightInDependencyViewer [Whether or not to use a flash light effect around the mouse pointer
in the dependency viewer to brighten up faded out nodes]`
- `bool bEnableUndoForPoseInteraction [When this is checked any hierarchy interaction within the Control Rig
Editor will be stored on the undo stack]`
- `bool bFlattenModules [If turned on the modules in the Anim Outliner will be arranged in a flat list.]`
- `bool bFocusOnSelection [If turned on the Anim Outliner will focus on the selection.]`
- `bool bLeftMouseDragDoesMarquee [If turned on we'll offer box / marquee selection in the control rig editor viewport.]`
- `bool bResetControlTransformsOnCompile [When checked controls will be reset during a manual compilation
(when pressing the Compile button)]`
- `bool bResetControlsOnCompile [When this is checked all controls will return to their initial
value as the user hits the Compile button.]`
- `bool bResetControlsOnPinValueInteraction [When this is checked all controls will return to their initial
value as the user interacts with a pin value]`
- `bool bResetPoseWhenTogglingEventQueue [When this is checked all elements will be reset to their initial value
if the user changes the event queue (for example between forward / backward solve)]`
- `bool bShowSchematicViewInModularRig [Show or hide the schematic view icons in the modular rig viewport]`
- `bool bShowStackedHierarchy [Option to toggle displaying the stacked hierarchy items.
Note that changing this option potentially requires to re-open the editors in question.]`

---

