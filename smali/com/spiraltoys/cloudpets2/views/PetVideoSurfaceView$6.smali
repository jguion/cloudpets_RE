.class Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;
.super Ljava/lang/Object;
.source "PetVideoSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 699
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x0

    .line 702
    sparse-switch p2, :sswitch_data_0

    .line 723
    :goto_0
    return v0

    .line 705
    :sswitch_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 707
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$100(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->release()V

    .line 710
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # invokes: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->prepareCurrentMediaPlayer()V
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$400(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    .line 711
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # invokes: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueNextVideo()V
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$500(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$200(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    const/4 v2, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$202(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    # setter for: Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z
    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->access$602(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Z)Z

    .line 721
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
