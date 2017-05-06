.class public abstract Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.super Ljava/lang/Object;
.source "ToyTask.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    }
.end annotation


# instance fields
.field private final mDummyListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

.field private mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

.field private mPeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 1
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mDummyListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mPeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .line 32
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mDummyListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 33
    return-void
.end method


# virtual methods
.method protected getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    return-object v0
.end method

.method public getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mPeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    return-object v0
.end method

.method public abstract getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
.end method

.method public onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    .line 90
    return-void
.end method

.method public onCharacteristicRead(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 82
    return-void
.end method

.method public onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "error"    # Ljava/lang/Error;

    .prologue
    .line 94
    return-void
.end method

.method public onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 86
    return-void
.end method

.method public onConnectionStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "error"    # Ljava/lang/Error;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    if-nez p2, :cond_0

    .line 70
    new-instance p2, Ljava/lang/Error;

    .end local p2    # "error":Ljava/lang/Error;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local p2    # "error":Ljava/lang/Error;
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 74
    :cond_1
    return-void
.end method

.method public onServicesDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "error"    # Ljava/lang/Error;

    .prologue
    .line 78
    return-void
.end method

.method public onToyStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "oldState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .param p3, "newState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .prologue
    .line 98
    return-void
.end method

.method protected setListener(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 45
    return-void
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 53
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mPeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->addListener(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;)V

    .line 55
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    invoke-interface {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onStart(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    .line 56
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mDummyListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mListener:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->mPeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->removeListener(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;)V

    .line 61
    return-void
.end method
