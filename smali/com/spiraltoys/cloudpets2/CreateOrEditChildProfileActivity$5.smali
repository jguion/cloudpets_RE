.class Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
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
    .line 768
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->hideProgress()V

    .line 773
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    if-eqz p1, :cond_2

    .line 778
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 779
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForCreateProfileException(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isNewChild:Z
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->access$300(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 789
    :goto_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->setResult(I)V

    .line 790
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->finish()V

    goto :goto_0

    .line 786
    :cond_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 768
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;->done(Lcom/parse/ParseException;)V

    return-void
.end method
