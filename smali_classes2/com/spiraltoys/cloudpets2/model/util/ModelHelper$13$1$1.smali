.class Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;

.field final synthetic val$remotelyFetchedObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;->val$remotelyFetchedObjects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 611
    if-eqz p1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->val$originalObjectUpdateMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;->val$remotelyFetchedObjects:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->access$000(Ljava/util/HashMap;Ljava/util/List;)V

    .line 617
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$callback:Lcom/parse/FindCallback;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;->val$callback:Lcom/parse/FindCallback;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;->val$remotelyFetchedObjects:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/parse/FindCallback;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 608
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13$1$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
