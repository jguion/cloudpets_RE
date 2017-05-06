.class public abstract Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "InteractiveToyActivity.java"


# static fields
.field private static final MAX_TIME_TO_RESUME_VIDEO_MS:I = 0x2ee

.field private static final OVERLAY_TRANSITION_TIME_MS:I = 0xc8

.field private static final TIME_TO_OVERLAY_VIDEO_MS:I = 0x1f4


# instance fields
.field mContainer:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100093
    .end annotation
.end field

.field private mDelayedVideoOverlayRunnable:Ljava/lang/Runnable;

.field private mEnterAnimationCompleteDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastSavedFrame:Landroid/graphics/Bitmap;

.field private mOnEnterAnimationCompleteFallbackRunnable:Ljava/lang/Runnable;

.field mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100094
    .end annotation
.end field

.field mVideoPlaceholder:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100095
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    .line 150
    new-instance v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$3;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mDelayedVideoOverlayRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$4;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mOnEnterAnimationCompleteFallbackRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mLastSavedFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mLastSavedFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fadeOutVideoPlaceholder()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 125
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 148
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mOnEnterAnimationCompleteFallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mEnterAnimationCompleteDone:Z

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mEnterAnimationCompleteDone:Z

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/PetVideoPlaybackStartedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/PetVideoPlaybackStartedEvent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->fadeOutVideoPlaceholder()V

    .line 120
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onPause()V

    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->pausePlayback()V

    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mDelayedVideoOverlayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mDelayedVideoOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 92
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 94
    iput-boolean v2, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mEnterAnimationCompleteDone:Z

    .line 95
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mOnEnterAnimationCompleteFallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->resumePlayback()V

    .line 98
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->fadeOutVideoPlaceholder()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onStart()V

    .line 51
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 60
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onStop()V

    .line 61
    return-void
.end method
