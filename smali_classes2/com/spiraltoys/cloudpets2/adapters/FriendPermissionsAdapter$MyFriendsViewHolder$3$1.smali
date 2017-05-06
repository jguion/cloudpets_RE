.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(I)Landroid/app/Dialog;

    .line 487
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;->mRecord:Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$3$1;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    .line 498
    return-void
.end method
