.class Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$1;
.super Ljava/lang/Object;
.source "PetVideoSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$1;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 627
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 628
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/PetVideoPlaybackStartedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/PetVideoPlaybackStartedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 630
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
