.class Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$FallAsleepTimerTask;
.super Ljava/util/TimerTask;
.source "PetVideoSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FallAsleepTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;


# direct methods
.method private constructor <init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$FallAsleepTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
    .param p2, "x1"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$1;

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$FallAsleepTimerTask;-><init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$FallAsleepTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # invokes: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->goToSleep()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$700(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    .line 732
    return-void
.end method
