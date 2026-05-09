### UUserDefinedImageCaptureProtocol


A blueprintable capture protocol tailored to capturing and exporting frames as images

**属性**:

- `int CompressionQuality [The compression quality for the image type. For EXRs, 0 = Default ZIP compression, 1 = No compression, PNGs and JPEGs expect a value between 0 and 100]`
- `EDesiredImageFormat Format [The image format to save as]`
- `bool bEnableCompression [Whether to save images with compression or not. Not supported for bitmaps.]`


**方法**:

- `FString GenerateFilenameForBuffer(UTexture Buffer, FCapturedPixelsID StreamID)`  
  * Generate a filename for the specified buffer using this protocol's file name formatter
*
* @param Buffer          The desired buffer to generate a filename for
* @param StreamID        The ID of the stream for this buffer (e.g. a composition pass name)
* @return A fully qualified file name
- `FString GenerateFilenameForCurrentFrame()`  
  * Generate a filename for the current frame using this protocol's file name formatter
*
* @return A fully qualified file name for the current frame number
- `WriteImageToDisk(FCapturedPixels PixelData, FCapturedPixelsID StreamID, FFrameMetrics FrameMetrics, bool bCopyImageData = false)`  
  * Generate a filename for the current frame using this protocol's file name formatter
*
* @return A fully qualified file name for the current frame number

---

