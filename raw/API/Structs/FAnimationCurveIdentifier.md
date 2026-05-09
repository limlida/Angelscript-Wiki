### FAnimationCurveIdentifier


Script-friendly structure for identifying an animation curve.
Wrapping the unique type and smart-name for use within the AnimDataController API.

**方法**:

- `FName GetName()`  
  @return       The name used for displaying the Curve Identifier
- `bool GetTransformChildCurveIdentifier(ETransformCurveChannel Channel, EVectorCurveChannel Axis)`  
  Converts a valid FAnimationCurveIdentifier instance with RCT_Transform curve type to target a child curve.

@param        InOutIdentifier         [out] Identifier to be converted
@param        Channel                         Channel to target
@param        Axis                            Axis within channel to target

@return       Valid FAnimationCurveIdentifier if the operation was successful
- `ERawCurveTrackTypes GetType()`  
  @return       The animation curve type for the curve represented by the Curve Identifier
- `bool IsValid()`  
  @return       Whether or not the Curve Identifier is valid
- `SetCurveIdentifier(FName Name, ERawCurveTrackTypes CurveType)`  
  Constructs a valid FAnimationCurveIdentifier instance.

@param        InOutIdentifier         The identifier to set up
@param        Name                            Name of the curve to find or add
@param        CurveType                       Type of the curve to find or add
- `FAnimationCurveIdentifier& opAssign(FAnimationCurveIdentifier Other)`

---

