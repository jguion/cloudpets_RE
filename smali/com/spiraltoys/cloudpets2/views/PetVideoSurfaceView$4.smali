.class Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;
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
    .line 654
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 657
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$100(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$200(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyQueuedAnimation:Ljava/lang/String;

    if-eq v0, v2, :cond_2

    .line 659
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    const/4 v2, 0x1

    # setter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayerPrepared:Z
    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$302(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Z)Z

    .line 660
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$100(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setLooping(Z)V

    .line 662
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$100(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$100(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->start()V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v2, "idle"

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v2, "sleepcycle"

    if-ne v0, v2, :cond_2

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$100(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 676
    :cond_2
    monitor-exit v1

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
