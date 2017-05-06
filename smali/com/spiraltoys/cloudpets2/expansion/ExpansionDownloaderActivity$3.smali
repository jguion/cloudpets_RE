.class Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$3;
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
    .line 301
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method
