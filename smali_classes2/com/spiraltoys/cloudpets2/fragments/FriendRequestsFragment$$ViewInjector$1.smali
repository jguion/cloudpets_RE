.class Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FriendRequestsFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector;

    .prologue
    .line 13
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector$1;, "Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector$1;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector$1;->val$target:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 17
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector$1;, "Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector$1;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$$ViewInjector$1;->val$target:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->onInviteFriendClicked()V

    .line 18
    return-void
.end method
