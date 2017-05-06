.class Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;
.super Ljava/lang/Object;
.source "EditFriendPermissionActivity.java"

# interfaces
.implements Lcom/parse/DeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->done(Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->hideProgress()V

    .line 264
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForGenericParseExceiption(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->hideProgress()V

    .line 269
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    const v1, 0x7f0801b1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/FriendRecordDeletedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/FriendRecordDeletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 259
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
