.class public Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;
.super Landroid/app/Service;
.source "BackgroundMusicService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final INTENT_PAUSE_MUSIC:Ljava/lang/String; = "intent-pause-music"

.field public static final INTENT_RESUME_MUSIC:Ljava/lang/String; = "intent-resume-music"

.field public static final KEY_MUSIC:Ljava/lang/String; = "key-music"

.field public static final KEY_START_PAUSED:Ljava/lang/String; = "key-start-paused"

.field private static mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;


# instance fields
.field private mCurrentTrack:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

.field private mPauseMusicReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeMusicReceiver:Landroid/content/BroadcastReceiver;

.field private mStartPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mStartPaused:Z

    .line 38
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$1;-><init>(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mPauseMusicReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$2;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$2;-><init>(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mResumeMusicReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->isBackgroundMusicEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mStartPaused:Z

    return v0
.end method

.method static synthetic access$202(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mStartPaused:Z

    return p1
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->playTrack(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V

    return-void
.end method

.method private isBackgroundMusicEnabled()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mCurrentTrack:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->FRONT_END:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isAdultDashboardMusicEnabled(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isChildDashboardMusicEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private playTrack(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V
    .locals 9
    .param p1, "track"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mCurrentTrack:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 99
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->isBackgroundMusicEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    :try_start_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 112
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 113
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setLooping(Z)V

    .line 114
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$4;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$4;-><init>(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 123
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 124
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 125
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    const-class v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error playing background music track"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 105
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 106
    .local v8, "ex":Ljava/lang/IllegalStateException;
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 107
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    goto :goto_1

    .line 124
    .end local v8    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method public static startMe(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "track"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->startMe(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;Z)V

    .line 150
    return-void
.end method

.method public static startMe(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;Z)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "track"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .param p2, "startPaused"    # Z
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key-music"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    const-string v1, "key-start-paused"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    return-void
.end method

.method public static stopMe(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 163
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mPauseMusicReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "intent-pause-music"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mResumeMusicReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "intent-resume-music"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 134
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->stop()V

    .line 139
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mPauseMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mResumeMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "pref_adult_dashboard_background_music_enable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->isBackgroundMusicEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mCurrentTrack:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->playTrack(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->pause()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 75
    const-string v1, "key-start-paused"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mStartPaused:Z

    .line 76
    const-string v1, "key-music"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 78
    .local v0, "track":Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mCurrentTrack:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    if-ne v1, v0, :cond_0

    .line 93
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 81
    :cond_0
    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    new-instance v2, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$3;

    invoke-direct {v2, p0, v0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$3;-><init>(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mute(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->playTrack(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V

    goto :goto_0
.end method
