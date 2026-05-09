### UComboGraphNodeMontage


Base Class for Combo Graph nodes acting based on an Anim Montage asset.

Holds runtime properties for animation and effects / cues containers.

**属性**:

- `FCombatActionInfo CombatInfo`
- `UInputAction DefaultInput`
- `TSoftObjectPtr<UAnimMontage> Montage`
- `FName StartSection`


**方法**:

- `FName GetMontageStartSection() const`  
  Blueprint overridable method to return the Start Section name to use with the Combo Play Montage task. Default behavior is simply to return `StartSection` property of the combo node.

---

