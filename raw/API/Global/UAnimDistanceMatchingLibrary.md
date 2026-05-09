### UAnimDistanceMatchingLibrary


Library of techniques for driving animations by distance metrics rather than by time.
These techniques can be effective at compensating for differences between character movement and authored motion in the animations.
Distance Matching effectively changes the play rate of the animation to keep the feet from sliding. It's common to clamp the resulting
play rate to avoid animations playing too slow or too fast and to use techniques such as Stride Warping to make up the difference.
---

