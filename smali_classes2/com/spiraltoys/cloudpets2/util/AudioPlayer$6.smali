.class Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 502
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "currentPlayTime":I
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$000(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$000(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # setter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPosition:I
    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$402(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;I)I

    .line 513
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    const-wide/16 v2, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J
    invoke-static {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$302(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;J)J

    .line 515
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # invokes: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->updateRuntime(I)V
    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$500(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;I)V

    .line 516
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # invokes: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setPlayable()V
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$800(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    .line 517
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # invokes: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->fireCustomCompletionListeners(Landroid/media/MediaPlayer;)V
    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$900(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;Landroid/media/MediaPlayer;)V

    .line 518
    return-void
.end method
