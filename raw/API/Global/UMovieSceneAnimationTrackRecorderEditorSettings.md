### UMovieSceneAnimationTrackRecorderEditorSettings


**属性**:

- `FString AnimationAssetName [The name of the animation asset.
Supports any of the following format specifiers that will be substituted when a take is recorded:
{day}       - The day of the timestamp for the start of the recording.
{month}     - The month of the timestamp for the start of the recording.
{year}      - The year of the timestamp for the start of the recording.
{hour}      - The hour of the timestamp for the start of the recording.
{minute}    - The minute of the timestamp for the start of the recording.
{second}    - The second of the timestamp for the start of the recording.
{take}      - The take number.
{slate}     - The slate string.
{actor}     - The name of the actor being recorded.]`
- `FString AnimationSubDirectory [The name of the subdirectory animations will be placed in. Leave this empty to place into the same directory as the sequence base path.
Supports any of the following format specifiers that will be substituted when a take is recorded:
{day}       - The day of the timestamp for the start of the recording.
{month}     - The month of the timestamp for the start of the recording.
{year}      - The year of the timestamp for the start of the recording.
{hour}      - The hour of the timestamp for the start of the recording.
{minute}    - The minute of the timestamp for the start of the recording.
{second}    - The second of the timestamp for the start of the recording.
{take}      - The take number.
{slate}     - The slate string.
{actor}     - The name of the actor being recorded.]`
- `FText AnimationTrackName [Name of the recorded animation track.]`
- `ERichCurveInterpMode InterpMode [Interpolation mode for the recorded keys.]`
- `ERichCurveTangentMode TangentMode [Tangent mode for the recorded keys.]`
- `FTimecodeBoneMethod TimecodeBoneMethod [The method to record timecode values onto bones]`
- `bool bRemoveRootAnimation [If true we remove the root animation and move it to a transform track, if false we leave it on the root bone in the anim sequence]`

---

