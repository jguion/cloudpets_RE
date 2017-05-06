.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;
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
    .line 443
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 447
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v1, v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080117

    .line 448
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v1

    const v2, 0x7f08006e

    .line 449
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2$2;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v1

    const v2, 0x7f08004c

    .line 466
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2$1;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;)V

    invoke-virtual {v1, v2, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 473
    return-void
.end method
