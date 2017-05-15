.class public Lcom/spiraltoys/cloudpets2/toy/ToyManager;
.super Ljava/lang/Object;
.source "ToyManager.java"


# static fields
.field private static final LED_BLINK_INTERVAL_MS:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static connectToToy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "acceptAudio"    # Z

    .prologue
    .line 66
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    invoke-direct {v0, p0, p1, p2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static disconnectFromToy()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;-><init>(Z)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static disconnectFromToyEventually()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;-><init>(Z)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static exitGameModeAndStopPlaybackLoop()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeAndStopPlaybackLoop(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-class v2, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .line 40
    .local v0, "toyEventState":Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    goto :goto_0
.end method

.method public static pauseScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;->PAUSED:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;-><init>(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private static postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1
    .param p0, "toyCommand"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;

    .prologue
    .line 48
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static sendAudioToToy(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 3
    .param p0, "localAudioUri"    # Landroid/net/Uri;
    .param p1, "slot"    # Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .prologue
    const/4 v2, 0x1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-direct {v1, v2, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;-><init>(SI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    invoke-direct {v1, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;-><init>(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-direct {v1, v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static sendAudioToToyAndBlinkLed(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 10
    .param p0, "localAudioUri"    # Landroid/net/Uri;
    .param p1, "slot"    # Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .prologue
    const/4 v2, 0x1
    const-wide v6, 0x406fe00000000000L    # 255.0


    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-direct {v1, v2, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;-><init>(SI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    invoke-direct {v1, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;-><init>(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyLedState;->BLINKING:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyLedState;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z


    const-wide v8, 0x42c8000000000000L

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    mul-double v4, v8, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    invoke-direct {v1, v4}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v9, false
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    invoke-direct {v1, p1, v9}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z


    .line 118
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-direct {v1, v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static sendGameAudioToToy(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 3
    .param p0, "localAudioUri"    # Landroid/net/Uri;
    .param p1, "slot"    # Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .prologue
    const/4 v2, 0x1

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-direct {v1, v2, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;-><init>(SI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    invoke-direct {v1, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;-><init>(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-direct {v1, v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static setGameModeAndStopPlaybackLoop(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 3
    .param p0, "isGameModeOn"    # Z

    .prologue
    const/4 v2, 0x1

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-direct {v1, v2, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;-><init>(SI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-direct {v1, v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static setGameModeState(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1
    .param p0, "isGameModeOn"    # Z

    .prologue
    .line 130
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;-><init>(Z)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static setIdentifier(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static setLedState(Lcom/spiraltoys/cloudpets2/toy/ToyLedState;I)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1
    .param p0, "state"    # Lcom/spiraltoys/cloudpets2/toy/ToyLedState;
    .param p1, "period"    # I

    .prologue
    .line 122
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyLedState;I)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static setSpeakerVolume(D)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 4
    .param p0, "speakerVolume"    # D

    .prologue
    .line 185
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;-><init>(B)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static startLoopPlayback(SI)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1
    .param p0, "numberOfLoops"    # S
    .param p1, "audioLengthMs"    # I

    .prologue
    .line 174
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;-><init>(SI)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static startRecorder()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyLedState;->BLINKING:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyLedState;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandRecord;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandRecord;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-direct {v1, v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    return-object v1
.end method


.method public static startLullaby(Landroid/content/Context;Landroid/net/Uri;DJ)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lullabyAudioUri"    # Landroid/net/Uri;
    .param p2, "speakerVolume"    # D
    .param p4, "playbackDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 148
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 150
    .local v2, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 151
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 152
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 154
    .local v0, "audioFileDurationMs":I
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    invoke-direct {v3, v4}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;-><init>(Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    invoke-direct {v3, v4, v4}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;-><init>(SI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    sget-object v4, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_1:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    invoke-direct {v3, p1, v4}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;-><init>(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    invoke-direct {v3, v4}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;-><init>(B)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    long-to-float v4, p4

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-short v4, v4

    invoke-direct {v3, v4, v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;-><init>(SI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-direct {v3, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v3

    return-object v3

    .line 154
    .end local v0    # "audioFileDurationMs":I
    .end local v1    # "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    throw v3
.end method

.method public static startScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;->SCANNING:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;-><init>(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static stopScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;->STOPPED:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;-><init>(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static triggerSlotPlayback(Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;D)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1
    .param p0, "slot"    # Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
    .param p1, "volume"    # D

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->triggerSlotPlayback(Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;DZ)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static triggerSlotPlayback(Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;DZ)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 7
    .param p0, "slot"    # Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
    .param p1, "volume"    # D
    .param p3, "isSuccessDelayedUntilPlaybackCompletion"    # Z

    .prologue
    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "commandSequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;>;"
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    mul-double v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    invoke-direct {v1, p0, p3}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    invoke-direct {v1, v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static updateFirmware()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandUpdateFirmware;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandUpdateFirmware;-><init>()V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->postToyCommand(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    return-object v0
.end method
