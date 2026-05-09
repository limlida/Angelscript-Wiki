### FImageWriteOptions


Options specific to writing image files to disk

**属性**:

- `int CompressionQuality [An image format specific compression setting. Either 0 (Default) or 1 (Uncompressed) for EXRs, or a value between 0 and 100.]`
- `EDesiredImageFormat Format [The desired output image format to write to disk]`
- `FOnImageWriteComplete OnComplete [A callback to invoke when the image has been written, or there was an error]`
- `bool bAsync [Whether to perform the writing asynchronously, or to block the game thread until it is complete]`
- `bool bOverwriteFile [Whether to overwrite the image if it already exists]`


**方法**:

- `FImageWriteOptions& opAssign(FImageWriteOptions Other)`

---

