.class Lcom/parse/ParseFile$7;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;
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
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$cts:Lbolts/TaskCompletionSource;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseFile;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/parse/ParseFile$7;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$7;->val$progressCallback:Lcom/parse/ProgressCallback;

    iput-object p3, p0, Lcom/parse/ParseFile$7;->val$cts:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile$7;->this$0:Lcom/parse/ParseFile;

    iget-object v1, p0, Lcom/parse/ParseFile$7;->val$progressCallback:Lcom/parse/ProgressCallback;

    iget-object v2, p0, Lcom/parse/ParseFile$7;->val$cts:Lbolts/TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    # invokes: Lcom/parse/ParseFile;->fetchInBackground(Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;
    invoke-static {v0, v1, p1, v2}, Lcom/parse/ParseFile;->access$800(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$7$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$7$1;-><init>(Lcom/parse/ParseFile$7;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$7;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
