.class Lcom/spiraltoys/cloudpets2/toy/ToyService$2;
.super Ljava/lang/Object;
.source "ToyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyService;->onDisconnected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/ToyService;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyService$2;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-class v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 409
    return-void
.end method
