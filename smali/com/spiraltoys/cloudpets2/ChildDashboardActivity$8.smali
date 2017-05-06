.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;
.super Ljava/lang/Object;
.source "ChildDashboardActivity.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
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
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

.field final synthetic val$swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;->val$swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 659
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 1
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    new-instance v0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8$1;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    goto :goto_0
.end method
