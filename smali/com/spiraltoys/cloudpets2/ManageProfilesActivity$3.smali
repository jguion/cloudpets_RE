.class Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$3;
.super Ljava/lang/Object;
.source "ManageProfilesActivity.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->onRefreshFriendRequestList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

.field final synthetic val$swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$3;->val$swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$3;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 2
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$3;->val$swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 87
    return-void
.end method
