.class public Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "PetVideoSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$FallAsleepTimerTask;,
        Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$Animation;
    }
.end annotation


# static fields
.field private static final ABOVE_HEAD_BOUNDS:Landroid/graphics/RectF;

.field public static final ANIMATION_CLAPS:Ljava/lang/String; = "claps"

.field public static final ANIMATION_FALLING_ASLEEP:Ljava/lang/String; = "fallingasleep"

.field public static final ANIMATION_FUN_DANCE:Ljava/lang/String; = "fundance"

.field public static final ANIMATION_HICCUP:Ljava/lang/String; = "hiccup"

.field public static final ANIMATION_IDLE:Ljava/lang/String; = "idle"

.field public static final ANIMATION_SLEEP_CYCLE:Ljava/lang/String; = "sleepcycle"

.field public static final ANIMATION_SMILE:Ljava/lang/String; = "smile"

.field public static final ANIMATION_SNEEZE:Ljava/lang/String; = "sneeze"

.field public static final ANIMATION_SWATS:Ljava/lang/String; = "swats"

.field public static final ANIMATION_TICKLE:Ljava/lang/String; = "tickle"

.field private static final ANIMATION_VIDEO_DIRECTORY_PATH:Ljava/lang/String; = "expansion_media_files"

.field private static final ANIMATION_VIDEO_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final ANIMATION_WAKE_UP:Ljava/lang/String; = "wakeup"

.field public static final ANIMATION_WAVE:Ljava/lang/String; = "wave"

.field public static final ANIMATION_WINK:Ljava/lang/String; = "wink"

.field private static final BELLY_BOUNDS:Landroid/graphics/RectF;

.field private static final BELLY_MAX_X:F = 0.6f

.field private static final BELLY_MAX_Y:F = 0.84f

.field private static final BELLY_MIN_X:F = 0.4f

.field private static final BELLY_MIN_Y:F = 0.65f

.field private static final FALL_ASLEEP_RETRY_TIME_MILLISECONDS:I = 0x3e8

.field private static final HEAD_BOUNDS:Landroid/graphics/RectF;

.field private static final HEAD_MAX_X:F = 0.71f

.field private static final HEAD_MAX_Y:F = 0.64f

.field private static final HEAD_MIN_X:F = 0.35f

.field private static final HEAD_MIN_Y:F = 0.45f

.field private static final LEFT_FOOT_BOUNDS:Landroid/graphics/RectF;

.field private static final LEFT_FOOT_MAX_X:F = 0.45f

.field private static final LEFT_FOOT_MAX_Y:F = 0.86f

.field private static final LEFT_FOOT_MIN_X:F = 0.2f

.field private static final LEFT_FOOT_MIN_Y:F = 0.7f

.field private static final MICROSECONDS_PER_MILLISECOND:I = 0x3e8

.field private static final RIGHT_FOOT_BOUNDS:Landroid/graphics/RectF;

.field private static final RIGHT_FOOT_MAX_X:F = 0.85f

.field private static final RIGHT_FOOT_MAX_Y:F = 0.86f

.field private static final RIGHT_FOOT_MIN_X:F = 0.6f

.field private static final RIGHT_FOOT_MIN_Y:F = 0.7f

.field private static final SLEEPING_HEAD_BOUNDS:Landroid/graphics/RectF;

.field private static final SLEEPING_HEAD_MAX_X:F = 0.85f

.field private static final SLEEPING_HEAD_MAX_Y:F = 0.7f

.field private static final SLEEPING_HEAD_MIN_X:F = 0.4f

.field private static final SLEEPING_HEAD_MIN_Y:F = 0.5f

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_TO_FALL_ASLEEP_MILLISECONDS:I = 0x36b0

.field private static final VIDEO_HEIGHT:F = 1024.0f

.field private static final VIDEO_WIDTH:F = 768.0f


# instance fields
.field private mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

.field mCurrentlyPlayingAnimation:Ljava/lang/String;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mCurrentlyQueuedAnimation:Ljava/lang/String;
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mFallAsleepTimer:Ljava/util/Timer;

.field private mFallAsleepTimerTask:Ljava/util/TimerTask;

.field private mIsTouchQueued:Z

.field private mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

.field private mNextMediaPlayerPrepared:Z

.field private mOnCurrentVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnImmediatePlayNextVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnNextVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field mSavedPosition:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field mVolume:F
    .annotation build Licepick/State;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const v8, 0x3f19999a    # 0.6f

    const v7, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const v5, 0x3f333333    # 0.7f

    const v4, 0x3ee66666    # 0.45f

    .line 79
    const-class v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->TAG:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3f5c28f6    # 0.86f

    invoke-direct {v0, v1, v5, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->LEFT_FOOT_BOUNDS:Landroid/graphics/RectF;

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3f5c28f6    # 0.86f

    invoke-direct {v0, v8, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->RIGHT_FOOT_BOUNDS:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f35c28f    # 0.71f

    const v3, 0x3f23d70a    # 0.64f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->HEAD_BOUNDS:Landroid/graphics/RectF;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {v0, v7, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->SLEEPING_HEAD_BOUNDS:Landroid/graphics/RectF;

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x3f266666    # 0.65f

    const v2, 0x3f570a3d    # 0.84f

    invoke-direct {v0, v7, v1, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->BELLY_BOUNDS:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v6, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->ABOVE_HEAD_BOUNDS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 624
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$1;-><init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 634
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$2;-><init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 644
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$3;-><init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnCurrentVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 654
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$4;-><init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnImmediatePlayNextVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 680
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$5;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$5;-><init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnNextVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 699
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$6;-><init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 145
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->init(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayerPrepared:Z

    return p1
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->prepareCurrentMediaPlayer()V

    return-void
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueNextVideo()V

    return-void
.end method

.method static synthetic access$602(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    return p1
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->goToSleep()V

    return-void
.end method

.method private cancelFallAsleepTimer()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mFallAsleepTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mFallAsleepTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 298
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mFallAsleepTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 300
    :cond_0
    return-void
.end method

.method private detectTouchZone(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 328
    iget-boolean v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, p1, v2

    .line 332
    .local v0, "xf":F
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, p2, v2

    .line 334
    .local v1, "yf":F
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->LEFT_FOOT_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->onLeftFootTouch()V

    goto :goto_0

    .line 341
    :cond_2
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->RIGHT_FOOT_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->onRightFootTouch()V

    goto :goto_0

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v3, "idle"

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->HEAD_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v3, "sleepcycle"

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->SLEEPING_HEAD_BOUNDS:Landroid/graphics/RectF;

    .line 348
    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    :cond_5
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->onFaceTouch()V

    goto :goto_0

    .line 353
    :cond_6
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->BELLY_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 354
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->onBellyTouch()V

    goto :goto_0

    .line 358
    :cond_7
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->ABOVE_HEAD_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->onAboveHeadTouch()V

    goto/16 :goto_0
.end method

.method private getAnimationAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .param p1, "animation"    # Ljava/lang/String;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 738
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expansion_media_files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f010000

    invoke-static {v3, v4}, Lcom/spiraltoys/cloudpets2/util/Utils;->getStyledStringForAttribute(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->getMainExpansionDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getZipResourceFile(Landroid/content/Context;)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 742
    .end local v1    # "filePath":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 742
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRandomFaceTouchAnimation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Random face touch animation selection is broken"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :pswitch_0
    const-string v0, "hiccup"

    .line 436
    :goto_0
    return-object v0

    .line 430
    :pswitch_1
    const-string v0, "smile"

    goto :goto_0

    .line 432
    :pswitch_2
    const-string v0, "sneeze"

    goto :goto_0

    .line 434
    :pswitch_3
    const-string v0, "wave"

    goto :goto_0

    .line 436
    :pswitch_4
    const-string v0, "wink"

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getRandomFootTouchAnimation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Random foot touch animation selection is broken"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :pswitch_0
    const-string v0, "claps"

    .line 449
    :goto_0
    return-object v0

    .line 447
    :pswitch_1
    const-string v0, "smile"

    goto :goto_0

    .line 449
    :pswitch_2
    const-string v0, "fundance"

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRandomIdleAnimation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Random idle animation selection is broken"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :pswitch_0
    const-string v0, "idle"

    .line 463
    :goto_0
    return-object v0

    .line 461
    :pswitch_1
    const-string v0, "smile"

    goto :goto_0

    .line 463
    :pswitch_2
    const-string v0, "wave"

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResourceUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private goToSleep()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "idle"

    if-ne v0, v1, :cond_0

    .line 304
    const-string v0, "fallingasleep"

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueVideo(Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->resetFallAsleepTimer(J)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v0, "idle"

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isChildDashboardSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mVolume:F

    .line 152
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 153
    invoke-virtual {p0, p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->resetFallAsleepTimer()V

    .line 155
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAboveHeadTouch()V
    .locals 2

    .prologue
    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    .line 415
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "idle"

    if-ne v0, v1, :cond_0

    .line 416
    const-string v0, "swats"

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->playVideo(Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "sleepcycle"

    if-ne v0, v1, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->wakeUp()V

    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    goto :goto_0
.end method

.method private onBellyTouch()V
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    .line 403
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "idle"

    if-ne v0, v1, :cond_0

    .line 404
    const-string v0, "tickle"

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->playVideo(Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "sleepcycle"

    if-ne v0, v1, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->wakeUp()V

    goto :goto_0

    .line 408
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    goto :goto_0
.end method

.method private onFaceTouch()V
    .locals 2

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    .line 391
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "idle"

    if-ne v0, v1, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getRandomFaceTouchAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->playVideo(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "sleepcycle"

    if-ne v0, v1, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->wakeUp()V

    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    goto :goto_0
.end method

.method private onLeftFootTouch()V
    .locals 2

    .prologue
    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    .line 367
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "idle"

    if-ne v0, v1, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getRandomFootTouchAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->playVideo(Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "sleepcycle"

    if-ne v0, v1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->wakeUp()V

    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    goto :goto_0
.end method

.method private onRightFootTouch()V
    .locals 2

    .prologue
    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    .line 379
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "idle"

    if-ne v0, v1, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getRandomFootTouchAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->playVideo(Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "sleepcycle"

    if-ne v0, v1, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->wakeUp()V

    goto :goto_0

    .line 384
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    goto :goto_0
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "animation"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueVideo(Ljava/lang/String;Z)V

    .line 470
    return-void
.end method

.method private declared-synchronized prepareCurrentMediaPlayer()V
    .locals 8

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 503
    const-string v0, "idle"

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :goto_0
    monitor-exit p0

    return-void

    .line 512
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getAnimationAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 514
    .local v6, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 515
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 516
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 517
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnCurrentVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 518
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 519
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 520
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 521
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 522
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mVolume:F

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setVolume(FF)V

    .line 523
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setLooping(Z)V

    .line 524
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    .end local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 526
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 502
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private queueNextVideo()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "sleepcycle"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "fallingasleep"

    if-ne v0, v1, :cond_1

    .line 600
    :cond_0
    const-string v0, "sleepcycle"

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueVideo(Ljava/lang/String;)V

    .line 606
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "idle"

    if-ne v0, v1, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getRandomIdleAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_2
    const-string v0, "idle"

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queueVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "animation"    # Ljava/lang/String;

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueVideo(Ljava/lang/String;Z)V

    .line 474
    return-void
.end method

.method private declared-synchronized queueVideo(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "animation"    # Ljava/lang/String;
    .param p2, "forceImmediatePlay"    # Z

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 481
    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyQueuedAnimation:Ljava/lang/String;

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayerPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :try_start_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyQueuedAnimation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getAnimationAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 487
    .local v6, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 488
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 489
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnImmediatePlayNextVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 490
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 491
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 492
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 493
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mVolume:F

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setVolume(FF)V

    .line 494
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setLooping(Z)V

    .line 495
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    .end local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    monitor-exit p0

    return-void

    .line 489
    .restart local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mOnNextVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 496
    .end local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 497
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 477
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetFallAsleepTimer()V
    .locals 2

    .prologue
    .line 285
    const-wide/16 v0, 0x36b0

    invoke-direct {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->resetFallAsleepTimer(J)V

    .line 286
    return-void
.end method

.method private declared-synchronized resetFallAsleepTimer(J)V
    .locals 3
    .param p1, "timeUntilSleep"    # J

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->cancelFallAsleepTimer()V

    .line 290
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$FallAsleepTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$FallAsleepTimerTask;-><init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$1;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mFallAsleepTimerTask:Ljava/util/TimerTask;

    .line 291
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mFallAsleepTimer:Ljava/util/Timer;

    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mFallAsleepTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mFallAsleepTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private savePlaybackState()V
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->pausePlayback()V

    .line 564
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mSavedPosition:I

    .line 567
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastPausedFrame()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 240
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 242
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getAnimationAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 243
    .local v6, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 244
    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mSavedPosition:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 248
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 250
    .end local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 246
    .local v7, "ex":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 250
    const/4 v1, 0x0

    goto :goto_0

    .line 248
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v1

    .line 245
    :catch_1
    move-exception v1

    move-object v7, v1

    goto :goto_1
.end method

.method public mute()V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isChildDashboardSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setVolume(F)V

    .line 215
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 256
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->resetFallAsleepTimer()V

    .line 257
    return-void
.end method

.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 596
    :goto_0
    monitor-exit p0

    return-void

    .line 576
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayerPrepared:Z

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 578
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 579
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->start()V

    .line 580
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 583
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 585
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyQueuedAnimation:Ljava/lang/String;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyQueuedAnimation:Ljava/lang/String;

    .line 593
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    .line 595
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueNextVideo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 589
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setLooping(Z)V

    .line 590
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 262
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->cancelFallAsleepTimer()V

    .line 263
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 159
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 160
    .local v3, "viewportWidth":F
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v2, v4

    .line 162
    .local v2, "viewportHeight":F
    const/high16 v0, 0x3f400000    # 0.75f

    .line 163
    .local v0, "videoAspectRatio":F
    div-float v1, v3, v2

    .line 165
    .local v1, "viewportAspectRatio":F
    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    .line 167
    mul-float v4, v2, v0

    float-to-int v4, v4

    float-to-int v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setMeasuredDimension(II)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    float-to-int v4, v3

    div-float v5, v3, v0

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 324
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/SurfaceView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 325
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->savePlaybackState()V

    .line 319
    invoke-super {p0}, Landroid/view/SurfaceView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p0, v0}, Licepick/Icepick;->saveInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 268
    const/4 v2, 0x0

    .line 281
    :goto_0
    return v2

    .line 271
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 273
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 275
    .local v1, "y":F
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->resetFallAsleepTimer()V

    .line 276
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v3, "idle"

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v3, "sleepcycle"

    if-ne v2, v3, :cond_2

    .line 278
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->detectTouchZone(FF)V

    .line 281
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 532
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 533
    packed-switch p2, :pswitch_data_0

    .line 538
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->cancelFallAsleepTimer()V

    .line 541
    :goto_0
    return-void

    .line 535
    :pswitch_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->resetFallAsleepTimer()V

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized pausePlayback()V
    .locals 3

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :try_start_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_3
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to pause pause playback but player was not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 609
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 611
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 616
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 618
    :cond_1
    return-void
.end method

.method public resumePlayback()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 191
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->start()V

    .line 194
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-nez v1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueNextVideo()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mIsTouchQueued:Z

    .line 209
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 200
    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setVisibility(I)V

    .line 201
    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 205
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setVisibility(I)V

    .line 206
    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 224
    iput p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mVolume:F

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->fadeTo(F)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mNextMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1, p1, p1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 553
    return-void
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->resetFallAsleepTimer()V

    .line 546
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->prepareCurrentMediaPlayer()V

    .line 547
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->queueNextVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->savePlaybackState()V

    .line 558
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->release()V

    .line 559
    return-void
.end method

.method public unmute()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isChildDashboardSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->setVolume(F)V

    .line 221
    :cond_0
    return-void
.end method

.method public wakeUp()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    const-string v1, "sleepcycle"

    if-ne v0, v1, :cond_0

    .line 312
    const-string v0, "wakeup"

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->playVideo(Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method
