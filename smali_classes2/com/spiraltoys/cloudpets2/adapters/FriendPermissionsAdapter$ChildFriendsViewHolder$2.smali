.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 600
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 602
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v1, v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800fc

    .line 603
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v1

    const v2, 0x7f08006e

    .line 604
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;

    invoke-direct {v3, p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v1

    const v2, 0x7f08004c

    .line 623
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 625
    return-void
.end method
