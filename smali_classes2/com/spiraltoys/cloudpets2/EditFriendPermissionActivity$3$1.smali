.class Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;
.super Ljava/lang/Object;
.source "EditFriendPermissionActivity.java"

# interfaces
.implements Lcom/parse/DeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->hideProgress()V

    .line 210
    if-nez p1, :cond_0

    .line 211
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/FriendRecordDeletedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/FriendRecordDeletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->finish()V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;->this$1:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForGenericParseExceiption(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
