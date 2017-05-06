.class Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;
.super Ljava/util/TimerTask;
.source "FadingMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .param p2, "x1"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;-><init>(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->access$100(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->access$200(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 95
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->access$200(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 97
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->access$300(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 100
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->access$500(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->access$500(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    move-result-object v1

    .line 110
    .local v1, "fadeTransitionListener":Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->access$502(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    .line 111
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask$1;

    invoke-direct {v3, p0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask$1;-><init>(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .end local v1    # "fadeTransitionListener":Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;
    :cond_1
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ignoring RuntimeException on pause()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
