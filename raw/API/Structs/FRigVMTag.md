### FRigVMTag


User applied tag

**属性**:

- `FLinearColor Color`
- `FString Label`
- `FName Name`
- `FText ToolTip`
- `bool bMarksSubjectAsInvalid [Enabling this will mark the subject (asset, function etc) as (soft) deprecated.
The content referring to variants with this tag will continue to work, but the
user interface will suggest the user to upgrade to a later variant.]`
- `bool bShowInUserInterface [Enabling this will show tags in the user interface within
the variant widgets and other places.
Disabling this will interpret this tag as automation / scripting only.]`


**方法**:

- `FRigVMTag& opAssign(FRigVMTag Other)`

---

