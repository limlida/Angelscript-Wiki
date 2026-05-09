### FAutomationScreenshotOptions


**属性**:

- `float32 Delay [The delay before we take the screenshot (measured in seconds). Both this delay and the frame delay must be met before the screenshot is taken.]`
- `int FrameDelay [The delay before we take the screenshot (measured in number of frames). Both this frame delay and the time delay must be met before the screenshot is taken.]`
- `float32 MaximumGlobalError [After you've accounted for color tolerance changes, you now need to control for total acceptable error.
Which depending on how pixels were colored on triangle edges may be a few percent of the image being
outside the tolerance levels.]`
- `float32 MaximumLocalError [After you've accounted for color tolerance changes, you now need to control for local acceptable error.
Which depending on how pixels were colored on triangle edges may be a few percent of the image being
outside the tolerance levels.  Unlike the MaximumGlobalError, the MaximumLocalError works by focusing
on a smaller subset of the image.  These chunks will have be compared to the local error, in an attempt
to locate hot spots of change that are important, that would be ignored by the global error.]`
- `float OverrideTimeTo [Overrides World Time, Real Time to the value provided.  Sets Delta Time to 0.  Only
affects the time being sent to the render thread and materials.  The time accumulating
on the game thread is unaffected.]`
- `FVector2D Resolution [The desired resolution of the screenshot, if none is provided, it will use the default for the
platform setup in the automation settings.]`
- `EComparisonTolerance Tolerance [These are quick defaults for tolerance levels, we default to low, because generally there's some
constant variability in every pixel's color introduced by TxAA.]`
- `FComparisonToleranceAmount ToleranceAmount [For each channel and brightness levels you can control a region where the colors are found to be
essentially the same.  Generally this is necessary as modern rendering techniques tend to introduce
noise constantly to hide aliasing.]`
- `UAutomationViewSettings ViewSettings [Assign custom view settings to control which rendering options we allow on while taking the
screenshot.]`
- `FName VisualizeBuffer [Allows you to screenshot a buffer other than the default final lit scene image.  Useful if you're
trying to build a test for a specific GBuffer, that may be harder to tell if errors are introduced
in it.]`
- `bool bAllowEmulatingSplitscreen [If this is true, this test can use emulated splitscreen rendering when r.ScreenshotTest.EmulateSplitscreenMode = 1, 2, or 3.]`
- `bool bDisableNoisyRenderingFeatures [Disables Anti-Aliasing, Motion Blur, Screen Space Reflections, Eye Adaptation, Tonemapper and Contact
Shadows, because those features contribute a lot to the noise in the final rendered image.  If you're
explicitly looking for changes. Unchecking the option will make accessible the Disable Eye Adaptation
checkbox.]`
- `bool bDisableTonemapping [Disables Eye Adaptation and sets Tonemapper to fixed gamma curve. Should generally be on unless
testing tone mapping or other post-processing results.]`
- `bool bIgnoreAntiAliasing [If this is true, we search neighboring pixels looking for the expected pixel as what may have happened, is
that the pixel shifted a little.]`
- `bool bIgnoreColors [If this is true, all we compare is luminance of the scene.]`
- `bool bOverride_OverrideTimeTo`


**方法**:

- `FAutomationScreenshotOptions& opAssign(FAutomationScreenshotOptions Other)`

---

