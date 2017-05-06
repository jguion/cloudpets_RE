.class Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$8;
.super Ljava/lang/Object;
.source "AdultDashboardActivity.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startRemoteDataSync()V
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
        "Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$8;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 357
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$8;->done(Ljava/util/List;Lcom/parse/ParseException;)V

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
            "Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;>;"
    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$8;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    # invokes: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->displayFriendRequestAcceptedDialog(I)V
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$400(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;I)V

    .line 362
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->clearAllFriendRequestAcceptanceNotifications(Lcom/parse/DeleteCallback;)V

    .line 364
    :cond_0
    return-void
.end method
