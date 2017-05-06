.class public Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;
.super Ljava/lang/Object;
.source "ToyConnectionManager.java"


# instance fields
.field private mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field private mShouldAutoConnect:Z

.field private mToyConfigId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "toyConfigId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mToyConfigId:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 19
    return-void
.end method

.method private updateToyConnection()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mToyConfigId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mShouldAutoConnect:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mToyConfigId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->connectToToy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mToyConfigId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->disconnectFromToy()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0
.end method


# virtual methods
.method public getLastToyState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->updateToyConnection()V

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 41
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "stayConnected"    # Z

    .prologue
    .line 22
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mShouldAutoConnect:Z

    .line 25
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->disconnectFromToyEventually()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 27
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->mShouldAutoConnect:Z

    .line 32
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->updateToyConnection()V

    .line 33
    return-void
.end method
