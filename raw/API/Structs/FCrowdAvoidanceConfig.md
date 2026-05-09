### FCrowdAvoidanceConfig


Crowd manager is responsible for handling crowds using Detour (Recast library)

Agents will respect navmesh for all steering and avoidance updates,
but it's slower than AvoidanceManager solution (RVO, cares only about agents)

All agents will operate on the same navmesh data, which will be picked from
navigation system defaults (UNavigationSystemV1::SupportedAgents[0])

To use it, you have to add CrowdFollowingComponent to your agent
(usually: replace class of PathFollowingComponent in AIController by adding
 those lines in controller's constructor

 ACrowdAIController::ACrowdAIController(const FObjectInitializer& ObjectInitializer)
     : Super(ObjectInitializer.SetDefaultSubobjectClass<UCrowdFollowingComponent>(TEXT("PathFollowingComponent")))

 or simply add both components and switch move requests between them)

Actors that should be avoided, but are not being simulated by crowd (like players)
should implement CrowdAgentInterface AND register/unregister themselves with crowd manager:

 UCrowdManager* CrowdManager = UCrowdManager::GetCurrent(this);
 if (CrowdManager)
 {
    CrowdManager->RegisterAgent(this);
 }

 Check flags in FCrowdDebug namespace (CrowdManager.cpp) for debugging options.

**属性**:

- `uint8 AdaptiveDepth [adaptive sampling: number of iterations at best velocity]`
- `uint8 AdaptiveDivisions [adaptive sampling: number of divisions per ring]`
- `uint8 AdaptiveRings [adaptive sampling: number of rings]`
- `float32 CurrentVelocityWeight []`
- `uint8 CustomPatternIdx [index in SamplingPatterns array or 0xff for adaptive sampling]`
- `float32 DesiredVelocityWeight []`
- `float32 ImpactTimeRange []`
- `float32 ImpactTimeWeight []`
- `float32 SideBiasWeight []`
- `float32 VelocityBias []`


**方法**:

- `FCrowdAvoidanceConfig& opAssign(FCrowdAvoidanceConfig Other)`

---

