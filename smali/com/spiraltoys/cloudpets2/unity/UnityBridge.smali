.class public Lcom/spiraltoys/cloudpets2/unity/UnityBridge;
.super Ljava/lang/Object;
.source "UnityBridge.java"


# static fields
.field private static mInstance:Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

.field private static mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;


# instance fields
.field private mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 36
    return-void
.end method

.method public static dismissUnity()V
    .locals 2
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/UnityCloseRequestedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/UnityCloseRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/spiraltoys/cloudpets2/unity/UnityBridge;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mInstance:Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mInstance:Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    .line 43
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mInstance:Lcom/spiraltoys/cloudpets2/unity/UnityBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getUnityPlayerActivity()Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;

    return-object v0
.end method

.method public static initializeBridge()V
    .locals 0
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public static notifyBluePawPressed()V
    .locals 3

    .prologue
    .line 185
    const-string v0, "Bridge"

    const-string v1, "BluePawPressed"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static notifyBluetoothDisabled()V
    .locals 3
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 162
    const-string v0, "Bridge"

    const-string v1, "BluetoothDisabled"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static notifyBluetoothUnsupported()V
    .locals 3
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 167
    const-string v0, "Bridge"

    const-string v1, "BluetoothUnsupported"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static notifyConnected()V
    .locals 3
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 177
    const-string v0, "Bridge"

    const-string v1, "Connected"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static notifyConnecting()V
    .locals 3
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 172
    const-string v0, "Bridge"

    const-string v1, "Connecting"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private static notifyFailure()V
    .locals 3
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 195
    const-string v0, "Bridge"

    const-string v1, "AsyncCallCompleted"

    const-string v2, "Failure"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static notifyRedPawPressed()V
    .locals 3

    .prologue
    .line 181
    const-string v0, "Bridge"

    const-string v1, "RedPawPressed"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private static notifySuccess()V
    .locals 3
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 190
    const-string v0, "Bridge"

    const-string v1, "AsyncCallCompleted"

    const-string v2, "Success"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static notifySystemBackPressed()V
    .locals 3

    .prologue
    .line 157
    const-string v0, "Bridge"

    const-string v1, "SystemBackPressed"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static onUnityReady()V
    .locals 2
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/UnityLoadedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/UnityLoadedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public static playAudioFromSlot(I)V
    .locals 4
    .param p0, "slotNumber"    # I
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "skipping playAudioFromSlot(). Last command is not finished yet."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->getInstance()Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyFailure()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->values()[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    move-result-object v0

    aget-object v0, v0, p0

    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->getUnityPlayerActivity()Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->getRelativeToyVolume(Landroid/content/Context;)D

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->triggerSlotPlayback(Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;DZ)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0
.end method

.method public static setGameMode(Z)V
    .locals 2
    .param p0, "isGameMode"    # Z
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "skipping setGameMode(). Last command is not finished yet."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->getInstance()Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyFailure()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeAndStopPlaybackLoop(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0
.end method

.method public static startScene(Ljava/lang/String;)V
    .locals 2
    .param p0, "sceneName"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "Bridge"

    const-string v1, "StartScene"

    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static writeAudioToSlot(Ljava/lang/String;I)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "slotNumber"    # I
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "skipping writeAudioToSlot(). Last command is not finished yet."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->getInstance()Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyFailure()V

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->values()[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->sendGameAudioToToy(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->getInstance()Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    iput-object v1, v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 107
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 113
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifySuccess()V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 120
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;

    .prologue
    .line 146
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mPendingCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 148
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyFailure()V

    .line 150
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;

    .prologue
    .line 123
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge$1;->$SwitchMap$com$spiraltoys$cloudpets2$toy$event$ToyEventGameModeButtonPress$Button:[I

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;->getButton()Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyRedPawPressed()V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyBluePawPressed()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyBluetoothDisabled()V

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 143
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyConnected()V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :cond_4
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifyConnecting()V

    goto :goto_0
.end method
