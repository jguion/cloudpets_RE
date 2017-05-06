.class public Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# static fields
.field private static final AUDIO_PROGRESS_UPDATE_TIME:I = 0x11

.field private static final ERROR_PLAYTIME_CURRENT_NEGATIVE:Ljava/lang/String; = "Current playback time cannot be negative"

.field private static final ERROR_PLAYTIME_TOTAL_NEGATIVE:Ljava/lang/String; = "Total playback time cannot be negative"

.field private static final ERROR_PLAYVIEW_NULL:Ljava/lang/String; = "Play view cannot be null"

.field private static final MEDIA_PLAYER_QUERY_INTERVAL:I = 0x3e8

.field private static final PROGRESS_ERROR_TOLERANCE_MS:I = 0x4e2

.field private static final ROUND_UP_MILLISECOND_TO_SECOND_MODIFIER:I = 0x3b6

.field private static final TAG:Ljava/lang/String;

.field private static mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

.field private static mUri:Landroid/net/Uri;


# instance fields
.field private mCompletionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaPlayer$OnCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMediaPlayerPosition:I

.field private mLastMediaPlayerPositionQueryTime:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPauseButton:Landroid/view/View;

.field private mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayButton:Landroid/view/View;

.field private mPlayListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreparedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaPlayer$OnPreparedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressUpdateHandler:Landroid/os/Handler;

.field private mRunTime:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTotalTime:Landroid/widget/TextView;

.field private mUpdateProgress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mCompletionListeners:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayListeners:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseListeners:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPreparedListeners:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$1;-><init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mUpdateProgress:Ljava/lang/Runnable;

    .line 502
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$6;-><init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mOnCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 521
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$7;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$7;-><init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mOnPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mProgressUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPreparedListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    iget v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->updateRuntime(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setPlayable()V

    return-void
.end method

.method static synthetic access$900(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->fireCustomCompletionListeners(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private fireCustomCompletionListeners(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 568
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mCompletionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;

    .line 569
    .local v0, "listener":Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 571
    .end local v0    # "listener":Landroid/media/MediaPlayer$OnCompletionListener;
    :cond_0
    return-void
.end method

.method private initMediaSeekBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 533
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v0, v2

    .line 540
    .local v0, "finalTime":J
    iput v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPosition:I

    .line 541
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J

    .line 543
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 544
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 545
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$8;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$8;-><init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method

.method private initOnPauseClick()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Pause view cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$4;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$4;-><init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    new-instance v1, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$5;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$5;-><init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void
.end method

.method private initOnPlayClick()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Play view cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$2;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$2;-><init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    new-instance v1, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$3;-><init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    return-void
.end method

.method private declared-synchronized initPlayer(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 488
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :try_start_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 492
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mOnCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 493
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mOnPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 494
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :goto_0
    monitor-exit p0

    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setPausable()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :cond_1
    return-void
.end method

.method private setPlayable()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_1
    return-void
.end method

.method private setTotalTime()V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    .line 230
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mTotalTime:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 260
    :goto_0
    return-void

    .line 237
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v1, "playbackStr":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x0

    .line 242
    .local v2, "totalDuration":J
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 244
    :try_start_0
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v2, v4

    .line 250
    :cond_1
    :goto_1
    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 251
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Total playback time cannot be negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    cmp-long v4, v2, v6

    if-eqz v4, :cond_3

    .line 256
    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3b6

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_3
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setViewsVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mRunTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mRunTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mTotalTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_4
    return-void
.end method

.method private updateRuntime(I)V
    .locals 10
    .param p1, "currentTime"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mRunTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    if-gez p1, :cond_1

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Current playback time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mRunTime:Landroid/widget/TextView;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mCompletionListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 448
    return-object p0
.end method

.method public addOnPauseClickListener(Landroid/view/View$OnClickListener;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    return-object p0
.end method

.method public addOnPlayClickListener(Landroid/view/View$OnClickListener;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    return-object p0
.end method

.method public addOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPreparedListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 479
    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 297
    if-nez p2, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .line 305
    :cond_1
    sput-object p2, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mUri:Landroid/net/Uri;

    .line 307
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mProgressUpdateHandler:Landroid/os/Handler;

    .line 309
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->initPlayer(Landroid/content/Context;)V

    .line 311
    return-object p0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 204
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setPlayable()V

    .line 207
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mLastMediaPlayerPositionQueryTime:J

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play view cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uri cannot be null. Call init() before calling this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call init() before calling this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mProgressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mUpdateProgress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setViewsVisibility()V

    .line 161
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 163
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setPausable()V

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mProgressUpdateHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :cond_0
    monitor-exit p0

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPauseView(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 2
    .param p1, "pause"    # Landroid/view/View;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PauseView cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseButton:Landroid/view/View;

    .line 375
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->initOnPauseClick()V

    .line 376
    return-object p0
.end method

.method public setPlayView(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 2
    .param p1, "play"    # Landroid/view/View;

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PlayView cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPlayButton:Landroid/view/View;

    .line 328
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->initOnPlayClick()V

    .line 329
    return-object p0
.end method

.method public setRuntimeView(Landroid/widget/TextView;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 1
    .param p1, "currentTime"    # Landroid/widget/TextView;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mRunTime:Landroid/widget/TextView;

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->updateRuntime(I)V

    .line 417
    return-object p0
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 0
    .param p1, "seekbar"    # Landroid/widget/SeekBar;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mSeekBar:Landroid/widget/SeekBar;

    .line 434
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->initMediaSeekBar()V

    .line 435
    return-object p0
.end method

.method public setTotalTimeView(Landroid/widget/TextView;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 0
    .param p1, "totalTime"    # Landroid/widget/TextView;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mTotalTime:Landroid/widget/TextView;

    .line 428
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setTotalTime()V

    .line 429
    return-object p0
.end method
