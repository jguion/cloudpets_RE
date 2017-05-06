.class public Lcom/spiraltoys/cloudpets2/toy/ToyService;
.super Landroid/app/Service;
.source "ToyService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TOY_RECORDINGS_FOLDER_NAME:Ljava/lang/String; = "toy_recordings"


# instance fields
.field private mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

.field mScannerListener:Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;

.field private mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field private mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

.field private mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

.field mToyPeripheralListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

.field mToyTaskListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 58
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    .line 59
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    .line 61
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .line 62
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    .line 449
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService$3;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService$4;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScannerListener:Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;

    .line 492
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService$5;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyTaskListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 549
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyPeripheralListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->isSearching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/spiraltoys/cloudpets2/toy/ToyService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->onDisconnected(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "x2"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .param p3, "x3"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->shouldDownloadAudio(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setActivePeripheral(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    return-void
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    return-object v0
.end method

.method static synthetic access$502(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->getPeripheralDescription(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->isToyOfInterest(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->connectToy(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    return-void
.end method

.method private connectToy(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setActivePeripheral(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 194
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;

    invoke-direct {v1, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method private getPeripheralDescription(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    return-object v0
.end method

.method private isSearching()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isToyOfInterest(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDisconnected(Z)V
    .locals 2
    .param p1, "forget"    # Z

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->forget(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 405
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/ToyService$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService$2;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setActivePeripheral(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 413
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 415
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->clear()V

    .line 417
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->searchForToyOfInterest()V

    .line 418
    return-void
.end method

.method private searchForToyOfInterest()V
    .locals 4

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->isSearching()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->getDiscoveredPeripherals()Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "peripherals":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .line 146
    .local v0, "peripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->isToyOfInterest(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->stop()V

    .line 148
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->connectToy(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    goto :goto_0

    .line 154
    .end local v0    # "peripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .line 155
    .restart local v0    # "peripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 156
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->stop()V

    .line 157
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->connectToy(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    goto :goto_0

    .line 163
    .end local v0    # "peripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    :cond_5
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->start()V

    goto :goto_0
.end method

.method private setActivePeripheral(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyPeripheralListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->removeListener(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;)V

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .line 204
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyPeripheralListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->addListener(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;)V

    .line 207
    :cond_1
    return-void
.end method

.method private setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    .locals 4
    .param p1, "state"    # Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq v3, p1, :cond_0

    .line 125
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 127
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 128
    .local v1, "identifier":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-nez v3, :cond_2

    move-object v0, v2

    .line 129
    .local v0, "deviceAddress":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {v2, v1, v0, v3}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V

    .line 131
    .end local v0    # "deviceAddress":Ljava/lang/String;
    .end local v1    # "identifier":Ljava/lang/String;
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 128
    .restart local v1    # "identifier":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private shouldDownloadAudio(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Z
    .locals 4
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "oldState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .param p3, "newState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v1

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECORDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-ne p3, v2, :cond_0

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_RECORD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-ne p2, v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->shouldAcceptAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    .line 436
    .local v0, "toyEvent":Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;->getToyIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    if-nez v1, :cond_1

    .line 108
    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 113
    .local v0, "adapterState":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 114
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v1, v2, :cond_0

    .line 115
    :cond_3
    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    goto :goto_0

    .line 118
    :cond_4
    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    goto :goto_0
.end method

.method private validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z
    .locals 1
    .param p1, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p2, "requiresIdle"    # Z
    .param p3, "requiresConnection"    # Z

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZZ)Z

    move-result v0

    return v0
.end method

.method private validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZZ)Z
    .locals 3
    .param p1, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p2, "requiresIdle"    # Z
    .param p3, "requiresConnection"    # Z
    .param p4, "isSafeToExecuteDuringAudioPlayback"    # Z

    .prologue
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v1, v2, :cond_0

    .line 382
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postError(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V

    .line 397
    :goto_0
    return v0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    const v1, 0x7f080097

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postError(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_1
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq v1, v2, :cond_3

    .line 390
    :cond_2
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postError(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_3
    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v1

    if-nez v1, :cond_5

    .line 394
    :cond_4
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postError(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {v0, v2, v2, v1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V

    .line 99
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;)V
    .locals 4
    .param p1, "toyCommandConnect"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested toy with identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    :goto_1
    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested toy with address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;

    const-string v1, "Requested any toy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;

    const-string v1, "Already searching for this toy...don\'t interrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    :cond_3
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    .line 272
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->isToyOfInterest(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;

    const-string v1, "Already connected to the right toy (rebroadcast?)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v0, :cond_5

    .line 279
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;

    const-string v1, "Disconnecting from last toy first."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->clear()V

    .line 281
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_1

    .line 283
    :cond_5
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->searchForToyOfInterest()V

    goto :goto_1
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;)V
    .locals 3
    .param p1, "toyCommandDisconnect"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyOfInterest:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    .line 294
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->stop()V

    .line 296
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;->isToBePerformedImmediately()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->clear()V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandDisconnect;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;)V
    .locals 2
    .param p1, "toyCommandSendAudio"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    .prologue
    const/4 v1, 0x1

    .line 305
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;)V
    .locals 3
    .param p1, "toyCommandSetGameModeState"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;

    .prologue
    const/4 v2, 0x1

    .line 337
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetGameModeState;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;)V
    .locals 2
    .param p1, "toyCommandSetIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetIdentifier;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;)V
    .locals 2
    .param p1, "toyCommandSetLedState"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    .prologue
    const/4 v1, 0x1

    .line 313
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;)V
    .locals 2
    .param p1, "setScanStateCommand"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService$7;->$SwitchMap$com$spiraltoys$cloudpets2$toy$command$ToyCommandSetScanState$ScanState:[I

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState;->getScanState()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetScanState$ScanState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->start()V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->stop()V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->stop()V

    .line 244
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->forgetAll()V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;)V
    .locals 2
    .param p1, "toyCommandSetSpeakerVolume"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;

    .prologue
    const/4 v1, 0x1

    .line 353
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetSpeakerVolume;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;)V
    .locals 2
    .param p1, "toyCommandStartCommandSequence"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;

    .prologue
    const/4 v1, 0x1

    .line 361
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartCommandSequence;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;)V
    .locals 2
    .param p1, "toyCommandStartLoopPlayback"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;

    .prologue
    const/4 v1, 0x1

    .line 345
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandStartLoopPlayback;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;)V
    .locals 2
    .param p1, "toyCommandTriggerSlotPlayback"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;

    .prologue
    const/4 v1, 0x1

    .line 369
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandTriggerSlotPlayback;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandUpdateFirmware;)V
    .locals 2
    .param p1, "toyCommandUpdateFirmware"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandUpdateFirmware;

    .prologue
    const/4 v1, 0x1

    .line 321
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandUpdateFirmware;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->validateReady(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {p1, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandUpdateFirmware;->newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 71
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    if-nez v2, :cond_0

    .line 72
    new-instance v2, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mToyTaskListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    invoke-direct {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    .line 75
    :try_start_0
    new-instance v2, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScannerListener:Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;

    invoke-direct {v2, p0, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;-><init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;)V

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mScanner:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
    :try_end_0
    .catch Lcom/spiraltoys/cloudpets2/toy/ToyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->updateState()V

    .line 88
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lcom/spiraltoys/cloudpets2/toy/ToyException;
    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    goto :goto_0
.end method

.method public postError(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {v0, v1, p1, p2}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyState;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V

    .line 228
    return-void
.end method

.method public postEvent(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "isSticky"    # Z

    .prologue
    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/ToyService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method
