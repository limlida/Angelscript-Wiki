### UViewportStatsSubsystem


The Viewport Stats Subsystem offers the ability to add messages to the current
viewport such as "LIGHTING NEEDS TO BE REBUILT" and "BLUEPRINT COMPILE ERROR".

Example usage:

     if (UViewportStatsSubsystem* ViewportSubsystem = GetWorld()->GetSubsystem<UViewportStatsSubsystem>())
     {
             // Bind a member function delegate to the subsystem...
             FViewportDisplayCallback Callback;
             Callback.BindDynamic(this, &UCustomClass::DisplayViewportMessage);
             ViewportSubsystem->AddDisplayDelegate(Callback);

             // ... or use inline lambda functions
             ViewportSubsystem->AddDisplayDelegate([](FText& OutText, FLinearColor& OutColor)
             {
                     // Some kind of state management
                     OutText = NSLOCTEXT("FooNamespace", "Blarg", "Display message here");
                     OutColor = FLinearColor::Red;
                     return bShouldDisplay;
             });
     }

**方法**:

- `int AddDisplayDelegate(FViewportDisplayCallback Delegate = FViewportDisplayCallback ( ))`  
  Add a dynamic delegate to the display subsystem.

@param Callback       The callback the subsystem will use to determine if a message should be displayed or not
                                      Signature of callbacks should be: bool(FText& OutTest, FLinearColor& OutColor)
- `AddTimedDisplay(FText Text, FLinearColor Color = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ), float32 Duration = 0.000000, FVector2D DisplayOffset = FVector2D ( ))`  
  Add a message to be displayed on the viewport of this world

@param Text           The text to be displayed
@param Color          Color of the text to be displayed
@param Duration       How long the text will be on screen, if 0 then it will stay indefinitely
@param DisplayOffset  A position offset that the message should use when displayed.
- `RemoveDisplayDelegate(int IndexToRemove)`  
  Remove a callback function from the display subsystem

@param IndexToRemove  The index in the DisplayDelegates array to remove.
                                              This is the value returned from AddDisplayDelegate.

---

