.class Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$1;
.super Ljava/lang/Object;
.source "EditFriendPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->backRequested()V
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
    .line 161
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->goBack()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->access$000(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V

    .line 165
    return-void
.end method
