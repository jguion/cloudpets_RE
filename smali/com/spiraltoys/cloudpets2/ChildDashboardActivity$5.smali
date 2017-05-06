.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$5;
.super Ljava/lang/Object;
.source "ChildDashboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onDeleteRecordedMessageClicked(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

.field final synthetic val$recordingToDeleteUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$5;->val$recordingToDeleteUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$5;->val$recordingToDeleteUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 423
    return-void
.end method
