.class Lcom/parse/ParseFile$3;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$cts:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseFile;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$3;->val$cts:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile$3;->val$cts:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseFile;->access$600(Lcom/parse/ParseFile;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$3;->val$cts:Lbolts/TaskCompletionSource;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 352
    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
