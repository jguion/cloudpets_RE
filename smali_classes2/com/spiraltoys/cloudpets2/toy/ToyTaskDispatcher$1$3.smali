.class Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;
.super Ljava/lang/Object;
.source "ToyTaskDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

.field final synthetic val$error:Ljava/lang/Error;

.field final synthetic val$task:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

.field final synthetic val$toyCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;->this$1:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;->val$task:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;->val$toyCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    iput-object p4, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;->val$error:Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;->this$1:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;->val$task:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;->val$toyCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$3;->val$error:Ljava/lang/Error;

    invoke-interface {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 125
    return-void
.end method
