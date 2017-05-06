.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskSetLedState.java"


# static fields
.field private static final SUCCESS_SAFETY_DELAY:J = 0xfaL


# instance fields
.field private mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "command"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 24
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    return-object v0
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 4
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 50
    if-eqz p4, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-interface {v0, p0, v1, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 4
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 36
    const/4 v1, 0x5

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    .line 37
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->getLedState()B

    move-result v1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    .line 38
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->getPeriod()S

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;

    .line 39
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSetLedState;->getPeriod()S

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 43
    .local v0, "ledData":[B
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSetLedState;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->LED_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[B)Z

    .line 44
    return-void
.end method
