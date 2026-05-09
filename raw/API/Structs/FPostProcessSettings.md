### FPostProcessSettings


To be able to use struct PostProcessSettings. // Each property consists of a bool to enable it (by default off),
// the variable declaration and further down the default value for it.
// The comment should include the meaning and usable range.

**属性**:

- `UTextureCube AmbientCubemap [The Ambient cubemap (Affects diffuse and specular shading), blends additively which if different from all other settings here]`
- `float32 AmbientCubemapIntensity [To scale the Ambient cubemap brightness
>=0: off, 1(default), >1 brighter]`
- `FLinearColor AmbientCubemapTint [AmbientCubemap tint color]`
- `float32 AmbientOcclusionBias [>0, in unreal units, default (3.0) works well for flat surfaces but can reduce details]`
- `float32 AmbientOcclusionFadeDistance [>0, in unreal units, at what distance the AO effect disppears in the distance (avoding artifacts and AO effects on huge object)]`
- `float32 AmbientOcclusionFadeRadius [>0, in unreal units, how many units before AmbientOcclusionFadeOutDistance it starts fading out]`
- `float32 AmbientOcclusionIntensity [0..1 0=off/no ambient occlusion .. 1=strong ambient occlusion, defines how much it affects the non direct lighting after base pass]`
- `float32 AmbientOcclusionMipBlend [Affects the blend over the multiple mips (lower resolution versions) , 0:fully use full resolution, 1::fully use low resolution, around 0.6 seems to be a good value]`
- `float32 AmbientOcclusionMipScale [Affects the radius AO radius scale over the multiple mips (lower resolution versions)]`
- `float32 AmbientOcclusionMipThreshold [to tweak the bilateral upsampling when using multiple mips (lower resolution versions)]`
- `float32 AmbientOcclusionPower [>0, in unreal units, bigger values means even distant surfaces affect the ambient occlusion]`
- `float32 AmbientOcclusionQuality [0=lowest quality..100=maximum quality, only a few quality levels are implemented, no soft transition]`
- `float32 AmbientOcclusionRadius [>0, in unreal units, bigger values means even distant surfaces affect the ambient occlusion]`
- `bool AmbientOcclusionRadiusInWS [true: AO radius is in world space units, false: AO radius is locked the view space in 400 units]`
- `float32 AmbientOcclusionStaticFraction [0..1 0=no effect on static lighting .. 1=AO affects the stat lighting, 0 is free meaning no extra rendering pass]`
- `float32 AmbientOcclusionTemporalBlendWeight [How much to blend the current frame with previous frames when using GTAO with temporal accumulation]`
- `bool AutoExposureApplyPhysicalCameraExposure [Only affects Manual exposure mode.]`
- `float32 AutoExposureBias [Logarithmic adjustment for the exposure. Only used if a tonemapper is specified.
0: no adjustment, -1:2x darker, -2:4x darker, 1:2x brighter, 2:4x brighter, ...]`
- `UCurveFloat AutoExposureBiasCurve [Exposure compensation based on the scene EV100.
Used to calibrate the final exposure differently depending on the average scene luminance.
0: no adjustment, -1:2x darker, -2:4x darker, 1:2x brighter, 2:4x brighter, ...]`
- `float32 AutoExposureHighPercent [The eye adaptation will adapt to a value extracted from the luminance histogram of the scene color.
The value is defined as having x percent below this brightness. Higher values give bright spots on the screen more priority
but can lead to less stable results. Lower values give the medium and darker values more priority but might cause burn out of
bright spots.
>0, <100, good values are in the range 80 .. 95]`
- `float32 AutoExposureLowPercent [The eye adaptation will adapt to a value extracted from the luminance histogram of the scene color.
The value is defined as having x percent below this brightness. Higher values give bright spots on the screen more priority
but can lead to less stable results. Lower values give the medium and darker values more priority but might cause burn out of
bright spots.
>0, <100, good values are in the range 70 .. 80]`
- `float32 AutoExposureMaxBrightness [Auto-Exposure maximum adaptation. Eye Adaptation is disabled if Min = Max.
Auto-exposure is implemented by choosing an exposure value for which the average luminance generates a pixel brightness equal to the Constant Calibration value.
The Min/Max are expressed in pixel luminance (cd/m2) or in EV100 when using ExtendDefaultLuminanceRange (see project settings).]`
- `UTexture AutoExposureMeterMask [Exposure metering mask. Bright spots on the mask will have high influence on auto-exposure metering
and dark spots will have low influence.]`
- `EAutoExposureMethod AutoExposureMethod [Luminance computation method]`
- `float32 AutoExposureMinBrightness [Auto-Exposure minimum adaptation. Eye Adaptation is disabled if Min = Max.
Auto-exposure is implemented by choosing an exposure value for which the average luminance generates a pixel brightness equal to the Constant Calibration value.
The Min/Max are expressed in pixel luminance (cd/m2) or in EV100 when using ExtendDefaultLuminanceRange (see project settings).]`
- `float32 AutoExposureSpeedDown [In F-stops per second, should be >0]`
- `float32 AutoExposureSpeedUp [In F-stops per second, should be >0]`
- `float32 Bloom1Size [Diameter size for the Bloom1 in percent of the screen width
(is done in 1/2 resolution, larger values cost more performance, good for high frequency details)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Bloom1Tint [Bloom1 tint color]`
- `float32 Bloom2Size [Diameter size for Bloom2 in percent of the screen width
(is done in 1/4 resolution, larger values cost more performance)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Bloom2Tint [Bloom2 tint color]`
- `float32 Bloom3Size [Diameter size for Bloom3 in percent of the screen width
(is done in 1/8 resolution, larger values cost more performance)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Bloom3Tint [Bloom3 tint color]`
- `float32 Bloom4Size [Diameter size for Bloom4 in percent of the screen width
(is done in 1/16 resolution, larger values cost more performance, best for wide contributions)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Bloom4Tint [Bloom4 tint color]`
- `float32 Bloom5Size [Diameter size for Bloom5 in percent of the screen width
(is done in 1/32 resolution, larger values cost more performance, best for wide contributions)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Bloom5Tint [Bloom5 tint color]`
- `float32 Bloom6Size [Diameter size for Bloom6 in percent of the screen width
(is done in 1/64 resolution, larger values cost more performance, best for wide contributions)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Bloom6Tint [Bloom6 tint color]`
- `float32 BloomConvolutionBufferScale [Implicit buffer region as a fraction of the screen size to insure the bloom does not wrap across the screen.  Larger sizes have perf impact.]`
- `FVector2D BloomConvolutionCenterUV [The UV location of the center of the kernel.  Should be very close to (.5,.5)]`
- `float32 BloomConvolutionIntensity [Multiplier for Convolution bloom contributions >=0: off, 1(default), >1 brighter]`
- `float32 BloomConvolutionPreFilterMax [Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables]`
- `float32 BloomConvolutionPreFilterMin [Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables]`
- `float32 BloomConvolutionPreFilterMult [Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables]`
- `float32 BloomConvolutionScatterDispersion [Intensity multiplier on the scatter dispersion energy of the kernel. 1.0 means exactly use the same energy as the kernel scatter dispersion.]`
- `float32 BloomConvolutionSize [Relative size of the convolution kernel image compared to the minor axis of the viewport]`
- `UTexture2D BloomConvolutionTexture [Texture to replace default convolution bloom kernel]`
- `UTexture BloomDirtMask [Texture that defines the dirt on the camera lens where the light of very bright objects is scattered.]`
- `float32 BloomDirtMaskIntensity [BloomDirtMask intensity]`
- `FLinearColor BloomDirtMaskTint [BloomDirtMask tint color]`
- `float32 BloomGaussianIntensity [Multiplier for Gaussian bloom contributions >=0: off, 1(default), >1 brighter]`
- `float32 BloomIntensity [Multiplier for all bloom contributions >=0: off, 1(default), >1 brighter]`
- `EBloomMethod BloomMethod [Preferred bloom algorithm. A different method may be used if the preferred method is not available on the target platform, e.g. due to performance limits.]`
- `float32 BloomSizeScale [Scale for all bloom sizes]`
- `float32 BloomThreshold [minimum brightness the bloom starts having effect
-1:all pixels affect bloom equally (physically correct, faster as a threshold pass is omitted), 0:all pixels affect bloom brights more, 1(default), >1 brighter]`
- `float32 BlueCorrection [Correct for artifacts with "electric" blues due to the ACEScg color space. Bright blue desaturates instead of going to violet.]`
- `float32 CameraISO [The camera sensor sensitivity]`
- `float32 CameraShutterSpeed [The camera shutter in 1/seconds.]`
- `float32 ChromaticAberrationStartOffset [A normalized distance to the center of the framebuffer where the effect takes place.]`
- `FVector4 ColorContrast [Control the range of light and dark values in your scene. Lower values will reduce the difference between bright and dark areas while higher values will increase the difference between the bright and dark areas.]`
- `FVector4 ColorContrastHighlights [Control the range of light and dark values in the highlights region. Lower values will reduce the difference between bright and dark areas while higher values will increase the difference between the bright and dark areas.]`
- `FVector4 ColorContrastMidtones [Control the range of light and dark values in the mid-tone region. Lower values will reduce the difference between bright and dark areas while higher values will increase the difference between the bright and dark areas.]`
- `FVector4 ColorContrastShadows [Control the range of light and dark values in your scene. Lower values will reduce the difference between bright and dark areas while higher values will increase the difference between the bright and dark areas.]`
- `float32 ColorCorrectionHighlightsMax [This value sets the upper threshold for what is considered to be the highlight region of the image.  This value should be larger than HighlightsMin. Default is 1.0, for backwards compatibility]`
- `float32 ColorCorrectionHighlightsMin [This value sets the lower threshold for what is considered to be the highlight region of the image.]`
- `float32 ColorCorrectionShadowsMax [This value sets the threshold for what is considered to be the shadow region of the image.]`
- `FVector4 ColorGain [This value multiplies the colors of the image.  Raising or lowering this value will result in brightening or darkening the entire scene.]`
- `FVector4 ColorGainHighlights [This value multiplies the colors in the highlight region.  Raising or lowering this value will result in brightening or darkening the affected region.]`
- `FVector4 ColorGainMidtones [This value multiplies the colors in the mid-tone region of the image.  Raising or lowering this value will result in brightening or darkening the affected region.]`
- `FVector4 ColorGainShadows [This value multiplies the colors in the shadow region.  Raising or lowering this value will result in brightening or darkening the affected region.]`
- `FVector4 ColorGamma [Control the luminance curve of the scene. Raising or lowering this value will result brightening or darkening the mid-tones of the entire image.]`
- `FVector4 ColorGammaHighlights [Control the luminance curve of the highlight region. Raising or lowering this value will result brightening or darkening the mid-tones of the highlight region.]`
- `FVector4 ColorGammaMidtones [Control the luminance curve of the mid-tone region of the image. Raising or lowering this value will result brightening or darkening the mid-tones of the image.]`
- `FVector4 ColorGammaShadows [Control the luminance curve of the shadow region. Raising or lowering this value will result brightening or darkening the mid-tones of the shadow region.]`
- `float32 ColorGradingIntensity [Color grading lookup table intensity. 0 = no intensity, 1=full intensity]`
- `UTexture ColorGradingLUT [Look up table texture to use or none of not used]`
- `FVector4 ColorOffset [This value is added to the colors of the scene.  Raising or lowering this value will result in the image being more or less washed-out.]`
- `FVector4 ColorOffsetHighlights [This value is added to the colors in the highlight region.  Raising or lowering this value will result in the highlights being more or less washed-out.]`
- `FVector4 ColorOffsetMidtones [This value is added to the colors in the mid-tone region of the image.  Raising or lowering this value will result in the mid-tones being more or less washed-out.]`
- `FVector4 ColorOffsetShadows [This value is added to the colors in the shadow region.  Raising or lowering this value will result in the shadows being more or less washed-out.]`
- `FVector4 ColorSaturation [Control the intensity of the color(hue) for the entire image.Higher values will result in more vibrant colors.]`
- `FVector4 ColorSaturationHighlights [Control the intensity of the color (hue) for the highlights region of the image.  Higher values will result in more vibrant colors.]`
- `FVector4 ColorSaturationMidtones [Control the intensity of the colors (hue) in the mid-tone region of the image.  Higher values will result in more vibrant colors.]`
- `FVector4 ColorSaturationShadows [Control the intensity of the colors (hue) in the shadow region of the image.  Higher values will result in more vibrant colors.]`
- `float32 DepthOfFieldAspectRatioScalar [Amount to scale the output viewport's aspect ratio by when computing depth of field properties.]`
- `float32 DepthOfFieldBarrelLength [The lens barrel creates vignetting and occludes bokeh, i.e. cat's eye bokeh]`
- `float32 DepthOfFieldBarrelRadius [The lens barrel creates vignetting and occludes bokeh, i.e. cat's eye bokeh]`
- `int DepthOfFieldBladeCount [Defines the number of blades of the diaphragm within the lens (between 4 and 16).]`
- `float32 DepthOfFieldDepthBlurAmount [CircleDOF only: Depth blur km for 50%]`
- `float32 DepthOfFieldDepthBlurRadius [CircleDOF only: Depth blur radius in pixels at 1920x]`
- `float32 DepthOfFieldFarBlurSize [Gaussian only: Maximum size of the Depth of Field blur (in percent of the view width) (note: performance cost scales with size)]`
- `float32 DepthOfFieldFarTransitionRegion [To define the width of the transition region next to the focal region on the near side (cm)]`
- `float32 DepthOfFieldFocalDistance [Distance in which the Depth of Field effect should be sharp, in unreal units (cm)]`
- `float32 DepthOfFieldFocalRegion [Artificial region where all content is in focus, starting after DepthOfFieldFocalDistance, in unreal units  (cm)]`
- `float32 DepthOfFieldFstop [Defines the opening of the camera lens, Aperture is 1/fstop, typical lens go down to f/1.2 (large opening), larger numbers reduce the DOF effect]`
- `FMatteBoxFlag DepthOfFieldMatteBoxFlags [Panels around the front of the lens barrel that occlude bokeh]`
- `float32 DepthOfFieldMinFstop [Defines the maximum opening of the camera lens to control the curvature of blades of the diaphragm. Set it to 0 to get straight blades.]`
- `float32 DepthOfFieldNearBlurSize [Gaussian only: Maximum size of the Depth of Field blur (in percent of the view width) (note: performance cost scales with size)]`
- `float32 DepthOfFieldNearTransitionRegion [To define the width of the transition region next to the focal region on the near side (cm)]`
- `float32 DepthOfFieldOcclusion [Occlusion tweak factor 1 (0.18 to get natural occlusion, 0.4 to solve layer color leaking issues)]`
- `float32 DepthOfFieldPetzvalBokeh [Simulate stretching in blur and bokeh. Positive values for sagittal (swirly bokeh), negative values for tangential.]`
- `float32 DepthOfFieldPetzvalBokehFalloff [How quickly does the Petzval bokeh effect increase towards the edge of the image]`
- `FVector2f DepthOfFieldPetzvalExclusionBoxExtents [Box, centered on screen, around which the Petzval effect is applied.]`
- `float32 DepthOfFieldPetzvalExclusionBoxRadius [Corner radius]`
- `float32 DepthOfFieldScale [SM5: BokehDOF only: To amplify the depth of field effect (like aperture)  0=off
          ES3_1: Used to blend DoF. 0=off]`
- `float32 DepthOfFieldSensorWidth [Width of the camera sensor to assume, in mm.]`
- `float32 DepthOfFieldSkyFocusDistance [Artificial distance to allow the skybox to be in focus (e.g. 200000), <=0 to switch the feature off, only for GaussianDOF, can cost performance]`
- `float32 DepthOfFieldSqueezeFactor [This is the squeeze factor for the DOF, which emulates the properties of anamorphic lenses.]`
- `bool DepthOfFieldUseHairDepth [For depth of field to use the hair depth for computing circle of confusion size. Otherwise use an interpolated distance between the hair depth and the scene depth based on the hair coverage (default).]`
- `float32 DepthOfFieldVignetteSize [Artificial circular mask to (near) blur content outside the radius, only for GaussianDOF, diameter in percent of screen width, costs performance if the mask is used, keep Feather can Radius on default to keep it off]`
- `EDynamicGlobalIlluminationMethod DynamicGlobalIlluminationMethod [Chooses the Dynamic Global Illumination method.  Not compatible with Forward Shading.]`
- `float32 ExpandGamut [Expand bright saturated colors outside the sRGB gamut to fake wide gamut rendering.]`
- `float32 FilmBlackClip [Lowers the toe of the tonemapper curve by this amount. Increasing this value causes more of the scene to clip to black.  For most purposes, this property should remain 0]`
- `float32 FilmGrainHighlightsMax [Sets the upper bound used for Film Grain Highlight Intensity. This value should be larger than HighlightsMin.. Default is 1.0, for backwards compatibility]`
- `float32 FilmGrainHighlightsMin [Sets the lower bound used for Film Grain Highlight Intensity.]`
- `float32 FilmGrainIntensity [0..1 Film grain intensity to apply. LinearSceneColor *= lerp(1.0, DecodedFilmGrainTexture, FilmGrainIntensity)]`
- `float32 FilmGrainIntensityHighlights [Control over the grain intensity in the regions of the image considered highlight areas.]`
- `float32 FilmGrainIntensityMidtones [Control over the grain intensity in the mid-tone region of the image.]`
- `float32 FilmGrainIntensityShadows [Control over the grain intensity in the regions of the image considered shadow areas.]`
- `float32 FilmGrainShadowsMax [Sets the upper bound used for Film Grain Shadow Intensity.]`
- `float32 FilmGrainTexelSize [Controls the size of the film grain. Size of texel of FilmGrainTexture on screen.]`
- `UTexture2D FilmGrainTexture [Defines film grain texture to use.]`
- `float32 FilmShoulder [Sometimes referred to as highlight rolloff.  Controls the contrast of the bright end of the tonemapper curve. Larger values increase contrast and smaller values decrease contrast.]`
- `float32 FilmSlope [Controls the overall steepness of the tonemapper curve.  Larger values increase scene contrast and smaller values reduce contrast.]`
- `float32 FilmToe [Controls the contrast of the dark end of the tonemapper curve. Larger values increase contrast and smaller values decrease contrast.]`
- `float32 FilmWhiteClip [Controls the height of the tonemapper curve.  Raising this value can cause bright values to more quickly approach fully-saturated white.]`
- `float32 HistogramLogMax [Histogram Max value. Expressed in Log2(Luminance) or in EV100 when using ExtendDefaultLuminanceRange (see project settings)]`
- `float32 HistogramLogMin [Histogram Min value. Expressed in Log2(Luminance) or in EV100 when using ExtendDefaultLuminanceRange (see project settings)]`
- `FLinearColor IndirectLightingColor [Adjusts indirect lighting color. (1,1,1) is default. (0,0,0) to disable GI. The show flag 'Global Illumination' must be enabled to use this property.]`
- `float32 IndirectLightingIntensity [Scales the indirect lighting contribution. A value of 0 disables GI. Default is 1. The show flag 'Global Illumination' must be enabled to use this property.]`
- `UTexture LensFlareBokehShape [Defines the shape of the Bokeh when the image base lens flares are blurred, cannot be blended]`
- `float32 LensFlareBokehSize [Size of the Lens Blur (in percent of the view width) that is done with the Bokeh texture (note: performance cost is radius*radius)]`
- `float32 LensFlareIntensity [Brightness scale of the image cased lens flares (linear)]`
- `float32 LensFlareThreshold [Minimum brightness the lens flare starts having effect (this should be as high as possible to avoid the performance cost of blurring content that is too dark too see)]`
- `FLinearColor LensFlareTint [Tint color for the image based lens flares.]`
- `FLinearColor LensFlareTints [RGB defines the lens flare color, A it's position. This is a temporary solution.]`
- `float32 LocalExposureBlurredLuminanceBlend [Local Exposure decomposes luminance of the frame into a base layer and a detail layer.
Blend between bilateral filtered and blurred luminance as the base layer.
Blurred luminance helps preserve image appearance and specular highlights, and reduce ringing.
Good values are usually in the range 0.4 .. 0.6]`
- `float32 LocalExposureBlurredLuminanceKernelSizePercent [Kernel size (percentage of screen) used to blur frame luminance.]`
- `float32 LocalExposureDetailStrength [Local Exposure decomposes luminance of the frame into a base layer and a detail layer.
Value different than 1 will enable local exposure.
This value should be set to 1 in most cases.]`
- `UCurveFloat LocalExposureHighlightContrastCurve [Local Exposure Highlight Contrast based on the scene EV100.
Used to calibrate Local Exposure differently depending on the average scene luminance.]`
- `float32 LocalExposureHighlightContrastScale [Local Exposure decomposes luminance of the frame into a base layer and a detail layer.
Contrast of the base layer is reduced based on this value.
Value less than 1 will enable local exposure.
Good values are usually in the range 0.6 .. 1.0.]`
- `float32 LocalExposureHighlightThreshold [Threshold used to determine which regions of the screen are considered highlights.]`
- `float32 LocalExposureHighlightThresholdStrength [Strength of the highlight threshold.]`
- `ELocalExposureMethod LocalExposureMethod [Local Exposure algorithm]`
- `float32 LocalExposureMiddleGreyBias [Logarithmic adjustment for the local exposure middle grey.
0: no adjustment, -1:2x darker, -2:4x darker, 1:2x brighter, 2:4x brighter, ...]`
- `UCurveFloat LocalExposureShadowContrastCurve [Local Exposure Shadow Contrast based on the scene EV100.
Used to calibrate Local Exposure differently depending on the average scene luminance.]`
- `float32 LocalExposureShadowContrastScale [Local Exposure decomposes luminance of the frame into a base layer and a detail layer.
Contrast of the base layer is reduced based on this value.
Value less than 1 will enable local exposure.
Good values are usually in the range 0.6 .. 1.0.]`
- `float32 LocalExposureShadowThreshold [Threshold used to determine which regions of the screen are considered shadows.]`
- `float32 LocalExposureShadowThresholdStrength [Strength of the shadow threshold.]`
- `float32 LumenDiffuseColorBoost [Allows brightening indirect lighting by calculating material diffuse color for indirect lighting. Values above 1 (original diffuse color) aren't physically correct, but they can be useful as an art direction knob to increase the amount of bounced light in the scene. Best to keep below 2 as it also causes reflections to be brighter than the scene.]`
- `float32 LumenFinalGatherLightingUpdateSpeed [Controls how much Lumen Final Gather is allowed to cache lighting results to improve performance.  Larger scales cause lighting changes to propagate faster, but increase GPU cost and noise.]`
- `float32 LumenFinalGatherQuality [Scales Lumen's Final Gather quality.  Larger scales reduce noise, but greatly increase GPU cost.]`
- `bool LumenFinalGatherScreenTraces [Whether to use screen space traces for Lumen Global Illumination. Screen space traces bypass Lumen Scene and instead sample Scene Depth and Scene Color. This improves quality, as it bypasses Lumen Scene, but causes view dependent lighting.]`
- `bool LumenFrontLayerTranslucencyReflections [Whether to use high quality mirror reflections on the front layer of translucent surfaces.  Other layers will use the lower quality Radiance Cache method that can only produce glossy reflections.  Increases GPU cost when enabled.]`
- `float32 LumenFullSkylightLeakingDistance [Controls the distance from a receiving surface where skylight leaking reaches its full intensity.  Smaller values make the skylight leaking flatter, while larger values create an Ambient Occlusion effect.]`
- `int LumenMaxReflectionBounces [Sets the maximum number of recursive reflection bounces. 1 means a single reflection ray (no secondary reflections in mirrors). Currently only supported by Hardware Ray Tracing with Hit Lighting.]`
- `int LumenMaxRefractionBounces [The maximum count of refraction event to trace. When hit lighting is used, Translucent meshes will be traced when LumenMaxRefractionBounces > 0, making the reflection tracing more expenssive.]`
- `float32 LumenMaxRoughnessToTraceReflections [Sets the maximum roughness value for which Lumen still traces dedicated reflection rays. Higher values improve reflection quality, but greatly increase GPU cost.]`
- `float32 LumenMaxTraceDistance [Controls the maximum distance that Lumen should trace while solving lighting.  Values that are too small will cause lighting to leak into large caves, while values that are large will increase GPU cost.]`
- `ELumenRayLightingModeOverride LumenRayLightingMode [Controls how Lumen rays are lit when Lumen is using Hardware Ray Tracing.  By default, Lumen uses the Surface Cache for best performance, but can be set to 'Hit Lighting' for higher quality.]`
- `float32 LumenReflectionQuality [Scales the Reflection quality.  Larger scales reduce noise in reflections, but increase GPU cost.]`
- `bool LumenReflectionsScreenTraces [Whether to use screen space traces for Lumen Reflections. Screen space traces bypass Lumen Scene and instead sample Scene Depth and Scene Color. This improves quality, as it bypasses Lumen Scene, but causes view dependent lighting.]`
- `float32 LumenSceneDetail [Controls the size of instances that can be represented in Lumen Scene.  Larger values will ensure small objects are represented, but increase GPU cost.]`
- `float32 LumenSceneLightingQuality [Scales Lumen Scene's quality.  Larger scales cause Lumen Scene to be calculated with a higher fidelity, which can be visible in reflections, but increase GPU cost.]`
- `float32 LumenSceneLightingUpdateSpeed [Controls how much Lumen Scene is allowed to cache lighting results to improve performance.  Larger scales cause lighting changes to propagate faster, but increase GPU cost.]`
- `float32 LumenSceneViewDistance [Sets the maximum view distance of the scene that Lumen maintains for ray tracing against.  Larger values will increase the effective range of sky shadowing and Global Illumination, but increase GPU cost.]`
- `float32 LumenSkylightLeaking [Controls what fraction of the skylight intensity should be allowed to leak.  This can be useful as an art direction knob (non-physically based) to keep indoor areas from going fully black.]`
- `FLinearColor LumenSkylightLeakingTint [Color tint for Lumen Skylight Leaking.]`
- `float32 LumenSurfaceCacheResolution [Scale factor for Lumen Surface Cache resolution, for Scene Capture.  Smaller values save GPU memory, at a cost in quality.  Defaults to 0.5 if not overridden.]`
- `float32 MotionBlurAmount [Strength of motion blur, 0:off]`
- `float32 MotionBlurMax [max distortion caused by motion blur, in percent of the screen width, 0:off]`
- `float32 MotionBlurPerObjectSize [The minimum projected screen radius for a primitive to be drawn in the velocity pass, percentage of screen width. smaller numbers cause more draw calls, default: 4%]`
- `int MotionBlurTargetFPS [Defines the target FPS for motion blur. Makes motion blur independent of actual frame rate and relative
to the specified target FPS instead. Higher target FPS results in shorter frames, which means shorter
shutter times and less motion blur. Lower FPS means more motion blur. A value of zero makes the motion
blur dependent on the actual frame rate.]`
- `bool PathTracingEnableDenoiser [Run the currently loaded denoiser plugin on the last sample to remove noise from the output. Has no effect if a plug-in is not loaded.]`
- `bool PathTracingEnableEmissiveMaterials [Should emissive materials contribute to scene lighting?]`
- `bool PathTracingEnableReferenceAtmosphere [Enables path tracing in the atmosphere instead of baking the sky atmosphere contribution into a skylight. Any skylight present in the scene will be automatically ignored when this is enabled.]`
- `bool PathTracingEnableReferenceDOF [Enables a reference quality depth-of-field which replaces the post-process effect.]`
- `bool PathTracingIncludeDiffuse [Should the render include diffuse lighting contributions?]`
- `bool PathTracingIncludeEmissive [Should the render include directly visible emissive elements?]`
- `bool PathTracingIncludeIndirectDiffuse [Should the render include indirect diffuse lighting contributions?]`
- `bool PathTracingIncludeIndirectSpecular [Should the render include indirect specular lighting contributions?]`
- `bool PathTracingIncludeIndirectVolume [Should the render include volume lighting contributions?]`
- `bool PathTracingIncludeSpecular [Should the render include specular lighting contributions?]`
- `bool PathTracingIncludeVolume [Should the render include volume lighting contributions?]`
- `int PathTracingMaxBounces [Sets the path tracing maximum bounces]`
- `float32 PathTracingMaxPathIntensity [Sets the maximum intensity of indirect samples to reduce fireflies. Lowering this value reduces noise at the expense of accuracy. Increasing it is more accurate but may lead to more noise.]`
- `int PathTracingSamplesPerPixel [Sets the samples per pixel for the path tracer.]`
- `bool RayTracingAO [Enables ray tracing ambient occlusion.]`
- `float32 RayTracingAOIntensity [Scalar factor on the ray-tracing ambient occlusion score.]`
- `float32 RayTracingAORadius [Defines the world-space search radius for occlusion rays.]`
- `int RayTracingAOSamplesPerPixel [Sets the samples per pixel for ray tracing ambient occlusion.]`
- `int RayTracingTranslucencyMaxPrimaryHitEvents [Maximum number of hit events allowed on primary ray paths]`
- `float32 RayTracingTranslucencyMaxRoughness [Sets the maximum roughness until which ray tracing translucency will be visible (lower value is faster). Translucency contribution is smoothly faded when close to roughness threshold. This parameter behaves similarly to ScreenSpaceReflectionMaxRoughness.]`
- `int RayTracingTranslucencyMaxSecondaryHitEvents [Maximum number of hit events allowed on secondary ray paths]`
- `bool RayTracingTranslucencyRefraction [Sets whether refraction should be enabled or not (if not rays will not scatter and only travel in the same direction as before the intersection event).]`
- `int RayTracingTranslucencyRefractionRays [Sets the maximum number of ray tracing refraction rays.]`
- `int RayTracingTranslucencySamplesPerPixel [Sets the samples per pixel for ray traced translucency.]`
- `EReflectedAndRefractedRayTracedShadows RayTracingTranslucencyShadows [Sets the translucency shadows type.]`
- `bool RayTracingTranslucencyUseRayTracedRefraction [Whether to use ray traced refraction which currently doesn't work well with rough refraction or simulate it using a screen space effect]`
- `EReflectionMethod ReflectionMethod [Chooses the Reflection method. Not compatible with Forward Shading.]`
- `FLinearColor SceneColorTint [Scene tint color]`
- `float32 SceneFringeIntensity [in percent, Scene chromatic aberration / color fringe (camera imperfection) to simulate an artifact that happens in real-world lens, mostly visible in the image corners.]`
- `float32 ScreenSpaceReflectionIntensity [Enable/Fade/disable the Screen Space Reflection feature, in percent, avoid numbers between 0 and 1 fo consistency]`
- `float32 ScreenSpaceReflectionMaxRoughness [Until what roughness we fade the screen space reflections, 0.8 works well, smaller can run faster]`
- `float32 ScreenSpaceReflectionQuality [0=lowest quality..100=maximum quality, only a few quality levels are implemented, no soft transition, 50 is the default for better performance.]`
- `float32 Sharpen [Controls the strength of image sharpening applied during tonemapping.]`
- `ETemperatureMethod TemperatureType [Selects the type of temperature calculation.
White Balance uses the Temperature value to control the virtual camera's White Balance. This is the default selection.
Color Temperature uses the Temperature value to adjust the color temperature of the scene, which is the inverse of the White Balance operation.]`
- `float32 ToneCurveAmount [Allow effect of Tone Curve to be reduced (Set ToneCurveAmount and ExpandGamut to 0.0 to fully disable tone curve)]`
- `ETranslucencyType TranslucencyType [Sets the translucency type]`
- `int UserFlags [Per-view user flags accessible in materials via TestPostVolumeUserFlag node, allowing per-view overrides of material behavior.]`
- `float32 VignetteIntensity [0..1 0=off/no vignette .. 1=strong vignette]`
- `FWeightedBlendables WeightedBlendables [Allows custom post process materials to be defined, using a MaterialInstance with the same Material as its parent to allow blending.
For materials this needs to be the "PostProcess" domain type. This can be used for any UObject object implementing the IBlendableInterface (e.g. could be used to fade weather settings).]`
- `float32 WhiteTemp [Controls the color temperature or white balance in degrees Kelvin which the scene considers as white light.]`
- `float32 WhiteTint [Controls the color of the scene along the magenta - green axis (orthogonal to the color temperature).  This feature is equivalent to color tint in digital cameras.]`
- `bool bMegaLights [Allows forcing MegaLights on or off for this volume, regardless of the project setting for MegaLights.
MegaLights will stochastically sample lights, which allows many shadow casting lights to be rendered efficiently, with a consistent and low GPU cost.
When MegaLights is enabled, other direct lighting algorithms like Deferred Shading will no longer be used, and other shadowing methods like Ray Traced Shadows, Distance Field Shadows and Shadow Maps will no longer be used.
MegaLights requires Hardware Ray Tracing and Shader Model 6.]`
- `bool bMobileHQGaussian [Enable HQ Gaussian on high end mobile platforms. (ES3_1)]`
- `bool bOverride_AmbientCubemapIntensity`
- `bool bOverride_AmbientCubemapTint`
- `bool bOverride_AmbientOcclusionBias`
- `bool bOverride_AmbientOcclusionFadeDistance`
- `bool bOverride_AmbientOcclusionFadeRadius`
- `bool bOverride_AmbientOcclusionIntensity`
- `bool bOverride_AmbientOcclusionMipBlend`
- `bool bOverride_AmbientOcclusionMipScale`
- `bool bOverride_AmbientOcclusionMipThreshold`
- `bool bOverride_AmbientOcclusionPower`
- `bool bOverride_AmbientOcclusionQuality`
- `bool bOverride_AmbientOcclusionRadius`
- `bool bOverride_AmbientOcclusionRadiusInWS`
- `bool bOverride_AmbientOcclusionStaticFraction`
- `bool bOverride_AmbientOcclusionTemporalBlendWeight`
- `bool bOverride_AutoExposureApplyPhysicalCameraExposure`
- `bool bOverride_AutoExposureBias`
- `bool bOverride_AutoExposureBiasCurve`
- `bool bOverride_AutoExposureHighPercent`
- `bool bOverride_AutoExposureLowPercent`
- `bool bOverride_AutoExposureMaxBrightness`
- `bool bOverride_AutoExposureMeterMask`
- `bool bOverride_AutoExposureMethod`
- `bool bOverride_AutoExposureMinBrightness`
- `bool bOverride_AutoExposureSpeedDown`
- `bool bOverride_AutoExposureSpeedUp`
- `bool bOverride_Bloom1Size`
- `bool bOverride_Bloom1Tint`
- `bool bOverride_Bloom2Size`
- `bool bOverride_Bloom2Tint`
- `bool bOverride_Bloom3Size`
- `bool bOverride_Bloom3Tint`
- `bool bOverride_Bloom4Size`
- `bool bOverride_Bloom4Tint`
- `bool bOverride_Bloom5Size`
- `bool bOverride_Bloom5Tint`
- `bool bOverride_Bloom6Size`
- `bool bOverride_Bloom6Tint`
- `bool bOverride_BloomConvolutionBufferScale`
- `bool bOverride_BloomConvolutionCenterUV`
- `bool bOverride_BloomConvolutionIntensity`
- `bool bOverride_BloomConvolutionPreFilterMax`
- `bool bOverride_BloomConvolutionPreFilterMin`
- `bool bOverride_BloomConvolutionPreFilterMult`
- `bool bOverride_BloomConvolutionScatterDispersion`
- `bool bOverride_BloomConvolutionSize`
- `bool bOverride_BloomConvolutionTexture`
- `bool bOverride_BloomDirtMask`
- `bool bOverride_BloomDirtMaskIntensity`
- `bool bOverride_BloomDirtMaskTint`
- `bool bOverride_BloomGaussianIntensity`
- `bool bOverride_BloomIntensity`
- `bool bOverride_BloomMethod`
- `bool bOverride_BloomSizeScale`
- `bool bOverride_BloomThreshold`
- `bool bOverride_BlueCorrection`
- `bool bOverride_CameraISO`
- `bool bOverride_CameraShutterSpeed`
- `bool bOverride_ChromaticAberrationStartOffset`
- `bool bOverride_ColorContrast`
- `bool bOverride_ColorContrastHighlights`
- `bool bOverride_ColorContrastMidtones`
- `bool bOverride_ColorContrastShadows`
- `bool bOverride_ColorCorrectionHighlightsMax`
- `bool bOverride_ColorCorrectionHighlightsMin`
- `bool bOverride_ColorCorrectionShadowsMax`
- `bool bOverride_ColorGain`
- `bool bOverride_ColorGainHighlights`
- `bool bOverride_ColorGainMidtones`
- `bool bOverride_ColorGainShadows`
- `bool bOverride_ColorGamma`
- `bool bOverride_ColorGammaHighlights`
- `bool bOverride_ColorGammaMidtones`
- `bool bOverride_ColorGammaShadows`
- `bool bOverride_ColorGradingIntensity`
- `bool bOverride_ColorGradingLUT`
- `bool bOverride_ColorOffset`
- `bool bOverride_ColorOffsetHighlights`
- `bool bOverride_ColorOffsetMidtones`
- `bool bOverride_ColorOffsetShadows`
- `bool bOverride_ColorSaturation [Color Correction controls]`
- `bool bOverride_ColorSaturationHighlights`
- `bool bOverride_ColorSaturationMidtones`
- `bool bOverride_ColorSaturationShadows`
- `bool bOverride_DepthOfFieldAspectRatioScalar`
- `bool bOverride_DepthOfFieldBarrelLength`
- `bool bOverride_DepthOfFieldBarrelRadius`
- `bool bOverride_DepthOfFieldBladeCount`
- `bool bOverride_DepthOfFieldDepthBlurAmount`
- `bool bOverride_DepthOfFieldDepthBlurRadius`
- `bool bOverride_DepthOfFieldFarBlurSize`
- `bool bOverride_DepthOfFieldFarTransitionRegion`
- `bool bOverride_DepthOfFieldFocalDistance`
- `bool bOverride_DepthOfFieldFocalRegion`
- `bool bOverride_DepthOfFieldFstop`
- `bool bOverride_DepthOfFieldMatteBoxFlags`
- `bool bOverride_DepthOfFieldMinFstop`
- `bool bOverride_DepthOfFieldNearBlurSize`
- `bool bOverride_DepthOfFieldNearTransitionRegion`
- `bool bOverride_DepthOfFieldOcclusion`
- `bool bOverride_DepthOfFieldPetzvalBokeh`
- `bool bOverride_DepthOfFieldPetzvalBokehFalloff`
- `bool bOverride_DepthOfFieldPetzvalExclusionBoxExtents`
- `bool bOverride_DepthOfFieldPetzvalExclusionBoxRadius`
- `bool bOverride_DepthOfFieldScale`
- `bool bOverride_DepthOfFieldSensorWidth`
- `bool bOverride_DepthOfFieldSkyFocusDistance`
- `bool bOverride_DepthOfFieldSqueezeFactor`
- `bool bOverride_DepthOfFieldUseHairDepth`
- `bool bOverride_DepthOfFieldVignetteSize`
- `bool bOverride_DynamicGlobalIlluminationMethod`
- `bool bOverride_ExpandGamut`
- `bool bOverride_FilmBlackClip`
- `bool bOverride_FilmGrainHighlightsMax`
- `bool bOverride_FilmGrainHighlightsMin`
- `bool bOverride_FilmGrainIntensity`
- `bool bOverride_FilmGrainIntensityHighlights`
- `bool bOverride_FilmGrainIntensityMidtones`
- `bool bOverride_FilmGrainIntensityShadows`
- `bool bOverride_FilmGrainShadowsMax`
- `bool bOverride_FilmGrainTexelSize`
- `bool bOverride_FilmGrainTexture`
- `bool bOverride_FilmShoulder`
- `bool bOverride_FilmSlope`
- `bool bOverride_FilmToe`
- `bool bOverride_FilmWhiteClip`
- `bool bOverride_HistogramLogMax`
- `bool bOverride_HistogramLogMin`
- `bool bOverride_IndirectLightingColor`
- `bool bOverride_IndirectLightingIntensity`
- `bool bOverride_LensFlareBokehShape`
- `bool bOverride_LensFlareBokehSize`
- `bool bOverride_LensFlareIntensity`
- `bool bOverride_LensFlareThreshold`
- `bool bOverride_LensFlareTint`
- `bool bOverride_LensFlareTints`
- `bool bOverride_LocalExposureBlurredLuminanceBlend`
- `bool bOverride_LocalExposureBlurredLuminanceKernelSizePercent`
- `bool bOverride_LocalExposureDetailStrength`
- `bool bOverride_LocalExposureHighlightContrastCurve`
- `bool bOverride_LocalExposureHighlightContrastScale`
- `bool bOverride_LocalExposureHighlightThreshold`
- `bool bOverride_LocalExposureHighlightThresholdStrength`
- `bool bOverride_LocalExposureMethod`
- `bool bOverride_LocalExposureMiddleGreyBias`
- `bool bOverride_LocalExposureShadowContrastCurve`
- `bool bOverride_LocalExposureShadowContrastScale`
- `bool bOverride_LocalExposureShadowThreshold`
- `bool bOverride_LocalExposureShadowThresholdStrength`
- `bool bOverride_LumenDiffuseColorBoost`
- `bool bOverride_LumenFinalGatherLightingUpdateSpeed`
- `bool bOverride_LumenFinalGatherQuality`
- `bool bOverride_LumenFinalGatherScreenTraces`
- `bool bOverride_LumenFrontLayerTranslucencyReflections`
- `bool bOverride_LumenFullSkylightLeakingDistance`
- `bool bOverride_LumenMaxReflectionBounces`
- `bool bOverride_LumenMaxRefractionBounces`
- `bool bOverride_LumenMaxRoughnessToTraceReflections`
- `bool bOverride_LumenMaxTraceDistance`
- `bool bOverride_LumenRayLightingMode`
- `bool bOverride_LumenReflectionQuality`
- `bool bOverride_LumenReflectionsScreenTraces`
- `bool bOverride_LumenSceneDetail`
- `bool bOverride_LumenSceneLightingQuality`
- `bool bOverride_LumenSceneLightingUpdateSpeed`
- `bool bOverride_LumenSceneViewDistance`
- `bool bOverride_LumenSkylightLeaking`
- `bool bOverride_LumenSkylightLeakingTint`
- `bool bOverride_LumenSurfaceCacheResolution`
- `bool bOverride_MobileHQGaussian`
- `bool bOverride_MotionBlurAmount`
- `bool bOverride_MotionBlurMax`
- `bool bOverride_MotionBlurPerObjectSize`
- `bool bOverride_MotionBlurTargetFPS`
- `bool bOverride_PathTracingEnableDenoiser`
- `bool bOverride_PathTracingEnableEmissiveMaterials`
- `bool bOverride_PathTracingEnableReferenceAtmosphere`
- `bool bOverride_PathTracingEnableReferenceDOF`
- `bool bOverride_PathTracingIncludeDiffuse`
- `bool bOverride_PathTracingIncludeEmissive`
- `bool bOverride_PathTracingIncludeIndirectDiffuse`
- `bool bOverride_PathTracingIncludeIndirectSpecular`
- `bool bOverride_PathTracingIncludeIndirectVolume`
- `bool bOverride_PathTracingIncludeSpecular`
- `bool bOverride_PathTracingIncludeVolume`
- `bool bOverride_PathTracingMaxBounces`
- `bool bOverride_PathTracingMaxPathIntensity`
- `bool bOverride_PathTracingSamplesPerPixel`
- `bool bOverride_RayTracingAO`
- `bool bOverride_RayTracingAOIntensity`
- `bool bOverride_RayTracingAORadius`
- `bool bOverride_RayTracingAOSamplesPerPixel`
- `bool bOverride_RayTracingGI`
- `bool bOverride_RayTracingGIMaxBounces`
- `bool bOverride_RayTracingGISamplesPerPixel`
- `bool bOverride_RayTracingReflectionsMaxBounces`
- `bool bOverride_RayTracingReflectionsMaxRoughness`
- `bool bOverride_RayTracingReflectionsSamplesPerPixel`
- `bool bOverride_RayTracingReflectionsShadows`
- `bool bOverride_RayTracingReflectionsTranslucency`
- `bool bOverride_RayTracingTranslucencyMaxPrimaryHitEvents`
- `bool bOverride_RayTracingTranslucencyMaxRoughness`
- `bool bOverride_RayTracingTranslucencyMaxSecondaryHitEvents`
- `bool bOverride_RayTracingTranslucencyRefraction`
- `bool bOverride_RayTracingTranslucencyRefractionRays`
- `bool bOverride_RayTracingTranslucencySamplesPerPixel`
- `bool bOverride_RayTracingTranslucencyShadows`
- `bool bOverride_RayTracingTranslucencyUseRayTracedRefraction`
- `bool bOverride_ReflectionMethod`
- `bool bOverride_SceneColorTint`
- `bool bOverride_SceneFringeIntensity`
- `bool bOverride_ScreenSpaceReflectionIntensity`
- `bool bOverride_ScreenSpaceReflectionMaxRoughness`
- `bool bOverride_ScreenSpaceReflectionQuality`
- `bool bOverride_ScreenSpaceReflectionRoughnessScale`
- `bool bOverride_Sharpen`
- `bool bOverride_TemperatureType [first all bOverride_... as they get grouped together into bitfields]`
- `bool bOverride_ToneCurveAmount`
- `bool bOverride_TranslucencyType`
- `bool bOverride_UserFlags [TODO: look useless...]`
- `bool bOverride_VignetteIntensity`
- `bool bOverride_WhiteTemp`
- `bool bOverride_WhiteTint`
- `bool bOverride_bMegaLights`


**方法**:

- `FPostProcessSettings& opAssign(FPostProcessSettings Other)`

---

