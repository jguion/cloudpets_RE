.class Lcom/parse/ParseQuery$2;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/ParseQuery$CacheThenNetworkCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQuery$CacheThenNetworkCallable",
        "<TT;",
        "Lbolts/Task",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 1204
    .local p0, "this":Lcom/parse/ParseQuery$2;, "Lcom/parse/ParseQuery$2;"
    iput-object p1, p0, Lcom/parse/ParseQuery$2;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p0, "this":Lcom/parse/ParseQuery$2;, "Lcom/parse/ParseQuery$2;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$2;->this$0:Lcom/parse/ParseQuery;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parse/ParseQuery;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1204
    .local p0, "this":Lcom/parse/ParseQuery$2;, "Lcom/parse/ParseQuery$2;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/parse/ParseQuery$2;->call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
