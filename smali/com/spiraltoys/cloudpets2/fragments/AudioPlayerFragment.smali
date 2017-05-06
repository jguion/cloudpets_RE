.class public Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;
.super Landroid/app/Fragment;
.source "AudioPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_AUDIO_URI:Ljava/lang/String; = "arg_audio_uri"

.field private static final ARG_NEWLY_RECORDED_ADULT_MESSAGE:Ljava/lang/String; = "arg_newly_recorded_adult_message"

.field private static final SEEK_BAR_THUMB_OFFSET_DP:F = 4.8f


# instance fields
.field private mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

.field private mAudioUri:Landroid/net/Uri;

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

.field private mIsAudioPlayerInitialized:Z

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    return-object v0
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mIsAudioPlayerInitialized:Z

    return p1
.end method

.method private loadAudio()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 117
    .local v1, "isLocalFile":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->isAvailableInOfflineCache(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 119
    .local v0, "isCached":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->audioPlayerContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->noConnectionNotice:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    :goto_1
    return-void

    .end local v0    # "isCached":Z
    :cond_0
    move v0, v3

    .line 117
    goto :goto_0

    .line 125
    .restart local v0    # "isCached":Z
    :cond_1
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    if-eqz v4, :cond_2

    .line 126
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->release()V

    .line 129
    :cond_2
    new-instance v4, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-direct {v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;-><init>()V

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .line 131
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->noConnectionNotice:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->audioPlayerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    new-instance v4, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)V

    invoke-virtual {v3, v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->addOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .line 198
    if-eqz v1, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->showProgressImmediately()V

    .line 200
    iput-boolean v2, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mIsAudioPlayerInitialized:Z

    .line 201
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->init(Landroid/content/Context;Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    goto :goto_1

    .line 205
    :cond_3
    if-eqz v0, :cond_4

    .line 206
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->showProgressImmediately()V

    .line 211
    :goto_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioUri:Landroid/net/Uri;

    new-instance v4, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)V

    invoke-static {v2, v3, v4}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->fetchToTemporaryFileAndCache(Landroid/content/Context;Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;)V

    goto :goto_1

    .line 208
    :cond_4
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setAlpha(F)V

    goto :goto_2
.end method

.method public static newInstance(Landroid/net/Uri;Z)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;
    .locals 3
    .param p0, "audioUri"    # Landroid/net/Uri;
    .param p1, "autoplayMessage"    # Z

    .prologue
    .line 49
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;-><init>()V

    .line 50
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_audio_uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    const-string v2, "arg_newly_recorded_adult_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method private showProgressImmediately()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 230
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setVisibility(I)V

    .line 232
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    instance-of v0, p1, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;

    .line 96
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_audio_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioUri:Landroid/net/Uri;

    .line 66
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v0, 0x7f04003d

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    .line 71
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_newly_recorded_adult_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->setAdultRecordingNewMessage(Ljava/lang/Boolean;)V

    .line 72
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->loadAudio()V

    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->release()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mAudioPlayer:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->destroyDrawingCache()V

    .line 109
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->clearAnimation()V

    .line 112
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 113
    return-void
.end method

.method public onEventMainThread(Lcom/spiraltoys/cloudpets2/events/NetworkStateChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/NetworkStateChangedEvent;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->mIsAudioPlayerInitialized:Z

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->loadAudio()V

    .line 238
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 86
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
