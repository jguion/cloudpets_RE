.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllToLocalDatastore(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;Lcom/parse/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/FindCallback;

.field final synthetic val$pinName:Ljava/lang/String;

.field final synthetic val$remoteDatastoreQuery:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/parse/FindCallback;Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$pinName:Ljava/lang/String;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$callback:Lcom/parse/FindCallback;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$remoteDatastoreQuery:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 562
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 4
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "originalObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p2, :cond_1

    .line 568
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$pinName:Ljava/lang/String;

    invoke-static {v2}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    .line 570
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$pinName:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/spiraltoys/cloudpets2/util/Analytics;->logLocalDatastoreException(Lcom/parse/ParseException;Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$callback:Lcom/parse/FindCallback;

    if-eqz v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$callback:Lcom/parse/FindCallback;

    invoke-interface {v2, p1, p2}, Lcom/parse/FindCallback;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 580
    .local v1, "originalObjectUpdateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/parse/ParseObject;Ljava/util/Date;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 581
    .local v0, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 584
    .end local v0    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_2
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$remoteDatastoreQuery:Lcom/parse/ParseQuery;

    new-instance v3, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    goto :goto_0
.end method
