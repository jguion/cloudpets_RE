.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2$1;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2$1;->this$2:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 469
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 470
    return-void
.end method
