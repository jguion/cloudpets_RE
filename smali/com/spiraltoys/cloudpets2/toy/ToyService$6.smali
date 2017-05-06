.class Lcom/spiraltoys/cloudpets2/toy/ToyService$6;
.super Ljava/lang/Object;
.source "ToyService.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[B)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    .line 575
    return-void
.end method

.method public onCharacteristicRead(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 567
    return-void
.end method

.method public onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "error"    # Ljava/lang/Error;

    .prologue
    .line 579
    return-void
.end method

.method public onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 571
    return-void
.end method

.method public onConnectionStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "error"    # Ljava/lang/Error;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mActivePeripheral:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1200(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1000(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    const/4 v1, 0x1

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->onDisconnected(Z)V
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1300(Lcom/spiraltoys/cloudpets2/toy/ToyService;Z)V

    goto :goto_0
.end method

.method public onServicesDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "error"    # Ljava/lang/Error;

    .prologue
    .line 563
    return-void
.end method

.method public onToyStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)V
    .locals 4
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "oldState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .param p3, "newState"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .prologue
    const/4 v3, 0x0

    .line 583
    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->getPeripheralDescription(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$700(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Last = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->shouldDownloadAudio(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1400(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyService;->mTaskDispatcher:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyService;)Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "toy_recordings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wmv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->push(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyService$7;->$SwitchMap$com$spiraltoys$cloudpets2$toy$ToyPeripheral$State:[I

    invoke-virtual {p3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1000(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    goto :goto_0

    .line 596
    :pswitch_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECORDING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1000(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    goto :goto_0

    .line 599
    :pswitch_2
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_PLAYBACK:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->AUDIO_RECORD:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->GAME_MODE_RECORD_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->GAME_MODE_PLAY_PAW_PRESSED:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-ne p2, v0, :cond_0

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setActivePeripheral(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    invoke-static {v0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$400(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 605
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyService;->setState(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->access$1000(Lcom/spiraltoys/cloudpets2/toy/ToyService;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    goto :goto_0

    .line 609
    :pswitch_3
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->RECORD:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;-><init>(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;)V

    invoke-virtual {v0, v1, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 612
    :pswitch_4
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$6;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->PLAY:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;-><init>(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;)V

    invoke-virtual {v0, v1, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
