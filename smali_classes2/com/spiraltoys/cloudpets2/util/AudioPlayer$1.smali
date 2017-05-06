.class Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 103
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$000(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/widget/SeekBar;

    move-result-object v4

    if-nez v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mProgressUpdateHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$100(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$200(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J
    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$300(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 109
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPosition:I
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$400(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J
    invoke-static {v8}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$300(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 110
    .local v1, "currentTimeEstimate":I
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$200(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    .line 112
    .local v3, "mediaPlayerReportedPosition":I
    sub-int v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x4e2

    if-le v4, v5, :cond_4

    const/4 v2, 0x1

    .line 115
    .local v2, "isPositionCorrectionRequired":Z
    :goto_1
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$200(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .end local v1    # "currentTimeEstimate":I
    :cond_2
    # setter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPosition:I
    invoke-static {v4, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$402(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;I)I

    .line 116
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # setter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J
    invoke-static {v4, v6, v7}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$302(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;J)J

    .line 119
    .end local v2    # "isPositionCorrectionRequired":Z
    .end local v3    # "mediaPlayerReportedPosition":I
    :cond_3
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPosition:I
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$400(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J
    invoke-static {v8}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$300(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 121
    .local v0, "currentTime":I
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$000(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 122
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # invokes: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->updateRuntime(I)V
    invoke-static {v4, v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$500(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;I)V

    .line 125
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mProgressUpdateHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$100(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x11

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 112
    .end local v0    # "currentTime":I
    .restart local v1    # "currentTimeEstimate":I
    .restart local v3    # "mediaPlayerReportedPosition":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method
