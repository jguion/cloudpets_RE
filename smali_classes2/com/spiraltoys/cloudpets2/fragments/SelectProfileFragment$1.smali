.class Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$1;
.super Ljava/lang/Object;
.source "SelectProfileFragment.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->reloadProfilesFromServerAndAttemptRecovery()V
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
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 3
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
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const/4 v2, 0x0

    .line 144
    if-eqz p2, :cond_1

    .line 145
    invoke-static {p2}, Lcom/spiraltoys/cloudpets2/util/Analytics;->logLocalDatastoreRecoveryException(Lcom/parse/ParseException;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    goto :goto_0
.end method
