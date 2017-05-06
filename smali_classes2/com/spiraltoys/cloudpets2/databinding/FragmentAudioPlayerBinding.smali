.class public Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentAudioPlayerBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final audioPlayerContainer:Landroid/widget/LinearLayout;

.field public final currentPlaybackTime:Landroid/widget/TextView;

.field private mAdultRecordingNewMessage:Ljava/lang/Boolean;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final noConnectionNotice:Landroid/widget/LinearLayout;

.field public final pauseButton:Landroid/support/design/widget/FloatingActionButton;

.field public final playButton:Landroid/support/design/widget/FloatingActionButton;

.field public final progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

.field public final seekBar:Landroid/widget/SeekBar;

.field public final trackLength:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000e3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000e4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000e6

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000e7

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000e8

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000e9

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000ea

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 148
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mDirtyFlags:J

    .line 37
    const/16 v1, 0x9

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->audioPlayerContainer:Landroid/widget/LinearLayout;

    .line 39
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->currentPlaybackTime:Landroid/widget/TextView;

    .line 40
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 41
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->noConnectionNotice:Landroid/widget/LinearLayout;

    .line 43
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->pauseButton:Landroid/support/design/widget/FloatingActionButton;

    .line 44
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->playButton:Landroid/support/design/widget/FloatingActionButton;

    .line 45
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    .line 46
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    .line 47
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 48
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->trackLength:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->invalidateAll()V

    .line 51
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 157
    const-string v0, "layout/fragment_audio_player_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view tag isn\'t correct on view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 154
    const v0, 0x7f04003d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 151
    const v0, 0x7f04003d

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 72
    const-string v0, "BINDER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3

    const-wide/16 v8, 0x0

    .line 104
    const-wide/16 v4, 0x0

    .line 105
    .local v4, "dirtyFlags":J
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v4, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mDirtyFlags:J

    .line 107
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "AdultRecordingNewMessageAndroidDrawableSeekbarThumbRecordingAndroidDrawableSeekbarThumbPlayback":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 111
    .local v0, "AdultRecordingNewMessageAndroidDrawableProgressPlaybackAdultRecordNewMessageAndroidDrawableProgressPlayback":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mAdultRecordingNewMessage:Ljava/lang/Boolean;

    .line 113
    .local v2, "adultRecordingNewMessage":Ljava/lang/Boolean;
    and-long v6, v4, v10

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    const-wide/16 v6, 0x8

    or-long/2addr v4, v6

    .line 118
    const-wide/16 v6, 0x20

    or-long/2addr v4, v6

    .line 126
    :goto_0
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020133

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020115

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    :cond_1
    :goto_2
    and-long v6, v4, v10

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_2
    and-long v6, v4, v10

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    .line 143
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_3
    return-void

    .line 108
    .end local v0    # "AdultRecordingNewMessageAndroidDrawableProgressPlaybackAdultRecordNewMessageAndroidDrawableProgressPlayback":Landroid/graphics/drawable/Drawable;
    .end local v1    # "AdultRecordingNewMessageAndroidDrawableSeekbarThumbRecordingAndroidDrawableSeekbarThumbPlayback":Landroid/graphics/drawable/Drawable;
    .end local v2    # "adultRecordingNewMessage":Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 120
    .restart local v0    # "AdultRecordingNewMessageAndroidDrawableProgressPlaybackAdultRecordNewMessageAndroidDrawableProgressPlayback":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "AdultRecordingNewMessageAndroidDrawableSeekbarThumbRecordingAndroidDrawableSeekbarThumbPlayback":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "adultRecordingNewMessage":Ljava/lang/Boolean;
    :cond_4
    const-wide/16 v6, 0x4

    or-long/2addr v4, v6

    .line 121
    const-wide/16 v6, 0x10

    or-long/2addr v4, v6

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020132

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 133
    :cond_6
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020114

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method public getAdultRecordingNewMessage()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mAdultRecordingNewMessage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    monitor-exit p0

    .line 68
    :goto_0
    return v0

    .line 67
    :cond_0
    monitor-exit p0

    .line 68
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->requestRebind()V

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldId"    # I

    .prologue
    .line 97
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public setAdultRecordingNewMessage(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "adultRecordingNewMessage"    # Ljava/lang/Boolean;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mAdultRecordingNewMessage:Ljava/lang/Boolean;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 78
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->setAdultRecordingNewMessage(Ljava/lang/Boolean;)V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
