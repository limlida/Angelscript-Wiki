### FMovieSceneSequenceLoopCount


POD struct that represents a number of loops where -1 signifies infinite looping, 0 means no loops, etc
Defined as a struct rather than an int so a property type customization can be bound to it

**属性**:

- `int Value [Whether or not to loop playback. If Loop Exactly is chosen, you can specify the number of times to loop]`


**方法**:

- `FMovieSceneSequenceLoopCount& opAssign(FMovieSceneSequenceLoopCount Other)`

---

