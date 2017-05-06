.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 607
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;->val$context:Landroid/content/Context;

    check-cast v1, Lcom/spiraltoys/cloudpets2/BaseActivity;

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(I)Landroid/app/Dialog;

    .line 608
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 609
    .local v0, "itemPosition":I
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;I)V

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V

    .line 621
    return-void
.end method
