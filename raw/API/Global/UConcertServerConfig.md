### UConcertServerConfig


**属性**:

- `FString DefaultSessionName [Name of the default session created on the server.
Can be specified on the server cmd with `-CONCERTSESSION=`]`
- `FConcertSessionSettings DefaultSessionSettings [Default server session settings]`
- `FString DefaultSessionToRestore [Name of the default session to restore on the server.
Set the name of the desired save to restore its content in your session.
Leave this blank if you want to create an empty session.
Can be specified on the editor cmd with `-CONCERTSESSIONTORESTORE=`.]`
- `FConcertEndpointSettings EndpointSettings [Endpoint settings passed down to endpoints on creation]`
- `int NumSessionsToKeep [Number of archived sessions to keep when booting, or <0 to keep all archived sessions]`
- `FString ServerName [Name of the server, or empty to use the default name.
Can be specified on the server cmd with `-CONCERTSERVER=`]`
- `FConcertServerSettings ServerSettings [Server & server session settings]`
- `bool bCleanWorkingDir [Clean server sessions working directory when booting
Can be specified on the server cmd with `-CONCERTCLEAN`]`

---

