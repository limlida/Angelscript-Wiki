### UTimecodeRegressionProvider


Estimates the current timecode based on the clock of the engine's current UCustomTimeStep.
@see FTimecodeEstimator for a detailed explanation.

This class is intended to be used for wrapping a UTimecodeProvider that was previously set using UEngine::SetTimecodeProvider.
We probably want the engine to always run with UTimecodeRegressionProvider since otherwise frame hitches cause the timecode to be evaluated incorrectly.
However, making that kind code change is risky so for now, we make systems that require it opt-in.
In the future, we can refactor UEngine to use FTimecodeEstimator directly and then we can remove UTimecodeRegressionProvider.

**属性**:

- `int NumSampledFrames [Determines the number of samples to use for linear regression.
You'd want to set this number in relation to your target frame rate.

Example: If targeting a fixed frame rate of 24 then setting this to 24 would cause linear regression to effectively use 1s worth frames.
If you were targeting 60 FPS and wanted 1s worth of frames, you'd set this value to 60.]`

---

