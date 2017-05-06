.class public Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;
.super Landroid/app/Fragment;
.source "RecordVoiceMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final MAX_RECORDING_LENGTH_MS:I = 0x2710

.field private static final MIN_RECORDING_LENGTH_MS:I = 0x64

.field private static final MS_PER_SECOND:I = 0x3e8

.field private static final PROGRESS_START_OFFSET:I = 0x32

.field private static final RECORDINGS_DIR:Ljava/lang/String; = "recordings"

.field private static final RECORDING_FILE_NAME:Ljava/lang/String; = "recording.wav"

.field private static final RECORD_PROGRESS_UPDATE_INTERVAL:I = 0x10

.field private static final TOTAL_PROGRESS_STEPS:I = 0x3e8


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;

.field private mProgressTimer:Ljava/util/Timer;

.field private mProgressUpdateHandler:Landroid/os/Handler;

.field private mRecordTimeoutHandler:Landroid/os/Handler;

.field private mStopRecordingRunnable:Ljava/lang/Runnable;

.field private mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 219
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$4;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mStopRecordingRunnable:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mProgressTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mProgressUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->stopRecording()V

    return-void
.end method

.method private resetProgress()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mProgressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    return-void
.end method

.method private declared-synchronized startRecording()V
    .locals 12

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/RecordingStartedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/RecordingStartedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->recordRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->startRippleAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 123
    .local v7, "outputFile":Ljava/io/File;
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-direct {v0, v7}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    .line 124
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->startRecording()V

    .line 125
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mRecordTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mStopRecordingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mRecordTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mStopRecordingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 129
    .local v10, "startTime":J
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mProgressTimer:Ljava/util/Timer;

    .line 131
    new-instance v8, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;

    invoke-direct {v8, p0, v10, v11}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;J)V

    .line 145
    .local v8, "progressBarUpdater":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mProgressTimer:Ljava/util/Timer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$2;

    invoke-direct {v1, p0, v8}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 152
    .end local v7    # "outputFile":Ljava/io/File;
    .end local v8    # "progressBarUpdater":Ljava/lang/Runnable;
    .end local v10    # "startTime":J
    :catch_0
    move-exception v6

    .line 153
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 114
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopRecording()V
    .locals 8

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->recordRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/views/RippleView;->stopRippleAnimation()V

    .line 163
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mRecordTimeoutHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mStopRecordingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->stopRecording()V

    .line 167
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->resetProgress()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    new-instance v3, Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    new-instance v4, Lcom/android/Convert;

    invoke-direct {v4}, Lcom/android/Convert;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/Convert;->Bytes2Shorts([B)[S

    move-result-object v4

    const/16 v5, 0x3e80

    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;-><init>([SIII)V

    .line 175
    .local v3, "wavAudio":Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getFramesNum()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/audio/WavAudio;->getSampleRate()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 194
    :try_start_3
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 195
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    .end local v3    # "wavAudio":Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 179
    .restart local v3    # "wavAudio":Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "recordings"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v1, "imagePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v4, "recording.wav"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v2, "newFile":Ljava/io/File;
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;

    if-eqz v4, :cond_3

    invoke-static {v3, v2}, Lcom/spiraltoys/cloudpets2/audio/WavUtil;->saveSync(Lcom/spiraltoys/cloudpets2/audio/WavAudio;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;->onVoiceMessageRecorded(Landroid/net/Uri;)V

    .line 189
    .end local v2    # "newFile":Ljava/io/File;
    :cond_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lcom/spiraltoys/cloudpets2/events/RecordingFinishedEvent;

    invoke-direct {v5, v3}, Lcom/spiraltoys/cloudpets2/events/RecordingFinishedEvent;-><init>(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    :try_start_5
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 195
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 191
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v3    # "wavAudio":Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 194
    :try_start_7
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 195
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    goto/16 :goto_0

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 195
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 230
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const v0, 0x7f040056

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    .line 75
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mRecordTimeoutHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mProgressUpdateHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 80
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->currentPlaybackTime:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/util/Utils;->formatAudioTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->trackLength:Landroid/widget/TextView;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/util/Utils;->formatAudioTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;

    .line 241
    return-void
.end method

.method onRecordClicked()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10007d
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method onRecordTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Lbutterknife/OnTouch;
        value = {
            0x7f10007d
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 100
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->startRecording()V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 102
    :cond_3
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->stopRecording()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 202
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mRecordTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mStopRecordingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/RecordingFinishedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/events/RecordingFinishedEvent;-><init>(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->mWavRecorder:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->stopRecording()V

    .line 207
    :cond_0
    return-void
.end method
