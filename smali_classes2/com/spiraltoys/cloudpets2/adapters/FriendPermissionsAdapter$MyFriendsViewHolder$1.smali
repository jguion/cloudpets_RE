.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 427
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 428
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/BaseActivity;

    const v2, 0x7f0800ea

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(I)Landroid/app/Dialog;

    .line 429
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;->mRecord:Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    const/4 v3, 0x1

    new-instance v4, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$1;Landroid/view/View;Landroid/content/Context;)V

    invoke-static {v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->resolvePendingFriendRequest(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/FriendRecord;ZLcom/parse/FunctionCallback;)V

    .line 440
    return-void
.end method
