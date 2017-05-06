.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->preFetch(Lcom/parse/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$callback:Lcom/parse/GetCallback;


# direct methods
.method constructor <init>(Lcom/parse/GetCallback;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1;->val$callback:Lcom/parse/GetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

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
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1;->val$callback:Lcom/parse/GetCallback;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/parse/GetCallback;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    goto :goto_0
.end method
