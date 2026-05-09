### UWorldConditionSchema


Describes the context data and allowed world conditions for a specific use case.

Each schema adds the context data they can provide in their class constructor. This allows
the derived classes to add more data as needed.

    UCLASS()
    class UFantasticWorldConditionSchema : public UWorldConditionSchema
    {
            GENERATED_BODY()
    public:
            UFantasticWorldConditionSchema::UFantasticWorldConditionSchema(const FObjectInitializer& ObjectInitializer)
                    : Super(ObjectInitializer)
            {
                    ActorRef = AddContextDataDesc(TEXT("Actor"), AActor::StaticClass(), EWorldConditionContextDataType::Dynamic);
            }

            // For convenience, when the schema is known, makes it easy to set the context data.
            FWorldConditionContextDataRef GetActorRef() const { return ActorRef; }

    protected:
            // Filter condition classes that make sense for this context.
            virtual bool IsStructAllowed(const UScriptStruct* InScriptStruct) const override;
            {
                    return Super::IsStructAllowed(InScriptStruct)
                            || InScriptStruct->IsChildOf(TBaseStructure<FFantasticWorldConditionBase>::Get());
            }

            FWorldConditionContextDataRef ActorRef;
    };
---

