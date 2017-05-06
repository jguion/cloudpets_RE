.class public Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;
.super Landroid/widget/FrameLayout;
.source "ConnectionIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    }
.end annotation


# static fields
.field private static final CONNECTION_INDICATOR_TRANSITION_DURATION_MS:I = 0xc8


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;

.field private mCurrentConnectionIndicatorState:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

.field private mToyConfigId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->init()V

    .line 47
    return-void
.end method

.method private getDrawableResourceForConnectionIndicatorState(Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;)I
    .locals 3
    .param p1, "state"    # Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .prologue
    const v0, 0x7f020081

    .line 120
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$1;->$SwitchMap$com$spiraltoys$cloudpets2$views$ConnectionIndicatorView$ConnectionIndicatorState:[I

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    :pswitch_0
    return v0

    .line 124
    :pswitch_1
    const v0, 0x7f020082

    goto :goto_0

    .line 126
    :pswitch_2
    const v0, 0x7f020087

    goto :goto_0

    .line 128
    :pswitch_3
    const v0, 0x7f020080

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008a

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;

    .line 51
    return-void
.end method

.method private updateState(Lcom/spiraltoys/cloudpets2/toy/ToyState;Ljava/lang/String;)V
    .locals 6
    .param p1, "toyState"    # Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .param p2, "toyIdentifier"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->getConfigId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->getConfigId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    sget-object p1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 89
    :cond_0
    sget-object v4, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne p1, v4, :cond_2

    .line 90
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->SCANNING:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .line 99
    .local v2, "newConnectionState":Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    :goto_0
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mCurrentConnectionIndicatorState:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    if-nez v4, :cond_5

    const/4 v1, 0x1

    .line 101
    .local v1, "isInitialState":Z
    :goto_1
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mCurrentConnectionIndicatorState:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    if-eq v4, v2, :cond_1

    .line 102
    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mCurrentConnectionIndicatorState:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .line 104
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mCurrentConnectionIndicatorState:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    invoke-direct {p0, v4}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->getDrawableResourceForConnectionIndicatorState(Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;)I

    move-result v3

    .line 106
    .local v3, "newConnectionStateIndicator":I
    if-eqz v1, :cond_6

    .line 107
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;->connectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;->connectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;->connectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 111
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 117
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "newConnectionStateIndicator":I
    :cond_1
    :goto_2
    return-void

    .line 91
    .end local v1    # "isInitialState":Z
    .end local v2    # "newConnectionState":Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    :cond_2
    sget-object v4, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne p1, v4, :cond_3

    .line 92
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTING:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .restart local v2    # "newConnectionState":Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    goto :goto_0

    .line 93
    .end local v2    # "newConnectionState":Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    :cond_3
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .restart local v2    # "newConnectionState":Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    goto :goto_0

    .line 96
    .end local v2    # "newConnectionState":Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    :cond_4
    sget-object v2, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->DISCONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .restart local v2    # "newConnectionState":Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    goto :goto_0

    .line 99
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 114
    .restart local v1    # "isInitialState":Z
    .restart local v3    # "newConnectionStateIndicator":I
    :cond_6
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;->connectionIndicator:Landroid/widget/ImageView;

    const/16 v5, 0xc8

    invoke-static {v4, v3, v5}, Lcom/spiraltoys/cloudpets2/util/Utils;->crossFadeImageView(Landroid/widget/ImageView;II)V

    goto :goto_2
.end method


# virtual methods
.method public getConfigId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mToyConfigId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentConnectionIndicatorState()Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mCurrentConnectionIndicatorState:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 56
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 63
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->updateState(Lcom/spiraltoys/cloudpets2/toy/ToyState;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setConfigId(Ljava/lang/String;)V
    .locals 0
    .param p1, "toyConfigId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->mToyConfigId:Ljava/lang/String;

    .line 75
    return-void
.end method
