.class public Lcom/spiraltoys/cloudpets2/PlayStoryActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "PlayStoryActivity.java"


# static fields
.field private static final DISABLED_BUTTON_ALPHA:F = 0.2f

.field private static final EXTRA_PROFILE_ID:Ljava/lang/String; = "extra_profile_id"

.field private static final EXTRA_STORY:Ljava/lang/String; = "extra_story"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

.field private mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

.field mCurrentPage:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mIsPageCompleted:Z

.field private mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field private mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

.field private mShouldStayConnected:Z

.field private mStory:Lcom/spiraltoys/cloudpets2/model/Story;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/PlayStoryActivity;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->unpauseStory()V

    return-void
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->completePage()V

    return-void
.end method

.method private completePage()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mIsPageCompleted:Z

    .line 230
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->updateButtonStates()V

    .line 231
    return-void
.end method

.method private getProfileId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_profile_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPlayingAudio()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStateReadyForStories(Lcom/spiraltoys/cloudpets2/toy/ToyState;)Z
    .locals 1
    .param p1, "state"    # Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .prologue
    .line 366
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseStory()V
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mIsPageCompleted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->pause()V

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->updateButtonStates()V

    .line 238
    return-void
.end method

.method private playAudio(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 7
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 344
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 347
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 348
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->prepare()V

    .line 349
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->start()V

    .line 350
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$6;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$6;-><init>(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 358
    :catch_0
    move-exception v6

    .line 359
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static setButtonState(Landroid/widget/ImageButton;Z)V
    .locals 1
    .param p0, "button"    # Landroid/widget/ImageButton;
    .param p1, "enabled"    # Z

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 329
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 330
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 331
    .local v0, "alpha":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 332
    return-void

    .line 330
    .end local v0    # "alpha":F
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0
.end method

.method public static start(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Story;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 3
    .param p0, "context"    # Lcom/spiraltoys/cloudpets2/BaseActivity;
    .param p1, "story"    # Lcom/spiraltoys/cloudpets2/model/Story;
    .param p2, "childProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_story"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    const-string v1, "extra_profile_id"

    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->overridePendingTransition(II)V

    .line 65
    return-void
.end method

.method private startPage(I)V
    .locals 5
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    invoke-virtual {v3, p1}, Lcom/spiraltoys/cloudpets2/model/Story;->getPage(I)Lcom/spiraltoys/cloudpets2/model/Story$Page;

    move-result-object v1

    .line 209
    .local v1, "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    iput-boolean v2, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mIsPageCompleted:Z

    .line 212
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->pageText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Story$Page;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->pageText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Story$Page;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->pageImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Lcom/spiraltoys/cloudpets2/model/Story$Page;->getImageInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Story$Page;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :try_start_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->getMainExpansionDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getZipResourceFile(Landroid/content/Context;)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v2

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Story$Page;->getAudioPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->playAudio(Landroid/content/res/AssetFileDescriptor;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    iput p1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    .line 224
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->updateButtonVisibilities()V

    .line 225
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->updateButtonStates()V

    .line 226
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private unpauseStory()V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mIsPageCompleted:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->start()V

    .line 249
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->updateButtonStates()V

    .line 250
    return-void

    .line 245
    :cond_1
    iget v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->startPage(I)V

    goto :goto_0
.end method

.method private updateButtonStates()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->previousPageButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mIsPageCompleted:Z

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->setButtonState(Landroid/widget/ImageButton;Z)V

    .line 324
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->nextPageButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mIsPageCompleted:Z

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->setButtonState(Landroid/widget/ImageButton;Z)V

    .line 325
    return-void
.end method

.method private updateButtonVisibilities()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 311
    iget v4, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    move v1, v2

    .line 312
    .local v1, "previousVisibility":I
    :goto_0
    iget v4, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Story;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 314
    .local v0, "nextVisibility":I
    :goto_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->previousPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->nextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 316
    return-void

    .end local v0    # "nextVisibility":I
    .end local v1    # "previousVisibility":I
    :cond_0
    move v1, v3

    .line 311
    goto :goto_0

    .restart local v1    # "previousVisibility":I
    :cond_1
    move v0, v3

    .line 312
    goto :goto_1
.end method


# virtual methods
.method exitStory()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mShouldStayConnected:Z

    .line 69
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->finish()V

    .line 70
    return-void
.end method

.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->pauseStory()V

    .line 182
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080181

    .line 183
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080101

    .line 184
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08006e

    new-instance v2, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$4;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08004c

    new-instance v2, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$3;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V

    .line 198
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v3, 0x7f04002a

    invoke-static {p0, v3}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    .line 76
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_story"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/spiraltoys/cloudpets2/model/Story;

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    .line 80
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    const-class v4, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    .line 81
    .local v1, "profileSelectedForToyDashboardEvent":Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;->getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-nez v3, :cond_1

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getConfigID()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "toyConfigId":Ljava/lang/String;
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-virtual {v3, v2}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->setConfigId(Ljava/lang/String;)V

    .line 97
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-direct {v3, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    .line 100
    .end local v2    # "toyConfigId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->initToolbar()V

    .line 101
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;->getButton()Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    move-result-object v0

    .line 261
    .local v0, "button":Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;
    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->RECORD:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    if-ne v0, v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->previousPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->startPage(I)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->nextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->startPage(I)V

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 5
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    const/4 v4, 0x1

    .line 275
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->isStateReadyForStories(Lcom/spiraltoys/cloudpets2/toy/ToyState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    const v1, 0x7f0801b0

    const v2, 0x7f080116

    const v3, 0x7f080041

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->showProgress(IIIZ)Landroid/app/Dialog;

    move-result-object v0

    .line 277
    .local v0, "waitingForToyDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$5;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$5;-><init>(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->pauseStory()V

    .line 289
    .end local v0    # "waitingForToyDialog":Landroid/app/Dialog;
    :cond_1
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->isStateReadyForStories(Lcom/spiraltoys/cloudpets2/toy/ToyState;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->isStateReadyForStories(Lcom/spiraltoys/cloudpets2/toy/ToyState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeAndStopPlaybackLoop(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 291
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->hideProgress()V

    .line 292
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->isPlayingAudio()Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->unpauseStory()V

    .line 297
    :cond_2
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 298
    return-void
.end method

.method public onNextPageClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000cf
        }
    .end annotation

    .prologue
    .line 307
    iget v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->startPage(I)V

    .line 308
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->onBackPressed()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeState(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->pauseStory()V

    .line 133
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mShouldStayConnected:Z

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->onPause(Z)V

    .line 134
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mute(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)V

    .line 148
    :cond_1
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onPause()V

    .line 149
    return-void
.end method

.method public onPreviousPageClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000cd
        }
    .end annotation

    .prologue
    .line 302
    iget v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->startPage(I)V

    .line 303
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->unpauseStory()V

    .line 156
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->onResume()V

    .line 157
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onStart()V

    .line 118
    iget v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->startPage(I)V

    .line 119
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onStop()V

    .line 124
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onWindowFocusChanged(Z)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 177
    :cond_0
    return-void
.end method
