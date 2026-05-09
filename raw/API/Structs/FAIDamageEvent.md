### FAIDamageEvent


**属性**:

- `float32 Amount [Damage taken by DamagedActor.
    @Note 0-damage events do not get ignored]`
- `AActor DamagedActor [Damaged actor]`
- `FVector HitLocation [Event's additional spatial information
    @TODO document]`
- `AActor Instigator [Actor that instigated damage. Can be None]`
- `FVector Location [Event's "Location", or what will be later treated as the perceived location for this sense.
    If not set, HitLocation will be used, if that is unset too DamagedActor's location]`
- `FName Tag [Optional named identifier for the damage.]`


**方法**:

- `FAIDamageEvent& opAssign(FAIDamageEvent Other)`

---

