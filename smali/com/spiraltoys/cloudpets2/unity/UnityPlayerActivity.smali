.class public Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "UnityPlayerActivity.java"


# static fields
.field private static final EXTRA_PROFILE_ID:Ljava/lang/String; = "extra_profile_id"

.field private static final EXTRA_STORY:Ljava/lang/String; = "extra_story"

.field private static final SPLASH_HIDE_DELAY_MS:I = 0xfa


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

.field private mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

.field private mShouldStayConnected:Z

.field private mStory:Lcom/spiraltoys/cloudpets2/model/Story;

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    return-object v0
.end method

.method private exitUnity()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mShouldStayConnected:Z

    .line 170
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->finish()V

    .line 171
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->overridePendingTransition(II)V

    .line 172
    return-void
.end method

.method private getProfileId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_profile_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static start(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Story;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 3
    .param p0, "context"    # Lcom/spiraltoys/cloudpets2/BaseActivity;
    .param p1, "story"    # Lcom/spiraltoys/cloudpets2/model/Story;
    .param p2, "childProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_story"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    const-string v1, "extra_profile_id"

    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->overridePendingTransition(II)V

    .line 52
    return-void
.end method


# virtual methods
.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 125
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->notifySystemBackPressed()V

    .line 126
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->requestWindowFeature(I)Z

    .line 57
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v3, 0x7f04002f

    invoke-static {p0, v3}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    .line 59
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_story"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/spiraltoys/cloudpets2/model/Story;

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    .line 61
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    const-class v4, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    .line 62
    .local v1, "profileSelectedForToyDashboardEvent":Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;->getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-nez v3, :cond_1

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getConfigID()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "toyConfigId":Ljava/lang/String;
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-virtual {v3, v2}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->setConfigId(Ljava/lang/String;)V

    .line 78
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-direct {v3, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    .line 81
    .end local v2    # "toyConfigId":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$1;

    invoke-direct {v3, p0, p0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;Landroid/content/ContextWrapper;)V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 88
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->getInstance()Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->onCreate()V

    .line 89
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Story;->getUnitySceneName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->startScene(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;->unityPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 93
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 98
    invoke-static {}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->getInstance()Lcom/spiraltoys/cloudpets2/unity/UnityBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/unity/UnityBridge;->onDestroy()V

    .line 99
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/events/UnityCloseRequestedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/UnityCloseRequestedEvent;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->exitUnity()V

    .line 156
    return-void
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/events/UnityLoadedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/UnityLoadedEvent;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;->splashOverlay:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;->splashOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 166
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 105
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 108
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->getLastToyState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeState(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mShouldStayConnected:Z

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->onPause(Z)V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 120
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onWindowFocusChanged(Z)V

    .line 137
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 138
    return-void
.end method
