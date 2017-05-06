.class Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$3;
.super Ljava/lang/Object;
.source "AdultDashboardActivity.java"

# interfaces
.implements Lcom/parse/CountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->onProfileMenuLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ILcom/parse/ParseException;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    const/4 v0, 0x1

    .line 287
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    # setter for: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mLocalFriendsLoaded:Z
    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$102(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Z)Z

    .line 288
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    if-lez p1, :cond_0

    :goto_0
    # setter for: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mHasLocalFriends:Z
    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$202(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Z)Z

    .line 289
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startRemoteDataSync()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$300(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    .line 290
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
