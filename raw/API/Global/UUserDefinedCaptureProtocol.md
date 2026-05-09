### UUserDefinedCaptureProtocol


A blueprintable capture protocol that defines how to capture frames from the engine

**属性**:

- `UWorld World [World pointer assigned on Setup]`


**方法**:

- `FString GenerateFilename(FFrameMetrics InFrameMetrics) const`  
  Generate a filename for the current frame
- `FFrameMetrics GetCurrentFrameMetrics() const`  
  Access this protocol's current frame metrics
- `OnBeginFinalize()`  
  Called when this protocol is going to be shut down - should not capture any more frames
- `bool OnCanFinalize() const`  
  Called to check whether this protocol has finished any pending tasks, and can now be shut down
- `OnCaptureFrame()`  
  Called when this protocol should capture the current frame
- `OnFinalize()`  
  Called to complete finalization of this protocol
- `OnPauseCapture()`  
  Called when this protocol should temporarily stop capturing frames
- `OnPixelsReceived(FCapturedPixels Pixels, FCapturedPixelsID ID, FFrameMetrics FrameMetrics)`  
  Called when pixels have been received for the specified stream name
- `OnPreTick()`  
  Called before the capture process itself is ticked, before each frame is set up for capture
Useful for any pre-frame set up or resetting the previous frame's state
- `bool OnSetup()`  
  Called once at the start of the capture process, but before any warmup frames
@return true if this protocol set up successfully, false otherwise
- `OnStartCapture()`  
  Called when this protocol should start capturing frames
- `OnTick()`  
  Called after the capture process itself is ticked, after the frame is set up for capture, but before most actors have ticked
- `OnWarmUp()`  
  Called when the capture process is warming up. Protocols may transition from either an initialized, or capturing state to warm-up
- `ResolveBuffer(UTexture Buffer, FCapturedPixelsID BufferID)`  
  * Resolve the specified buffer and pass it directly to the specified handler when done (does not pass to any bound streams)
*
* @param Buffer          The desired buffer to save
* @param BufferID        The ID of this buffer that is passed to the pixel handler (e.g. a composition pass name).
- `StartCapturingFinalPixels(FCapturedPixelsID StreamID)`  
  Instruct this protocol to start capturing LDR final pixels (including slate widgets and burn-ins)

@param StreamID        The identifier to use for the final pixels buffer
- `StopCapturingFinalPixels()`  
  Instruct this protocol to stop capturing LDR final pixels

---

