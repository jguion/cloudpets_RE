.class Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$1;
.super Ljava/lang/Object;
.source "ToyTaskDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->onStart(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

.field final synthetic val$task:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$1;->this$1:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$1;->val$task:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$1;->this$1:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;->access$100(Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyTaskDispatcher$1$1;->val$task:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onStart(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V

    .line 83
    return-void
.end method
