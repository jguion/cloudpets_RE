.class Lcom/spiraltoys/cloudpets2/toy/ToyService$1;
.super Ljava/lang/Object;
.source "ToyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyService;->postEvent(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$isSticky:Z


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;ZLjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    iput-boolean p2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$1;->val$isSticky:Z

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$1;->val$isSticky:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
