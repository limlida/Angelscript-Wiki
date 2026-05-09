### ASpectatorBeaconClient


A beacon client used for making reservations with an existing game session

**方法**:

- `ClientCancelReservationResponse(ESpectatorReservationResult ReservationResponse)`  
  Response from the host session after making a cancellation request

@param ReservationResponse response from server
- `ClientReservationResponse(ESpectatorReservationResult ReservationResponse)`  
  Response from the host session after making a reservation request

@param ReservationResponse response from server
- `ClientSendReservationFull()`  
  Response from the host session that the reservation is full
- `ClientSendReservationUpdates(int NumRemainingReservations)`  
  Response from the host session that the reservation count has changed

@param NumRemainingReservations number of slots remaining until a full session
- `ServerCancelReservationRequest(FUniqueNetIdRepl Spectator)`  
  Tell the server to cancel a pending or existing reservation

@param Spectator id of the spectator for the reservation to cancel

---

