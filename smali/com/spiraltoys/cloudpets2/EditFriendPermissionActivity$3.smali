.class Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;
.super Ljava/lang/Object;
.source "EditFriendPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->onDeleteClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->showProgress(I)Landroid/app/Dialog;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->access$100(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3$1;-><init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;)V

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V

    .line 218
    return-void
.end method
