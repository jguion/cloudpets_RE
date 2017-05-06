.class public Lcom/spiraltoys/cloudpets2/views/RippleView;
.super Landroid/widget/FrameLayout;
.source "RippleView.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x5dc


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

.field private mIsAnimating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/views/RippleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/views/RippleView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mIsAnimating:Z

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008b

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    .line 40
    return-void
.end method

.method private restartAnimations()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple1:Landroid/view/View;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/spiraltoys/cloudpets2/views/RippleView;->setupRippleAnimation(Landroid/view/View;J)V

    .line 76
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple2:Landroid/view/View;

    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v2, v3}, Lcom/spiraltoys/cloudpets2/views/RippleView;->setupRippleAnimation(Landroid/view/View;J)V

    .line 77
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple3:Landroid/view/View;

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v2, v3}, Lcom/spiraltoys/cloudpets2/views/RippleView;->setupRippleAnimation(Landroid/view/View;J)V

    .line 78
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->invalidate()V

    .line 79
    return-void
.end method

.method private setupRippleAnimation(Landroid/view/View;J)V
    .locals 4
    .param p1, "ripple"    # Landroid/view/View;
    .param p2, "startDelayMilliseconds"    # J

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 83
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 84
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 86
    new-instance v1, Lcom/spiraltoys/cloudpets2/views/RippleView$1;

    invoke-direct {v1, p0, p1}, Lcom/spiraltoys/cloudpets2/views/RippleView$1;-><init>(Lcom/spiraltoys/cloudpets2/views/RippleView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 45
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->restartAnimations()V

    .line 48
    :cond_0
    return-void
.end method

.method public startRippleAnimation()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mIsAnimating:Z

    .line 52
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->restartAnimations()V

    .line 53
    return-void
.end method

.method public stopRippleAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mIsAnimating:Z

    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 65
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple3:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple3:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple3:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 70
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple3:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_2
    return-void
.end method
