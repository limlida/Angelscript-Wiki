### UMovieSceneCaptureProtocolBase


A capture protocol responsible for dealing with captured frames using some custom method (writing out to disk, streaming, etc)

A typical process for capture consits of the following process:
    Setup -> [ Warm up -> [ Capture Frame ] ] -> Begin Finalize -> [ HasFinishedProcessing ] -> Finalize

**方法**:

- `EMovieSceneCaptureProtocolState GetState() const`  
  Get the current state of this capture protocol
- `bool IsCapturing() const`  
  Check whether we can capture a frame from this protocol

---

