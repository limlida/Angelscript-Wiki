### UPoseSearchInteractionSubsystem


Execution model and threading details:


- by calling UPoseSearchInteractionLibrary::MotionMatchInteraction_Pure(TArray<FPoseSearchInteractionAvailability> Availabilities, UObject* AnimInstance), characters publish their availabilities
  to partecipate in interactions to the UPoseSearchInteractionSubsystem
- UPoseSearchInteractionSubsystem::Tick processes those FPoseSearchInteractionAvailability(s) and creates/updates UE::PoseSearch::FInteractionIsland. For each FInteractionIsland it injects
  a tick prerequisite via FInteractionIsland::InjectToActor (that calls AddPrerequisite) to all the Actors in the same island.
  NoTe: the next frame the execution will be:
                      for each island[k]
                      {
                              for each Actor[k][i]
                              {
                                      Tick all the TickActorComponents prerequisites, such as CharacterMovementComponent[k][i] (or Mover) in parallel
                              }

                              Tick Island[k].PreTickFunction (that eventually generates the trajectories with all the updated CMCs or Mover)

                              Tick Actor[k][0].SkeletalMeshComponent (or AnimNextComponent, that performs the MotionMatchInteraction queries for all the involved actors via DoSearch_AnyThread)

                              Tick Island[k].PostTickFunction (currently just a threading fence for the execution of all the other SkeletalMeshComponent(s) or AnimNextComponent(s))

                              for each Actor[k][i]
                              {
                                      if (i != 0)
                                              Tick SkeletalMeshComponent[k][i] (or AnimNextComponent(s) that DoSearch_AnyThread get the cached result calculated by Tick Actor[k][0].SkeletalMeshComponent) in parallel
                              }
                      }
- next frame UPoseSearchInteractionLibrary::MotionMatchInteraction_Pure(TArray<FPoseSearchInteractionAvailability> Availabilities, UObject* AnimInstance), with the context of all the published
  availabilities and created islands, will find the associated FInteractionIsland to the AnimInstance and call FInteractionIsland::DoSearch_AnyThread
  (via UPoseSearchInteractionSubsystem::Query_AnyThread) that will perform ALL (YES, ALL, so the bigger the island the slower the execution) the motion matching searches
  for all the possible Actors / databases / Roles combinations, and populate FInteractionIsland::SearchResults with ALL the results for the island.
  Ultimately the MotionMatchInteraction_Pure will return the SearchResults associated to the requesting AnimInstance with information about what animation to play
  at what time with wich Role.
---

