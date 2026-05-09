### UCommonNumericTextBlock


Numeric text block that provides interpolation, and some type support (numbers, percents, seconds, distance).

**属性**:

- `float32 CurrentNumericValue [The current numeric value being formatted for display, potentially being interpolated from. NOTE: The displayed text is very likely not identical to this value, due to formatting.]`
- `float32 EaseOutInterpolationExponent [Exponent parameter for the "ease out" interpolation curve. Must be > 0, but should be > 1 in order to "ease out".]`
- `FCommonNumberFormattingOptions FormattingSpecification [The specifications for how the current numeric value should be formatted in to numeral text.]`
- `float32 InterpolationUpdateInterval [The desired interval, in seconds, between interpolation updates. 0.0 implies per-frame updates. NOTE: Interpolation updates may occur further apart due to tick rates.]`
- `ECommonNumericType NumericType`
- `FOnInterpolationEnded__CommonNumericTextBlock OnInterpolationEndedEvent [Event triggered when interpolation has ended.]`
- `FOnInterpolationStarted__CommonNumericTextBlock OnInterpolationStartedEvent [Event triggered when interpolation has started.]`
- `FOnInterpolationUpdated__CommonNumericTextBlock OnInterpolationUpdatedEvent [Event triggered when interpolation has updated.]`
- `FOnOutro__CommonNumericTextBlock OnOutroEvent [Event triggered at a specified time before the interpolation completes, for "outro" purposes.]`
- `bool PerformSizeInterpolation`
- `float32 PostInterpolationShrinkDuration [The desired width of the formatted text may change rapidly and erratically during interpolation due to font glyph dimensions.
To combat this, the desired width of the text will never shrink during interpolation.
Once interpolation completes, the desired width will shrink over the duration specified.]`


**方法**:

- `float32 GetTargetValue() const`  
  Returns the value this widget will ultimately show if it is interpolating, or the current value if it is not.
- `InterpolateToValue(float32 TargetValue, float32 MaximumInterpolationDuration = 3.000000, float32 MinimumChangeRate = 1.000000, float32 OutroOffset = 0.000000)`  
  Starts an ongoing process of interpolating the current numeric value to the specified target value.
The interpolation process may take the specified maximum duration or complete sooner if the minimum change rate causes the target to be reached prematurely.
Optionally, an outro duration can be specified in order to trigger an outro event before interpolation completes.

TargetValue                                  The value to be interpolated to.
MaximumInterpolationDuration The duration, in seconds, for the interpolation to take, at most. Must be greater than 0.
MinimumChangeRate                    The minimum change in numeric value per second. Must be greater than or equal to 0.
OutroDuration                                The time offset, in seconds, *before* the end of the InterpolationDuration elapses, at which to trigger an outro event. Must be less than or equal to MaximumInterpolationDuration
- `bool IsInterpolatingNumericValue() const`
- `SetCurrentValue(float32 NewValue)`  
  Sets the current numeric value. NOTE: Cancels any ongoing interpolation!
- `SetNumericType(ECommonNumericType InNumericType)`

---

