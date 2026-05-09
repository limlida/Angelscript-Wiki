### UMovieSceneEventTrack


Implements a movie scene track that triggers discrete events during playback.

**属性**:

- `EFireEventsAtPosition EventPosition [Defines where in the evaluation to trigger events]`
- `bool bFireEventsWhenBackwards [If events should be fired when passed playing the sequence backwards.]`
- `bool bFireEventsWhenForwards [If events should be fired when passed playing the sequence forwards.]`


**方法**:

- `UMovieSceneEventRepeaterSection AddEventRepeaterSection()`  
  Create a new event repeater section for the given track

@param Track        The event track to add the new event repeater section to
@return The newly created event repeater section
- `UMovieSceneEventTriggerSection AddEventTriggerSection()`  
  Create a new event trigger section for the given track

@param Track        The event track to add the new event trigger section to
@return The newly created event trigger section

---

