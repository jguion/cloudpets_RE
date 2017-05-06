.class Lcom/spiraltoys/cloudpets2/util/AudioPlayer$8;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->initMediaSeekBar()V
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
    .line 545
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$8;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 563
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 558
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$8;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$200(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 549
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$8;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    const-wide/16 v2, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J
    invoke-static {v0, v2, v3}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$302(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;J)J

    .line 552
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$8;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # invokes: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->updateRuntime(I)V
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$500(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;I)V

    .line 553
    return-void
.end method
