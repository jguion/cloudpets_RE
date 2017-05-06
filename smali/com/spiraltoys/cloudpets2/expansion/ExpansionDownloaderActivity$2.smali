.class Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;
.super Ljava/lang/Object;
.source "ExpansionDownloaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->initializeDownloadUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatePaused:Z
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$500(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$600(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatePaused:Z
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$500(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    # invokes: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->setButtonPausedState(Z)V
    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$700(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;Z)V

    .line 298
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$600(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
