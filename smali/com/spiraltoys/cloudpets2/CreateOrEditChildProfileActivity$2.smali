.class Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$2;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onDeleteProfileClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->access$100(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->deleteEventually()Lbolts/Task;

    .line 498
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->finish()V

    .line 500
    return-void
.end method
