.class Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$4;
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
    .line 310
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$600(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    .line 314
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$600(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 315
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCellMessage:Landroid/view/View;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$100(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    return-void
.end method
