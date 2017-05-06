.class Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;
.super Ljava/lang/Object;
.source "EditFriendPermissionActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->savePermissionsClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

.field final synthetic val$toBeDeletedFriendRecords:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->val$toBeDeletedFriendRecords:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->hideProgress()V

    .line 255
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForGenericParseExceiption(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 274
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->val$toBeDeletedFriendRecords:Ljava/util/List;

    new-instance v1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4$1;-><init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;)V

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;->done(Lcom/parse/ParseException;)V

    return-void
.end method
