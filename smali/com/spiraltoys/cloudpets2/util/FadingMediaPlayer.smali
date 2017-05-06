.class public Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "FadingMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;,
        Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;
    }
.end annotation


# static fields
.field private static final STEP_SIZE:F = 0.033333335f

.field private static final STEP_TIME_MS:I = 0x10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentVolume:F

.field private mListener:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

.field private mTargetVolume:F

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 27
    iput v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTargetVolume:F

    .line 28
    iput v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mCurrentVolume:F

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->step()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)F
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .prologue
    .line 14
    iget v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mListener:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mListener:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    return-object p1
.end method

.method private step()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const v6, 0x3d088889

    .line 66
    iget v4, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mCurrentVolume:F

    iget v5, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTargetVolume:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v3

    .line 70
    :cond_1
    iget v4, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTargetVolume:F

    iget v5, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mCurrentVolume:F

    sub-float v0, v4, v5

    .line 71
    .local v0, "delta":F
    iget v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mCurrentVolume:F

    .line 73
    .local v2, "nextVolume":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 74
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v2, v4

    .line 80
    :goto_1
    :try_start_0
    invoke-virtual {p0, v2, v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_2
    iput v2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mCurrentVolume:F

    .line 87
    iget v4, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mCurrentVolume:F

    iget v5, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTargetVolume:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v2, v4

    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "Ignoring IllegalStateException on setVolume()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public fadeTo(F)V
    .locals 6
    .param p1, "targetVolume"    # F

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 53
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 55
    :cond_0
    iput p1, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTargetVolume:F

    .line 57
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTimer:Ljava/util/Timer;

    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;-><init>(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 60
    iget v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mTargetVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->start()V

    .line 63
    :cond_1
    return-void
.end method

.method public mute()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->fadeTo(F)V

    .line 44
    return-void
.end method

.method public mute(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mListener:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    .line 34
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mute()V

    .line 35
    return-void
.end method

.method public unmute()V
    .locals 1

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->fadeTo(F)V

    .line 48
    return-void
.end method

.method public unmute(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mListener:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    .line 39
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->unmute()V

    .line 40
    return-void
.end method
