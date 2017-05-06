.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$1;
.super Ljava/lang/Object;
.source "ToyTask.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
    .locals 0
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .param p2, "identifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "error"    # Ljava/lang/Error;

    .prologue
    .line 111
    return-void
.end method

.method public onStart(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
    .locals 0
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;

    .prologue
    .line 103
    return-void
.end method

.method public onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .param p2, "identifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 107
    return-void
.end method
