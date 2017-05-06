.class Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$3;
.super Ljava/lang/Object;
.source "PetVideoSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 644
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$3;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 647
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$3;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    monitor-enter v1

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$3;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    iget v0, v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mSavedPosition:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 649
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$3;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    const/4 v2, 0x0

    iput v2, v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mSavedPosition:I

    .line 650
    monitor-exit v1

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
