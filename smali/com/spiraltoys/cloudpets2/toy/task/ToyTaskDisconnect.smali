.class public Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskDisconnect.java"


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->DISCONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public onConnectionStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "error"    # Ljava/lang/Error;

    .prologue
    const/4 v2, 0x0

    .line 33
    if-eqz p2, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    invoke-interface {v0, p0, v2, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->start(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;)V

    .line 24
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->disconnect()V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskDisconnect;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    goto :goto_0
.end method
