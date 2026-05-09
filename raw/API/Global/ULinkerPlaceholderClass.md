### ULinkerPlaceholderClass


A utility class for the deferred dependency loader, used to stub in temporary
class references so we don't have to load blueprint resources for their class.
Holds on to references where this is currently being utilized, so we can
easily replace references to it later (once the real class is available).
---

