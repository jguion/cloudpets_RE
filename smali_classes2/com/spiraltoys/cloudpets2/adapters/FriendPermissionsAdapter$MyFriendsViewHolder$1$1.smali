.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Lcom/parse/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FunctionCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "friendRecord"    # Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->hideProgress()V

    .line 433
    if-nez p2, :cond_0

    .line 434
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/FriendRecordSavedToLocalDatastoreEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/FriendRecordSavedToLocalDatastoreEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForGenericParseExceiption(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 429
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;->done(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/parse/ParseException;)V

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 429
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;->done(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/parse/ParseException;)V

    return-void
.end method
