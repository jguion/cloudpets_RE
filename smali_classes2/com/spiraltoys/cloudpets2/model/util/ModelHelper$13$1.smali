.class Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->done(Ljava/util/List;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

.field final synthetic val$originalObjectUpdateMap:Ljava/util/HashMap;

.field final synthetic val$originalObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->val$originalObjects:Ljava/util/List;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->val$originalObjectUpdateMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 584
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

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
    .line 588
    .local p1, "remotelyFetchedObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$callback:Lcom/parse/FindCallback;

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$callback:Lcom/parse/FindCallback;

    invoke-interface {v2, p1, p2}, Lcom/parse/FindCallback;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v0, "missingObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->val$originalObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 598
    .local v1, "originalObject":Lcom/parse/ParseObject;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 599
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 603
    .end local v1    # "originalObject":Lcom/parse/ParseObject;, "TT;"
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 604
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$pinName:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    .line 608
    :cond_4
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$pinName:Ljava/lang/String;

    new-instance v3, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;

    invoke-direct {v3, p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;Ljava/util/List;)V

    invoke-static {v2, p1, v3}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method
