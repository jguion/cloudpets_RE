.class Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$2;
.super Ljava/lang/Object;
.source "ExpansionDownloaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$2;->this$1:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$2;->this$1:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->finish()V

    .line 257
    return-void
.end method
