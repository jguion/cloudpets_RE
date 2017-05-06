.class Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;
.super Ljava/lang/Object;
.source "ParseQueryAdapter.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->reloadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<TPO;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    .prologue
    .line 64
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;"
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 2
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TPO;>;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TPO;>;"
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/parse/ParseException;->printStackTrace()V

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->access$002(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;Ljava/util/List;)Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mComparator:Ljava/util/Comparator;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mComparator:Ljava/util/Comparator;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
