.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$1;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$1;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 580
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/FriendRecordEditEvent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$1;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/events/FriendRecordEditEvent;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 582
    return-void
.end method
