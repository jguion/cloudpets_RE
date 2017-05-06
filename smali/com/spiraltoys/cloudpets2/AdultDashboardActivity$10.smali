.class Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$10;
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
        "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
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
    .line 375
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 375
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$10;->done(Ljava/util/List;Lcom/parse/ParseException;)V

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
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->updateNewMessageCount()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$700(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    .line 379
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    const/4 v1, 0x1

    # setter for: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mMessagesLoaded:Z
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$802(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Z)Z

    .line 380
    return-void
.end method
