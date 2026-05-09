### FSourceControlState


Snapshot of source control state of a file
@see        USourceControlHelpers::QueryFileState()

**属性**:

- `FString CheckedOutOther [Get name of other user who this file already checked out or "" if no other user has it checked out]`
- `FString Filename [Get the local filename that this state represents]`
- `FString PreviousUser [The username of the previous user to modify this file]`
- `bool bCanAdd [Determine if this file can be added to source control (i.e. is part of the directory
structure currently under source control)]`
- `bool bCanCheckIn [Determine if this file can be checked in.]`
- `bool bCanCheckOut [Determine if this file can be checked out]`
- `bool bCanDelete [Determine if source control allows this file to be deleted.]`
- `bool bCanEdit [Determine if source control allows this file to be edited]`
- `bool bCanRevert [Determine if this file can be reverted, i.e. discard changes and the file will no longer be checked-out.]`
- `bool bIsAdded [Determine if this file is marked for add
@note        if already checked in then not considered mid add]`
- `bool bIsCheckedOut [Determine if this file is checked out]`
- `bool bIsCheckedOutInOtherBranch [Determine if this file is checked out by someone else in another branch]`
- `bool bIsCheckedOutOther [Determine if this file is checked out by someone else]`
- `bool bIsConflicted [Determine if this file is in a conflicted state]`
- `bool bIsCurrent [Determine if this file is up-to-date with the version in source control]`
- `bool bIsDeleted [Determine if this file is marked for delete]`
- `bool bIsIgnored [Determine if this file is ignored by source control]`
- `bool bIsModified [Determine if this file is modified compared to the version in source control.]`
- `bool bIsModifiedInOtherBranch [Determine if this file is modified by someone in another branch]`
- `bool bIsSourceControlled [Determine if this file is under source control]`
- `bool bIsUnknown [Determine if we know anything about the source control state of this file]`
- `bool bIsValid [Indicates whether this source control state has valid information (true) or not (false)]`


**方法**:

- `FSourceControlState& opAssign(FSourceControlState Other)`

---

