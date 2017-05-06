.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;
.super Landroid/os/AsyncTask;
.source "ToyTaskSendAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->compressAudio(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/spiraltoys/cloudpets2/audio/WavAudio;",
        "Ljava/lang/Void;",
        "[S>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

.field final synthetic val$wavAudio:Lcom/spiraltoys/cloudpets2/audio/WavAudio;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->val$wavAudio:Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, [Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->doInBackground([Lcom/spiraltoys/cloudpets2/audio/WavAudio;)[S

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/spiraltoys/cloudpets2/audio/WavAudio;)[S
    .locals 3
    .param p1, "params"    # [Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->val$wavAudio:Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    if-nez v2, :cond_0

    .line 104
    :goto_0
    return-object v1

    .line 102
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->val$wavAudio:Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/audio/TranscoderUtil;->encode(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)[S
    :try_end_0
    .catch Lcom/spiraltoys/cloudpets2/audio/AudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Lcom/spiraltoys/cloudpets2/audio/AudioFormatException;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->onPostExecute([S)V

    return-void
.end method

.method protected onPostExecute([S)V
    .locals 6
    .param p1, "encoded"    # [S

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/Error;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08007a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "error":Ljava/lang/Error;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCommand:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$200(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandSendAudio;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 125
    .end local v1    # "error":Ljava/lang/Error;
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v2, Lcom/android/Convert;

    invoke-direct {v2}, Lcom/android/Convert;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/Convert;->Shorts2Bytes([S)[B

    move-result-object v0

    .line 116
    .local v0, "compressedData":[B
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->isStreaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    array-length v3, v0

    add-int/lit8 v3, v3, 0x20

    new-array v3, v3, [B

    # setter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B
    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$302(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;[B)[B

    .line 118
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$300(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)[B

    move-result-object v2

    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$300(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)[B

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :goto_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->startSendAudio()V
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$400(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # setter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mCompressedData:[B
    invoke-static {v2, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$302(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;[B)[B

    goto :goto_1
.end method
