### UConcertClientConfig


**属性**:

- `FConcertClientSettings ClientSettings [Client & client session settings]`
- `FString DefaultSaveSessionAs [If this client create the default session, should the session data be saved when it's deleted.
Set the name desired for the save and the session data will be moved in that save when the session is deleted
Leave this blank if you don't want to save the session data.
Can be specified on the editor cmd with `-CONCERTSAVESESSIONAS=`.]`
- `FString DefaultServerURL [Default server url (just a name for now) to look for on auto or default connect.
Can be specified on the editor cmd with `-CONCERTSERVER=`.]`
- `FString DefaultSessionName [Default session name to look for on auto connect or default connect.
Can be specified on the editor cmd with `-CONCERTSESSION=`.]`
- `FString DefaultSessionToRestore [If this client create the default session, should the session restore a saved session.
Set the name of the desired save to restore its content in your session.
Leave this blank if you want to create an empty session.
Can be specified on the editor cmd with `-CONCERTSESSIONTORESTORE=`.]`
- `FConcertEndpointSettings EndpointSettings [Endpoint settings passed down to endpoints on creation]`
- `FGameplayTagContainer ReadOnlyAssignment [A list of roles that should enter multi-user in read-only mode. If a role is in both SendOnlyAssignment and
ReadOnlyassignment then the client will enter the session as full read/write.]`
- `FGameplayTagContainer SendOnlyAssignment [A list of roles that should enter multi-user in send-only mode. If a role is in both SendOnlyAssignment and
ReadOnlyAssignment then the client will enter the session as full read/write.]`
- `EConcertServerType ServerType [Determines which server executable with be launched:
             Console -> UnrealMultiUserServer.exe
             Slate   -> UnrealMultiUserSlateServer.exe]`
- `FConcertSourceControlSettings SourceControlSettings []`
- `bool bAutoConnect [Automatically connect or create default session on default server.
Can be specified on the editor cmd with `-CONCERTAUTOCONNECT` or `-CONCERTAUTOCONNECT=<true/false>`.]`
- `bool bInstallEditorToolbarButton [True if the Multi-User module should install shortcut button and its drop-down menu in the level editor toolbar.]`
- `bool bRetryAutoConnectOnError [If auto-connect is on, retry connecting to the default server/session until it succeeds or the user cancels.
Can be specified on the editor cmd with `-CONCERTRETRYAUTOCONNECTONERROR` or `-CONCERTRETRYAUTOCONNECTONERROR=<true/false>`.]`
- `bool bShouldPromptForHotReloadOnLevel [Hot reload of a level happens automatically when level / sublevel is changed. This property allows users
to receive a prompt before hot reload occurs so that it does not interrupt the user in the current level.
Can be specified on the editor command with `-CONCERTSHOULDPROMPTFORHOTRELOAD`]`

---

