.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;
.super Landroid/os/AsyncTask;
.source "ToyTaskReceiveAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->saveAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/ByteArrayOutputStream;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/ByteArrayOutputStream;)Landroid/net/Uri;
    .locals 6
    .param p1, "params"    # [Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v1, Lcom/android/Convert;

    invoke-direct {v1}, Lcom/android/Convert;-><init>()V

    .line 69
    .local v1, "convert":Lcom/android/Convert;
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/Convert;->Bytes2Shorts([B)[S

    move-result-object v0

    .line 70
    .local v0, "audioData":[S
    const/16 v5, 0x1f40

    invoke-static {v0, v5}, Lcom/spiraltoys/cloudpets2/audio/TranscoderUtil;->decode([SI)Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    move-result-object v3

    .line 71
    .local v3, "wavAudio":Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    if-eqz v3, :cond_1

    .line 72
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "outFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    :cond_0
    invoke-static {v3, v2}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->saveSync(Lcom/spiraltoys/cloudpets2/audio/WavAudio;Ljava/io/File;)Z

    .line 75
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 80
    .end local v2    # "outFile":Ljava/io/File;
    :cond_1
    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, [Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->doInBackground([Ljava/io/ByteArrayOutputStream;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    invoke-interface {v1, v2, v3, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/Error;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "error":Ljava/lang/Error;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio;

    invoke-interface {v1, v2, v3, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskReceiveAudio$1;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
