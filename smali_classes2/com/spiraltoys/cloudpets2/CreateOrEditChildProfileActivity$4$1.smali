.class Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4$1;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->access$100(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->access$200(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 723
    return-void
.end method
