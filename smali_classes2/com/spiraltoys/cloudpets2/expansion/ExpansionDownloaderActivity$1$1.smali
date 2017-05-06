.class Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$1;
.super Ljava/lang/Object;
.source "ExpansionDownloaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->onPreExecute()V
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
    .line 125
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->access$302(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;Z)Z

    .line 129
    return-void
.end method
