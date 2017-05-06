.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;
.super Landroid/os/AsyncTask;
.source "ToyTaskSendAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->loadAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/spiraltoys/cloudpets2/audio/WavAudio;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .locals 2
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->loadSync(Landroid/content/Context;Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;->doInBackground([Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
    .locals 1
    .param p1, "wavAudio"    # Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->compressAudio(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
    invoke-static {v0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;->access$100(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio;Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V

    .line 88
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskSendAudio$1;->onPostExecute(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V

    return-void
.end method
