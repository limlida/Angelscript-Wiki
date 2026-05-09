### UUserWidget


A widget that enables UI extensibility through WidgetBlueprint.

**属性**:

- `FLinearColor ColorAndOpacity [The color and opacity of this widget.  Tints all child widgets.]`
- `FWidgetChild DesiredFocusWidget []`
- `FSlateColor ForegroundColor [The foreground color of the widget, this is inherited by sub widgets.  Any color property
that is marked as inherit will use this color.]`
- `FOnVisibilityChangedEvent OnVisibilityChanged [Called when the visibility has changed]`
- `FMargin Padding [The padding area around the content.]`
- `UTexture2D PreviewBackground [A preview background that you can use when designing the UI to get a sense of scale on the screen.  Use
a texture with a screenshot of your game in it, for example if you were designing a HUD.]`
- `int Priority`
- `EWidgetTickFrequency TickFrequency [This widget is allowed to tick. If this is unchecked tick will never be called, animations will not play correctly, and latent actions will not execute.
Uncheck this for performance reasons only]`
- `bool bIsFocusable [Setting this flag to true, allows this widget to accept focus when clicked, or when navigated to.]`
- `bool bStopAction`


**方法**:

- `FText GetPaletteCategory() const`
- `SetPaletteCategory(FText InPaletteCategory)`
- `UWidget GetRootWidget() const`
- `SetRootWidget(UWidget NewRootWidget)`
- `UWidget ConstructWidget(UClass WidgetClass, FName WidgetName = NAME_None)`
- `bool RemoveWidget(UWidget WidgetToRemove)`
- `GetAllWidgets(TArray<UWidget>& Widgets) const`
- `UUserWidgetExtension AddExtension(TSubclassOf<UUserWidgetExtension> InExtensionType)`  
  Add the extension of the requested type.
- `bool AddToPlayerScreen(int ZOrder = 0)`  
  Adds the widget to the game's viewport in a section dedicated to the player.  This is valuable in a split screen
game where you need to only show a widget over a player's portion of the viewport.

@param ZOrder The higher the number, the more on top this widget will be.
- `AddToViewport(int ZOrder = 0)`  
  Adds it to the game's viewport and fills the entire screen, unless SetDesiredSizeInViewport is called
to explicitly set the size.

@param ZOrder The higher the number, the more on top this widget will be.
- `BindToAnimationEvent(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate, EWidgetAnimationEvent AnimationEvent, FName UserTag = NAME_None)`  
  Allows binding to a specific animation's event.
@param Animation the animation to listen for starting or finishing.
@param Delegate the delegate to call when the animation's state changes
@param AnimationEvent the event to watch for.
@param UserTag Scopes the delegate to only be called when the animation completes with a specific tag set on it when it was played.
- `BindToAnimationFinished(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate = FWidgetAnimationDynamicEvent ( ))`  
  Bind an animation finished delegate.
@param Animation the animation to listen for starting or finishing.
@param Delegate the delegate to call when the animation's state changes
- `BindToAnimationStarted(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate = FWidgetAnimationDynamicEvent ( ))`  
  Bind an animation started delegate.
@param Animation the animation to listen for starting or finishing.
@param Delegate the delegate to call when the animation's state changes
- `CancelLatentActions()`  
  Cancels any pending Delays or timer callbacks for this widget.
- `Construct()`  
  Called after the underlying slate widget is constructed.  Depending on how the slate object is used
this event may be called multiple times due to adding and removing from the hierarchy.
If you need a true called-once-when-created event, use OnInitialized.
- `Destruct()`  
  Called when a widget is no longer referenced causing the slate resource to destroyed.  Just like
Construct this event can be called multiple times.
- `FlushAnimations()`  
  Flushes all animations on all widgets to guarantee that any queued updates are processed before this call returns
- `FVector2D GetAlignmentInViewport() const`
- `FAnchors GetAnchorsInViewport() const`
- `float32 GetAnimationCurrentTime(const UWidgetAnimation InAnimation) const`  
  Gets the current time of the animation in this widget

@param The name of the animation to get the current time for
@return the current time of the animation.
- `UUserWidgetExtension GetExtension(TSubclassOf<UUserWidgetExtension> ExtensionType) const`  
  Find the first extension of the requested type.
- `TArray<UUserWidgetExtension> GetExtensions(TSubclassOf<UUserWidgetExtension> ExtensionType) const`  
  Find the extensions of the requested type.
- `APlayerCameraManager GetOwningPlayerCameraManager() const`  
  Gets the player camera manager associated with this UI.
@return Gets the owning player camera manager that's owned by the player controller assigned to this widget.
- `APawn GetOwningPlayerPawn() const`  
  Gets the player pawn associated with this UI.
@return Gets the owning player pawn that's owned by the player controller assigned to this widget.
- `bool IsAnimationPlaying(const UWidgetAnimation InAnimation) const`  
  Gets whether an animation is currently playing on this widget.

@param InAnimation The animation to check the playback status of
@return True if the animation is currently playing
- `bool IsAnimationPlayingForward(const UWidgetAnimation InAnimation)`  
  returns true if the animation is currently playing forward, false otherwise.

@param InAnimation The playing animation that we want to know about
- `bool IsAnyAnimationPlaying() const`  
  @return True if any animation is currently playing
- `bool IsInteractable() const`  
  Gets a value indicating if the widget is interactive.
- `bool IsListeningForInputAction(FName ActionName) const`  
  Checks if the action has a registered callback with the input component.
- `bool IsPlayingAnimation() const`  
  Are we currently playing any animations?
- `ListenForInputAction(FName ActionName, EInputEvent EventType, bool bConsume, FOnInputAction Callback = FOnInputAction ( ))`  
  Listens for a particular Player Input Action by name.  This requires that those actions are being executed, and
that we're not currently in UI-Only Input Mode.
- `OnAddedToFocusPath(FFocusEvent InFocusEvent)`  
  If focus is gained on on this widget or on a child widget and this widget is added
to the focus path, and wasn't previously part of it, this event is called.

@param  InFocusEvent  FocusEvent
- `FEventReply OnAnalogValueChanged(FGeometry MyGeometry, FAnalogInputEvent InAnalogInputEvent)`  
  Called when an analog value changes on a button that supports analog

@param MyGeometry The Geometry of the widget receiving the event
@param  InAnalogInputEvent  Analog Event
@return  Returns whether the event was handled, along with other possible actions
- `OnAnimationFinished(const UWidgetAnimation Animation)`  
  Called when an animation has either played all the way through or is stopped

@param Animation The animation that has finished playing
- `OnAnimationStarted(const UWidgetAnimation Animation)`  
  Called when an animation is started.

@param Animation the animation that started
- `OnDragCancelled(FPointerEvent PointerEvent, UDragDropOperation Operation)`  
  Called when the user cancels the drag operation, typically when they simply release the mouse button after
beginning a drag operation, but failing to complete the drag.

@param  PointerEvent  Last mouse event from when the drag was canceled.
@param  Operation     The drag operation that was canceled.
- `OnDragDetected(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation& Operation)`  
  Called when Slate detects that a widget started to be dragged.

@param  InMyGeometry  Widget geometry
@param  PointerEvent  MouseMove that triggered the drag
@param  Operation     The drag operation that was detected.
- `OnDragEnter(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation Operation)`  
  Called during drag and drop when the drag enters the widget.

@param MyGeometry     The geometry of the widget receiving the event.
@param PointerEvent   The mouse event from when the drag entered the widget.
@param Operation      The drag operation that entered the widget.
- `OnDragLeave(FPointerEvent PointerEvent, UDragDropOperation Operation)`  
  Called during drag and drop when the drag leaves the widget.

@param PointerEvent   The mouse event from when the drag left the widget.
@param Operation      The drag operation that entered the widget.
- `bool OnDragOver(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation Operation)`  
  Called during drag and drop when the the mouse is being dragged over a widget.

@param MyGeometry     The geometry of the widget receiving the event.
@param PointerEvent   The mouse event from when the drag occurred over the widget.
@param Operation      The drag operation over the widget.

@return 'true' to indicate that you handled the drag over operation.  Returning 'false' will cause the operation to continue to bubble up.
- `bool OnDrop(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation Operation)`  
  Called when the user is dropping something onto a widget.  Ends the drag and drop operation, even if no widget handles this.

@param MyGeometry     The geometry of the widget receiving the event.
@param PointerEvent   The mouse event from when the drag occurred over the widget.
@param Operation      The drag operation over the widget.

@return 'true' to indicate you handled the drop operation.
- `OnFocusLost(FFocusEvent InFocusEvent)`  
  Called when this widget loses focus.  This event does not bubble.

@param  InFocusEvent  FocusEvent
- `FEventReply OnFocusReceived(FGeometry MyGeometry, FFocusEvent InFocusEvent)`  
  Called when keyboard focus is given to this widget.  This event does not bubble.

@param MyGeometry The Geometry of the widget receiving the event
@param InFocusEvent  FocusEvent
@return  Returns whether the event was handled, along with other possible actions
- `OnInitialized()`  
  Called once only at game time on non-template instances.
While Construct/Destruct pertain to the underlying Slate, this is called only once for the UUserWidget.
If you have one-time things to establish up-front (like binding callbacks to events on BindWidget properties), do so here.
- `FEventReply OnKeyChar(FGeometry MyGeometry, FCharacterEvent InCharacterEvent)`  
  Called after a character is entered while this widget has focus

@param MyGeometry The Geometry of the widget receiving the event
@param  InCharacterEvent  Character event
@return  Returns whether the event was handled, along with other possible actions
- `FEventReply OnKeyDown(FGeometry MyGeometry, FKeyEvent InKeyEvent)`  
  Called after a key (keyboard, controller, ...) is pressed when this widget has focus (this event bubbles if not handled)

@param MyGeometry The Geometry of the widget receiving the event
@param  InKeyEvent  Key event
@return  Returns whether the event was handled, along with other possible actions
- `FEventReply OnKeyUp(FGeometry MyGeometry, FKeyEvent InKeyEvent)`  
  Called after a key (keyboard, controller, ...) is released when this widget has focus

@param MyGeometry The Geometry of the widget receiving the event
@param  InKeyEvent  Key event
@return  Returns whether the event was handled, along with other possible actions
- `FEventReply OnMotionDetected(FGeometry MyGeometry, FMotionEvent InMotionEvent)`  
  Called when motion is detected (controller or device)
e.g. Someone tilts or shakes their controller.

@param MyGeometry    The geometry of the widget receiving the event.
@param MotionEvent   The motion event generated
- `FEventReply OnMouseButtonDoubleClick(FGeometry InMyGeometry, FPointerEvent InMouseEvent)`  
  Called when a mouse button is double clicked.  Override this in derived classes.

@param  InMyGeometry  Widget geometry
@param  InMouseEvent  Mouse button event
@return  Returns whether the event was handled, along with other possible actions
- `FEventReply OnMouseButtonDown(FGeometry MyGeometry, FPointerEvent MouseEvent)`  
  The system calls this method to notify the widget that a mouse button was pressed within it. This event is bubbled.

@param MyGeometry The Geometry of the widget receiving the event
@param MouseEvent Information about the input event
@return Whether the event was handled along with possible requests for the system to take action.
- `FEventReply OnMouseButtonUp(FGeometry MyGeometry, FPointerEvent MouseEvent)`  
  The system calls this method to notify the widget that a mouse button was release within it. This event is bubbled.

@param MyGeometry The Geometry of the widget receiving the event
@param MouseEvent Information about the input event
@return Whether the event was handled along with possible requests for the system to take action.
- `OnMouseCaptureLost()`  
  Called when mouse capture is lost if it was owned by this widget.
- `OnMouseEnter(FGeometry MyGeometry, FPointerEvent MouseEvent)`  
  The system will use this event to notify a widget that the cursor has entered it. This event is NOT bubbled.

@param MyGeometry The Geometry of the widget receiving the event
@param MouseEvent Information about the input event
- `OnMouseLeave(FPointerEvent MouseEvent)`  
  The system will use this event to notify a widget that the cursor has left it. This event is NOT bubbled.

@param MouseEvent Information about the input event
- `FEventReply OnMouseMove(FGeometry MyGeometry, FPointerEvent MouseEvent)`  
  The system calls this method to notify the widget that a mouse moved within it. This event is bubbled.

@param MyGeometry The Geometry of the widget receiving the event
@param MouseEvent Information about the input event
@return Whether the event was handled along with possible requests for the system to take action.
- `FEventReply OnMouseWheel(FGeometry MyGeometry, FPointerEvent MouseEvent)`  
  Called when the mouse wheel is spun. This event is bubbled.

@param  MouseEvent  Mouse event
@return  Returns whether the event was handled, along with other possible actions
- `OnPaint(FPaintContext& Context) const`
- `FEventReply OnPreviewKeyDown(FGeometry MyGeometry, FKeyEvent InKeyEvent)`  
  Called after a key (keyboard, controller, ...) is pressed when this widget or a child of this widget has focus
If a widget handles this event, OnKeyDown will *not* be passed to the focused widget.

This event is primarily to allow parent widgets to consume an event before a child widget processes
it and it should be used only when there is no better design alternative.

@param MyGeometry The Geometry of the widget receiving the event
@param  InKeyEvent  Key event
@return  Returns whether the event was handled, along with other possible actions
- `FEventReply OnPreviewMouseButtonDown(FGeometry MyGeometry, FPointerEvent MouseEvent)`  
  Just like OnMouseButtonDown, but tunnels instead of bubbling.
If this event is handled, OnMouseButtonDown will not be sent.

Use this event sparingly as preview events generally make UIs more
difficult to reason about.

@param MyGeometry The Geometry of the widget receiving the event
@param MouseEvent Information about the input event
@return Whether the event was handled along with possible requests for the system to take action.
- `OnRemovedFromFocusPath(FFocusEvent InFocusEvent)`  
  If focus is lost on on this widget or on a child widget and this widget is
no longer part of the focus path.

@param  InFocusEvent  FocusEvent
- `FEventReply OnTouchEnded(FGeometry MyGeometry, FPointerEvent InTouchEvent)`  
  Called when a touchpad touch is ended (finger lifted)

@param MyGeometry    The geometry of the widget receiving the event.
@param InTouchEvent  The touch event generated
- `FEventReply OnTouchFirstMove(FGeometry MyGeometry, FPointerEvent InTouchEvent)`  
  Called when a touchpad touch is first moved (initial finger movement)

@param MyGeometry    The geometry of the widget receiving the event.
@param InTouchEvent   The touch event generated
- `FEventReply OnTouchForceChanged(FGeometry MyGeometry, FPointerEvent InTouchEvent)`  
  Called when a touchpad force has changed (user pressed down harder or let up)

@param MyGeometry    The geometry of the widget receiving the event.
@param InTouchEvent   The touch event generated
- `FEventReply OnTouchGesture(FGeometry MyGeometry, FPointerEvent GestureEvent)`  
  Called when the user performs a gesture on trackpad. This event is bubbled.

@param MyGeometry     The geometry of the widget receiving the event.
@param  GestureEvent  gesture event
@return  Returns whether the event was handled, along with other possible actions
- `FEventReply OnTouchMoved(FGeometry MyGeometry, FPointerEvent InTouchEvent)`  
  Called when a touchpad touch is moved  (finger moved)

@param MyGeometry    The geometry of the widget receiving the event.
@param InTouchEvent  The touch event generated
- `FEventReply OnTouchStarted(FGeometry MyGeometry, FPointerEvent InTouchEvent)`  
  Called when a touchpad touch is started (finger down)

@param MyGeometry    The geometry of the widget receiving the event.
@param InTouchEvent  The touch event generated
- `float32 PauseAnimation(const UWidgetAnimation InAnimation)`  
  Pauses an already running animation in this widget

@param The name of the animation to pause
@return the time point the animation was at when it was paused, relative to its start position.  Use this as the StartAtTime when you trigger PlayAnimation.
- `FWidgetAnimationHandle PlayAnimation(UWidgetAnimation InAnimation, float32 StartAtTime = 0.000000, int NumLoopsToPlay = 1, EUMGSequencePlayMode PlayMode = EUMGSequencePlayMode :: Forward, float32 PlaybackSpeed = 1.000000, bool bRestoreState = false)`  
  Plays an animation in this widget a specified number of times

@param InAnimation The animation to play
@param StartAtTime The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation.
@param NumLoopsToPlay The number of times to loop this animation (0 to loop indefinitely)
@param PlaybackSpeed The speed at which the animation should play
@param PlayMode Specifies the playback mode
@param bRestoreState Restores widgets to their pre-animated state when the animation stops
- `FWidgetAnimationHandle PlayAnimationForward(UWidgetAnimation InAnimation, float32 PlaybackSpeed = 1.000000, bool bRestoreState = false)`  
  Plays an animation on this widget relative to it's current state forward.  You should use this version in situations where
say a user can click a button and that causes a panel to slide out, and you want to reverse that same animation to begin sliding
in the opposite direction.

@param InAnimation The animation to play
@param PlayMode Specifies the playback mode
@param PlaybackSpeed The speed at which the animation should play
@param bRestoreState Restores widgets to their pre-animated state when the animation stops
- `FWidgetAnimationHandle PlayAnimationReverse(UWidgetAnimation InAnimation, float32 PlaybackSpeed = 1.000000, bool bRestoreState = false)`  
  Plays an animation on this widget relative to it's current state in reverse.  You should use this version in situations where
say a user can click a button and that causes a panel to slide out, and you want to reverse that same animation to begin sliding
in the opposite direction.

@param InAnimation The animation to play
@param PlayMode Specifies the playback mode
@param PlaybackSpeed The speed at which the animation should play
@param bRestoreState Restores widgets to their pre-animated state when the animation stops
- `FWidgetAnimationHandle PlayAnimationTimeRange(UWidgetAnimation InAnimation, float32 StartAtTime = 0.000000, float32 EndAtTime = 0.000000, int NumLoopsToPlay = 1, EUMGSequencePlayMode PlayMode = EUMGSequencePlayMode :: Forward, float32 PlaybackSpeed = 1.000000, bool bRestoreState = false)`  
  Plays an animation in this widget a specified number of times stopping at a specified time

@param InAnimation The animation to play
@param StartAtTime The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation.
@param EndAtTime The absolute time in the animation where to stop, this is only considered in the last loop.
@param NumLoopsToPlay The number of times to loop this animation (0 to loop indefinitely)
@param PlayMode Specifies the playback mode
@param PlaybackSpeed The speed at which the animation should play
@param bRestoreState Restores widgets to their pre-animated state when the animation stops
- `PreConstruct(bool IsDesignTime)`  
  Called by both the game and the editor.  Allows users to run initial setup for their widgets to better preview
the setup in the designer and since generally that same setup code is required at runtime, it's called there
as well.

**WARNING**
This is intended purely for cosmetic updates using locally owned data, you can not safely access any game related
state, if you call something that doesn't expect to be run at editor time, you may crash the editor.

In the event you save the asset with blueprint code that causes a crash on evaluation.  You can turn off
PreConstruct evaluation in the Widget Designer settings in the Editor Preferences.
- `float32 QueuePauseAnimation(const UWidgetAnimation InAnimation)`  
  Pauses an already running animation in this widget

@param The name of the animation to pause
@return the time point the animation was at when it was paused, relative to its start position.  Use this as the StartAtTime when you trigger PlayAnimation.
- `QueuePlayAnimation(UWidgetAnimation InAnimation, float32 StartAtTime = 0.000000, int NumLoopsToPlay = 1, EUMGSequencePlayMode PlayMode = EUMGSequencePlayMode :: Forward, float32 PlaybackSpeed = 1.000000, bool bRestoreState = false)`  
  Plays an animation in this widget a specified number of times

@param InAnimation The animation to play
@param StartAtTime The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation.
@param NumLoopsToPlay The number of times to loop this animation (0 to loop indefinitely)
@param PlaybackSpeed The speed at which the animation should play
@param PlayMode Specifies the playback mode
@param bRestoreState Restores widgets to their pre-animated state when the animation stops
- `QueuePlayAnimationForward(UWidgetAnimation InAnimation, float32 PlaybackSpeed = 1.000000, bool bRestoreState = false)`  
  Plays an animation on this widget relative to it's current state forward.  You should use this version in situations where
say a user can click a button and that causes a panel to slide out, and you want to reverse that same animation to begin sliding
in the opposite direction.

@param InAnimation The animation to play
@param PlayMode Specifies the playback mode
@param PlaybackSpeed The speed at which the animation should play
@param bRestoreState Restores widgets to their pre-animated state when the animation stops
- `QueuePlayAnimationReverse(UWidgetAnimation InAnimation, float32 PlaybackSpeed = 1.000000, bool bRestoreState = false)`  
  Plays an animation on this widget relative to it's current state in reverse.  You should use this version in situations where
say a user can click a button and that causes a panel to slide out, and you want to reverse that same animation to begin sliding
in the opposite direction.

@param InAnimation The animation to play
@param PlayMode Specifies the playback mode
@param PlaybackSpeed The speed at which the animation should play
@param bRestoreState Restores widgets to their pre-animated state when the animation stops
- `QueuePlayAnimationTimeRange(UWidgetAnimation InAnimation, float32 StartAtTime = 0.000000, float32 EndAtTime = 0.000000, int NumLoopsToPlay = 1, EUMGSequencePlayMode PlayMode = EUMGSequencePlayMode :: Forward, float32 PlaybackSpeed = 1.000000, bool bRestoreState = false)`  
  Plays an animation in this widget a specified number of times stopping at a specified time

@param InAnimation The animation to play
@param StartAtTime The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation.
@param EndAtTime The absolute time in the animation where to stop, this is only considered in the last loop.
@param NumLoopsToPlay The number of times to loop this animation (0 to loop indefinitely)
@param PlayMode Specifies the playback mode
@param PlaybackSpeed The speed at which the animation should play
@param bRestoreState Restores widgets to their pre-animated state when the animation stops
- `QueueStopAllAnimations()`  
  Stop All actively running animations.
- `QueueStopAnimation(const UWidgetAnimation InAnimation)`  
  Stops an already running animation in this widget

@param The name of the animation to stop
- `RegisterInputComponent()`  
  ListenForInputAction will automatically Register an Input Component with the player input system.
If you however, want to Pause and Resume, listening for a set of actions, the best way is to use
UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.
- `RemoveExtension(UUserWidgetExtension InExtension)`  
  Remove the extension.
- `RemoveExtensions(TSubclassOf<UUserWidgetExtension> InExtensionType)`  
  Remove all extensions of the requested type.
- `ReverseAnimation(const UWidgetAnimation InAnimation)`  
  If an animation is playing, this function will reverse the playback.

@param InAnimation The playing animation that we want to reverse
- `SetAlignmentInViewport(FVector2D Alignment)`
- `SetAnchorsInViewport(FAnchors Anchors)`
- `SetAnimationCurrentTime(const UWidgetAnimation InAnimation, float32 InTime)`  
  Sets the current time of the animation in this widget. Does not change state.

@param The name of the animation to get the current time for
@param The current time of the animation.
- `SetColorAndOpacity(FLinearColor InColorAndOpacity)`  
  Sets the tint of the widget, this affects all child widgets.

@param InColorAndOpacity     The tint to apply to all child widgets.
- `bool SetDesiredFocusWidget(UWidget Widget)`  
  Sets the child Widget that should receive focus when this UserWidget gets focus.

@param Widget Widget to forward the focus to when this widget receives focus
@return True if the Widget is set properly. Will return false if it's not a child of this UserWidget.
- `SetDesiredSizeInViewport(FVector2D Size)`
- `SetForegroundColor(FSlateColor InForegroundColor)`  
  Sets the foreground color of the widget, this is inherited by sub widgets.  Any color property
that is marked as inherit will use this color.

@param InForegroundColor     The foreground color.
- `SetInputActionBlocking(bool bShouldBlock)`
- `SetInputActionPriority(int NewPriority)`
- `SetNumLoopsToPlay(const UWidgetAnimation InAnimation, int NumLoopsToPlay)`  
  Changes the number of loops to play given a playing animation

@param InAnimation The animation that is already playing
@param NumLoopsToPlay The number of loops to play. (0 to loop indefinitely)
- `SetOwningPlayer(APlayerController LocalPlayerController)`  
  Sets the local player associated with this UI via PlayerController reference.
@param LocalPlayerController The PlayerController of the local player you want to be the conceptual owner of this UI.
- `SetPadding(FMargin InPadding)`  
  Sets the padding for the user widget, putting a larger gap between the widget border and it's root widget.
- `SetPlaybackSpeed(const UWidgetAnimation InAnimation, float32 PlaybackSpeed = 1.000000)`  
  Changes the playback rate of a playing animation

@param InAnimation The animation that is already playing
@param PlaybackRate Playback rate multiplier (1 is default)
- `SetPositionInViewport(FVector2D Position, bool bRemoveDPIScale = true)`  
  Sets the widgets position in the viewport.
@param Position The 2D position to set the widget to in the viewport.
@param bRemoveDPIScale If you've already calculated inverse DPI, set this to false.
Otherwise inverse DPI is applied to the position so that when the location is scaled
by DPI, it ends up in the expected position.
- `StopAllAnimations()`  
  Stop All actively running animations.

@param The name of the animation to stop
- `StopAnimation(const UWidgetAnimation InAnimation)`  
  Stops an already running animation in this widget

@param The name of the animation to stop
- `StopAnimationsAndLatentActions()`  
  Cancels any pending Delays or timer callbacks for this widget, and stops all active animations on the widget.
- `StopListeningForAllInputActions()`  
  Stops listening to all input actions, and unregisters the input component with the player controller.
- `StopListeningForInputAction(FName ActionName, EInputEvent EventType)`  
  Removes the binding for a particular action's callback.
- `Tick(FGeometry MyGeometry, float InDeltaTime)`  
  Ticks this widget.  Override in derived classes, but always call the parent implementation.

@param  MyGeometry The space allotted for this widget
@param  InDeltaTime  Real time passed since last tick
- `UnbindAllFromAnimationFinished(UWidgetAnimation Animation)`
- `UnbindAllFromAnimationStarted(UWidgetAnimation Animation)`
- `UnbindFromAnimationFinished(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate = FWidgetAnimationDynamicEvent ( ))`  
  Unbind an animation finished delegate.
@param Animation the animation to listen for starting or finishing.
@param Delegate the delegate to call when the animation's state changes
- `UnbindFromAnimationStarted(UWidgetAnimation Animation, FWidgetAnimationDynamicEvent Delegate = FWidgetAnimationDynamicEvent ( ))`  
  Unbind an animation started delegate.
@param Animation the animation to listen for starting or finishing.
@param Delegate the delegate to call when the animation's state changes
- `UnregisterInputComponent()`  
  StopListeningForAllInputActions will automatically Register an Input Component with the player input system.
If you however, want to Pause and Resume, listening for a set of actions, the best way is to use
UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.

---

