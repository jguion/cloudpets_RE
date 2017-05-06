.class public Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "BarnyardSoundsGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;
    }
.end annotation


# static fields
.field private static final ANIMAL_AUDIO_RESOURCE_IDS:[I

.field private static final ANIMAL_AUDIO_SLOTS:[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

.field private static final ANIMAL_SEQUENCE_INDICATOR_RESOURCE_IDS:[I

.field private static final CHECK_INPUT_SEQUENCE_DELAY_MS:J = 0x7d0L

.field private static final CHICKEN_INDEX:I = 0x0

.field private static final CHICKEN_OFFSET_X:D = 0.128

.field private static final CHICKEN_OFFSET_Y:D = -0.655

.field private static final COW_INDEX:I = 0x1

.field private static final COW_OFFSET_X:D = 1.0

.field private static final COW_OFFSET_Y:D = 0.95

.field private static final DELAY_BETWEEN_ANIMAL_SOUNDS:J = 0x3e8L

.field private static final EXTRA_PROFILE_ID:Ljava/lang/String; = "extra_profile_id"

.field private static final GAME_TEXT_FADE_IN_DURATION_MS:J = 0x3e8L

.field private static final GAME_TEXT_FADE_OUT_DURATION_MS:J = 0x3e8L

.field private static final GET_READY_OFFSET_X:D = 0.0

.field private static final GET_READY_OFFSET_Y:D = 0.0

.field private static final GLOW_FADE_IN_DURATION_MS:J = 0x1f4L

.field private static final GLOW_FADE_OUT_DURATION_MS:J = 0x1f4L

.field private static final HORSE_INDEX:I = 0x2

.field private static final HORSE_OFFSET_X:D = -0.02

.field private static final HORSE_OFFSET_Y:D = -0.128

.field private static final INTRO_MUSIC_START_DELAY:J = 0x3e8L

.field private static final LOGO_OFFSET_X:D = 0.0

.field private static final LOGO_OFFSET_Y:D = -0.5

.field private static final MAX_DISCONNECTED_TIME_WITHOUT_REUPLOADING_AUDIO_MS:J = 0xea60L

.field private static final PIG_INDEX:I = 0x3

.field private static final PIG_OFFSET_X:D = -1.0

.field private static final PIG_OFFSET_Y:D = 0.8

.field private static final SUCCESS_SOUND_RESOURCE_IDS:[I

.field private static final SUCCESS_STRING_RESOURCE_IDS:[I

.field private static final SUCCESS_TEXT_OFFSET_X:D = 0.0

.field private static final SUCCESS_TEXT_OFFSET_Y:D = 0.0

.field private static final SUCCESS_TEXT_UPTIME_DELAY_MS:J = 0x4e2L

.field private static final TAP_THE_ANIMALS_ANIMATION_INTERACTION_DELAY_FRACTION:F = 0.5f

.field private static final TAP_THE_ANIMALS_OFFSET_X:D = 0.0

.field private static final TAP_THE_ANIMALS_OFFSET_Y:D = 0.0

.field private static final TAP_TO_START_FADE_OUT_DURATION_MS:J = 0x3e8L

.field private static final TAP_TO_START_OFFSET_X:D = 0.0

.field private static final TAP_TO_START_OFFSET_Y:D = 0.9

.field private static final TRY_AGAIN_BUTTON_NO_OFFSET_X:D = 0.25

.field private static final TRY_AGAIN_BUTTON_NO_OFFSET_Y:D = 0.1

.field private static final TRY_AGAIN_BUTTON_YES_OFFSET_X:D = -0.25

.field private static final TRY_AGAIN_BUTTON_YES_OFFSET_Y:D = 0.1

.field private static final TRY_AGAIN_FADE_IN_DURATION_MS:J = 0x3e8L

.field private static final TRY_AGAIN_FADE_OUT_DURATION_MS:J = 0x1f4L

.field private static final TRY_AGAIN_FRAME_OFFSET_X:D = 0.0

.field private static final TRY_AGAIN_FRAME_OFFSET_Y:D = 0.0

.field private static final TRY_AGAIN_SHOW_DELAY_MS:J = 0xbb8L

.field private static final TRY_AGAIN_TEXT_OFFSET_X:D = 0.0

.field private static final TRY_AGAIN_TEXT_OFFSET_Y:D = -0.15

.field private static final TUTORIAL_FADE_IN_DURATION_MS:J = 0x3e8L

.field private static final TUTORIAL_FADE_OUT_DURATION_MS:J = 0x3e8L


# instance fields
.field private mAnimalMediaPlayer:Landroid/media/MediaPlayer;

.field private mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

.field private mBackgroundImageHeight:I

.field private mBackgroundImageWidth:I

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

.field private mBluetoothOffDialog:Landroid/app/Dialog;

.field private mChickenGlowImageView:Landroid/widget/ImageView;

.field private mChickenImageView:Landroid/widget/ImageView;

.field private mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

.field private mCowGlowImageView:Landroid/widget/ImageView;

.field private mCowImageView:Landroid/widget/ImageView;

.field private mCurrentTrySequenceIndex:I

.field private mCurrentlyPlayingAudioTrackIndex:I

.field private mCurrentlySendingAudioTrackIndex:I

.field private mDisconnectedDialog:Landroid/app/Dialog;

.field private mErrorDialog:Landroid/app/Dialog;

.field private mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

.field private mGameContainerHeight:I

.field private mGameContainerWidth:I

.field private mGetReadyText:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHorseGlowImageView:Landroid/widget/ImageView;

.field private mHorseImageView:Landroid/widget/ImageView;

.field private mIsGameOver:Z

.field private mIsPlayingAudioOnToy:Z

.field private mIsSendingAudioToToy:Z

.field private mIsSequenceInputMode:Z

.field private mIsTapToStartPressed:Z

.field private mLastConnectionTime:J

.field private mLastPlayAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

.field private mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

.field private mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field private mLogo:Landroid/widget/ImageView;

.field private mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

.field private mPigGlowImageView:Landroid/widget/ImageView;

.field private mPigImageView:Landroid/widget/ImageView;

.field private mScale:D

.field private mSendingAudioDialog:Landroid/app/Dialog;

.field private mShouldStayConnected:Z

.field private mSuccessTexts:[Landroid/widget/ImageView;

.field private mSuccessfullySentAudioToToy:Z

.field private mTapTheAnimalsText:Landroid/widget/ImageView;

.field private mTapToStartOverlay:Landroid/widget/FrameLayout;

.field private mTapToStartText:Landroid/widget/ImageView;

.field private mTryAgainLayout:Landroid/widget/FrameLayout;

.field private mTryAgainNoButton:Landroid/widget/ImageView;

.field private mTryAgainYesButton:Landroid/widget/ImageView;

.field private mTrySequence:[I

.field private mTutorialTapToStartText:Landroid/widget/ImageView;

.field private mWorldClippingX:I

.field private mWorldClippingY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x4

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_AUDIO_RESOURCE_IDS:[I

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_SEQUENCE_INDICATOR_RESOURCE_IDS:[I

    .line 146
    new-array v0, v1, [Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    const/4 v1, 0x0

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_1:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_2:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v2, v0, v1

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_3:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_4:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_AUDIO_SLOTS:[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .line 153
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->SUCCESS_STRING_RESOURCE_IDS:[I

    .line 158
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->SUCCESS_SOUND_RESOURCE_IDS:[I

    return-void

    .line 132
    :array_0
    .array-data 4
        0x7f070000
        0x7f070001
        0x7f070003
        0x7f070005
    .end array-data

    .line 139
    :array_1
    .array-data 4
        0x7f02006b
        0x7f02006c
        0x7f02006d
        0x7f02006e
    .end array-data

    .line 153
    :array_2
    .array-data 4
        0x7f020065
        0x7f020063
    .end array-data

    .line 158
    :array_3
    .array-data 4
        0x7f070006
        0x7f070007
        0x7f070008
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->calculateWorldMetrics()V

    return-void
.end method

.method static synthetic access$1000(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addTapTheAnimalsText()V

    return-void
.end method

.method static synthetic access$1100(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addTryAgain()V

    return-void
.end method

.method static synthetic access$1200(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addSuccessTexts()V

    return-void
.end method

.method static synthetic access$1300(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addAnimalSequenceIndicatorBar()V

    return-void
.end method

.method static synthetic access$1400(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playMusicTrack(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->exitGame()V

    return-void
.end method

.method static synthetic access$1700(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSequenceInputMode:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->startSequenceInputMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addChicken()V

    return-void
.end method

.method static synthetic access$2000(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapTheAnimalsText:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100()[I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_SEQUENCE_INDICATOR_RESOURCE_IDS:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showTryAgain()V

    return-void
.end method

.method static synthetic access$2300(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->fadeOutGetReadyTextAndStart()V

    return-void
.end method

.method static synthetic access$2400(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playCurrentSequenceOnToy()V

    return-void
.end method

.method static synthetic access$2500(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->checkInputSequenceForPassFail()V

    return-void
.end method

.method static synthetic access$2600(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->startNextLevel()V

    return-void
.end method

.method static synthetic access$2800(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapToStartOverlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addHorse()V

    return-void
.end method

.method static synthetic access$3000(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showTutorial()V

    return-void
.end method

.method static synthetic access$3100(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTutorialTapToStartText:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChickenGlowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCowGlowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHorseGlowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mPigGlowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playNextSoundOnToy()V

    return-void
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addPig()V

    return-void
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addCow()V

    return-void
.end method

.method static synthetic access$600(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addLogo()V

    return-void
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addTapToStartText()V

    return-void
.end method

.method static synthetic access$800(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addTapToStartOverlay()V

    return-void
.end method

.method static synthetic access$900(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addGetReadyText()V

    return-void
.end method

.method private addAnimalSequenceIndicatorBar()V
    .locals 3

    .prologue
    .line 1036
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    .line 1037
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1038
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1039
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    const v2, 0x7f02006f

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1040
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 1042
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1043
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1044
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->gameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    return-void
.end method

.method private addAnimalToTrySequence(I)V
    .locals 7
    .param p1, "animalIndex"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 749
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTrySequence:[I

    iget v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentTrySequenceIndex:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentTrySequenceIndex:I

    aput p1, v0, v1

    .line 751
    sget-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_SEQUENCE_INDICATOR_RESOURCE_IDS:[I

    aget v1, v0, p1

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDDLandroid/view/ViewGroup;)Landroid/widget/ImageView;

    .line 753
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isTrySequenceFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->finishSequenceInputMode()V

    .line 756
    :cond_0
    return-void
.end method

.method private addChicken()V
    .locals 6

    .prologue
    const-wide v2, 0x3fc0624dd2f1a9fcL    # 0.128

    const-wide v4, -0x401b0a3d70a3d70aL    # -0.655

    .line 919
    const v1, 0x7f02005e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChickenImageView:Landroid/widget/ImageView;

    .line 920
    const v1, 0x7f02005f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChickenGlowImageView:Landroid/widget/ImageView;

    .line 921
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChickenGlowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 922
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChickenGlowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 923
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChickenImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$24;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$24;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    return-void
.end method

.method private addCow()V
    .locals 6

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3fee666666666666L    # 0.95

    .line 945
    const v1, 0x7f020060

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCowImageView:Landroid/widget/ImageView;

    .line 946
    const v1, 0x7f020061

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCowGlowImageView:Landroid/widget/ImageView;

    .line 947
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCowGlowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 948
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCowGlowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 949
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCowImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$26;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$26;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    return-void
.end method

.method private addGetReadyText()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 972
    const v1, 0x7f020064

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGetReadyText:Landroid/widget/ImageView;

    .line 973
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGetReadyText:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 974
    return-void
.end method

.method private addHorse()V
    .locals 6

    .prologue
    const-wide v4, -0x403f9db22d0e5604L    # -0.128

    const-wide v2, -0x406b851eb851eb85L    # -0.02

    .line 906
    const v1, 0x7f020066

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHorseImageView:Landroid/widget/ImageView;

    .line 907
    const v1, 0x7f020067

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHorseGlowImageView:Landroid/widget/ImageView;

    .line 908
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHorseGlowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 909
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHorseGlowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 910
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHorseImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$23;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$23;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    return-void
.end method

.method private addLogo()V
    .locals 7

    .prologue
    .line 958
    const v1, 0x7f020068

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLogo:Landroid/widget/ImageView;

    .line 959
    const v0, 0x7f05000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 960
    .local v6, "slideDown":Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 961
    return-void
.end method

.method private addPig()V
    .locals 6

    .prologue
    const-wide v4, 0x3fe999999999999aL    # 0.8

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 932
    const v1, 0x7f020069

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mPigImageView:Landroid/widget/ImageView;

    .line 933
    const v1, 0x7f02006a

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mPigGlowImageView:Landroid/widget/ImageView;

    .line 934
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mPigGlowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 935
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mPigGlowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 936
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mPigImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$25;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$25;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    return-void
.end method

.method private addSuccessTexts()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 1027
    sget-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->SUCCESS_STRING_RESOURCE_IDS:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessTexts:[Landroid/widget/ImageView;

    .line 1029
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->SUCCESS_STRING_RESOURCE_IDS:[I

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 1030
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessTexts:[Landroid/widget/ImageView;

    sget-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->SUCCESS_STRING_RESOURCE_IDS:[I

    aget v1, v0, v6

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    aput-object v0, v7, v6

    .line 1031
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessTexts:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1033
    :cond_0
    return-void
.end method

.method private addTapTheAnimalsText()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 997
    const v1, 0x7f020072

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapTheAnimalsText:Landroid/widget/ImageView;

    .line 998
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapTheAnimalsText:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 999
    return-void
.end method

.method private addTapToStartOverlay()V
    .locals 9

    .prologue
    const v8, 0x10102eb

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 977
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapToStartOverlay:Landroid/widget/FrameLayout;

    .line 978
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 981
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 982
    .local v3, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v8, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 983
    new-array v1, v7, [I

    aput v8, v1, v5

    .line 984
    .local v1, "attribute":[I
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v4, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 985
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 987
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->gameContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapToStartOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapToStartOverlay:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$27;

    invoke-direct {v5, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$27;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    return-void
.end method

.method private addTapToStartText()V
    .locals 7

    .prologue
    const v1, 0x7f020073

    .line 964
    const-wide/16 v2, 0x0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDD)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapToStartText:Landroid/widget/ImageView;

    .line 965
    const v0, 0x7f05000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 966
    .local v6, "pulseAnimation":Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapToStartText:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 968
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialButtonContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(ILandroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTutorialTapToStartText:Landroid/widget/ImageView;

    .line 969
    return-void
.end method

.method private addTryAgain()V
    .locals 10

    .prologue
    const/4 v5, -0x1

    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide/16 v2, 0x0

    .line 1002
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    .line 1003
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->gameContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1006
    const v1, 0x7f020075

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDDLandroid/view/ViewGroup;)Landroid/widget/ImageView;

    .line 1007
    const v1, 0x7f020074

    const-wide v4, -0x403ccccccccccccdL    # -0.15

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDDLandroid/view/ViewGroup;)Landroid/widget/ImageView;

    .line 1008
    const v1, 0x7f02005c

    const-wide/high16 v2, -0x4030000000000000L    # -0.25

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    move-object v0, p0

    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDDLandroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainYesButton:Landroid/widget/ImageView;

    .line 1009
    const v1, 0x7f02005b

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    move-object v0, p0

    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDDLandroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainNoButton:Landroid/widget/ImageView;

    .line 1011
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainYesButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$28;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$28;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1018
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainNoButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$29;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$29;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    return-void
.end method

.method private addWorldScaledResource(IDD)Landroid/widget/ImageView;
    .locals 8
    .param p1, "resourceId"    # I
    .param p2, "offsetX"    # D
    .param p4, "offsetY"    # D

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v6, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->gameContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addWorldScaledResource(IDDLandroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method private addWorldScaledResource(IDDLandroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 8
    .param p1, "resourceId"    # I
    .param p2, "offsetX"    # D
    .param p4, "offsetY"    # D
    .param p6, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1052
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1053
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getWorldScaledBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1055
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/16 v4, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1056
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerWidth:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mWorldClippingX:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, p2

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mWorldClippingX:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1057
    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerHeight:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mWorldClippingY:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, p4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mWorldClippingY:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1059
    invoke-virtual {p6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    return-object v0
.end method

.method private addWorldScaledResource(ILandroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 8
    .param p1, "resourceId"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1065
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1066
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getWorldScaledBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1068
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1069
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    return-object v0
.end method

.method private animateChickenClicked()V
    .locals 4

    .prologue
    .line 870
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChickenGlowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$19;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$19;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 876
    return-void
.end method

.method private animateCowClicked()V
    .locals 4

    .prologue
    .line 879
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCowGlowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$20;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$20;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 885
    return-void
.end method

.method private animateHorseClicked()V
    .locals 4

    .prologue
    .line 888
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHorseGlowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$21;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$21;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 894
    return-void
.end method

.method private animatePigClicked()V
    .locals 4

    .prologue
    .line 897
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mPigGlowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$22;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$22;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 903
    return-void
.end method

.method private calculateWorldMetrics()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 402
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBackgroundImageWidth:I

    .line 403
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBackgroundImageHeight:I

    .line 404
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->gameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerWidth:I

    .line 405
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->gameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerHeight:I

    .line 407
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBackgroundImageHeight:I

    int-to-double v0, v0

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBackgroundImageWidth:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerHeight:I

    int-to-double v2, v2

    iget v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerWidth:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 408
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerHeight:I

    int-to-double v0, v0

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBackgroundImageHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    .line 413
    :goto_0
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBackgroundImageWidth:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerWidth:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    div-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mWorldClippingX:I

    .line 414
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBackgroundImageHeight:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerHeight:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    div-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mWorldClippingY:I

    .line 415
    return-void

    .line 410
    :cond_0
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGameContainerWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBackgroundImageWidth:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    goto :goto_0
.end method

.method private cancelSequenceInputMode()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSequenceInputMode:Z

    .line 713
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 714
    return-void
.end method

.method private checkInputSequenceForPassFail()V
    .locals 6

    .prologue
    .line 717
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTrySequence:[I

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->getCurrentSequence()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessTexts:[Landroid/widget/ImageView;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 720
    .local v0, "randomSuccessTextIndex":I
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessTexts:[Landroid/widget/ImageView;

    aget-object v1, v2, v0

    .line 721
    .local v1, "successText":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 722
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;

    invoke-direct {v3, p0, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 735
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 737
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playRandomSuccessTrack()V

    .line 742
    .end local v0    # "randomSuccessTextIndex":I
    .end local v1    # "successText":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onGameOver()V

    goto :goto_0
.end method

.method private exitGame()V
    .locals 2

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mShouldStayConnected:Z

    .line 397
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onBackPressed()V

    .line 398
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->overridePendingTransition(II)V

    .line 399
    return-void
.end method

.method private fadeOutGetReadyTextAndStart()V
    .locals 4

    .prologue
    .line 684
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGetReadyText:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$13;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$13;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 690
    return-void
.end method

.method private finishSequenceInputMode()V
    .locals 4

    .prologue
    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSequenceInputMode:Z

    .line 701
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$14;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$14;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 709
    return-void
.end method

.method private getProfileId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_profile_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getToySlotForCurrentGameSequenceIndex(I)Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
    .locals 3
    .param p1, "gameSequenceIndex"    # I

    .prologue
    .line 797
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->getCurrentSequence()[I

    move-result-object v1

    aget v0, v1, p1

    .line 798
    .local v0, "slotIndex":I
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->values()[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method private getUriForRawResource(I)Landroid/net/Uri;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getWorldScaledBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "resourceId"    # I

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mScale:D

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, p1, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private hideBluetoothOffDialog()V
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideProgress()V

    .line 1108
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideErrorDialog()V

    .line 1109
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1111
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showDisconnectedDialog()V

    .line 1115
    :cond_0
    return-void
.end method

.method private hideDisconnectedDialog()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mDisconnectedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideProgress()V

    .line 1151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mDisconnectedDialog:Landroid/app/Dialog;

    .line 1153
    :cond_0
    return-void
.end method

.method private hideErrorDialog()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 1163
    :cond_0
    return-void
.end method

.method private hideLogo()Z
    .locals 2

    .prologue
    .line 807
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    const/4 v1, 0x0

    .line 831
    :goto_0
    return v1

    .line 811
    :cond_0
    const v1, 0x7f050010

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 812
    .local v0, "slideUp":Landroid/view/animation/Animation;
    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$16;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$16;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 830
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 831
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private hideTapToStart()V
    .locals 4

    .prologue
    .line 835
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapToStartText:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 836
    return-void
.end method

.method private hideTryAgain()V
    .locals 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 867
    return-void
.end method

.method private hideTutorial()V
    .locals 4

    .prologue
    .line 850
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$18;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$18;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 857
    return-void
.end method

.method private highlightCurrentlyPlayingAnimal()V
    .locals 3

    .prologue
    .line 779
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->getCurrentSequence()[I

    move-result-object v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlyPlayingAudioTrackIndex:I

    aget v0, v1, v2

    .line 780
    .local v0, "animalIndex":I
    packed-switch v0, :pswitch_data_0

    .line 794
    :goto_0
    return-void

    .line 782
    :pswitch_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->animateChickenClicked()V

    goto :goto_0

    .line 785
    :pswitch_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->animateCowClicked()V

    goto :goto_0

    .line 788
    :pswitch_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->animateHorseClicked()V

    goto :goto_0

    .line 791
    :pswitch_3
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->animatePigClicked()V

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isToyAudioExpired()Z
    .locals 4

    .prologue
    .line 1220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastConnectionTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTrySequenceFull()Z
    .locals 2

    .prologue
    .line 759
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentTrySequenceIndex:I

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTrySequence:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playAnimalTrackIfNotCurrentlyPlaying(I)Z
    .locals 2
    .param p1, "trackResourceId"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    .line 429
    :cond_1
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    .line 430
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 431
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$5;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$5;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 439
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private playCurrentSequenceOnToy()V
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlyPlayingAudioTrackIndex:I

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsPlayingAudioOnToy:Z

    .line 765
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playCurrentSoundOnToy()V

    .line 766
    return-void
.end method

.method private playCurrentSoundOnToy()V
    .locals 4

    .prologue
    .line 774
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlyPlayingAudioTrackIndex:I

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getToySlotForCurrentGameSequenceIndex(I)Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    move-result-object v0

    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->getRelativeToyVolume(Landroid/content/Context;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->triggerSlotPlayback(Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;D)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastPlayAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 775
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->highlightCurrentlyPlayingAnimal()V

    .line 776
    return-void
.end method

.method private playMusicTrack(I)Z
    .locals 8
    .param p1, "trackResourceId"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 448
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 449
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 451
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 452
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 453
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->prepare()V

    .line 454
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->start()V

    .line 455
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$6;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$6;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 462
    :catch_0
    move-exception v7

    .line 463
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private playNextSoundOnToy()V
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlyPlayingAudioTrackIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlyPlayingAudioTrackIndex:I

    .line 770
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playCurrentSoundOnToy()V

    .line 771
    return-void
.end method

.method private playRandomSuccessTrack()V
    .locals 3

    .prologue
    .line 745
    sget-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->SUCCESS_SOUND_RESOURCE_IDS:[I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->SUCCESS_SOUND_RESOURCE_IDS:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playMusicTrack(I)Z

    .line 746
    return-void
.end method

.method private showBluetoothOffDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1079
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1080
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08016e

    .line 1081
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080076

    .line 1082
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080067

    new-instance v2, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$31;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$31;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    .line 1083
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080040

    new-instance v2, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$30;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$30;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    .line 1089
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 1095
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 1096
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    .line 1099
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideProgress()V

    .line 1100
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideErrorDialog()V

    .line 1101
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideDisconnectedDialog()V

    .line 1103
    :cond_1
    return-void
.end method

.method private showDisconnectedDialog()V
    .locals 4

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mDisconnectedDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideProgress()V

    .line 1135
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideErrorDialog()V

    .line 1136
    const v0, 0x7f080185

    const v1, 0x7f080107

    const v2, 0x7f080040

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showProgress(IIIZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mDisconnectedDialog:Landroid/app/Dialog;

    .line 1138
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mDisconnectedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mDisconnectedDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$32;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$32;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1156
    invoke-static {p0, p1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mErrorDialog:Landroid/app/Dialog;

    .line 1157
    return-void
.end method

.method private showOrHideBluetoothOffDialog()V
    .locals 1

    .prologue
    .line 1118
    invoke-static {}, Lcom/spiraltoys/cloudpets2/util/Utils;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideBluetoothOffDialog()V

    .line 1123
    :goto_0
    return-void

    .line 1121
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showBluetoothOffDialog()V

    goto :goto_0
.end method

.method private showTryAgain()V
    .locals 4

    .prologue
    .line 860
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 861
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 863
    return-void
.end method

.method private showTutorial()V
    .locals 4

    .prologue
    .line 839
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialOverlay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 840
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialOverlay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$17;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$17;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 847
    return-void
.end method

.method public static start(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 3
    .param p0, "context"    # Lcom/spiraltoys/cloudpets2/BaseActivity;
    .param p1, "childProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_profile_id"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->overridePendingTransition(II)V

    .line 233
    return-void
.end method

.method private startLevel()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 672
    iput-boolean v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsGameOver:Z

    .line 673
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGetReadyText:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 674
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGetReadyText:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGetReadyText:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$12;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$12;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 681
    return-void
.end method

.method private startNextLevel()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->nextSequence()[I

    .line 668
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->startLevel()V

    .line 669
    return-void
.end method

.method private startSequenceInputMode()V
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSequenceInputMode:Z

    .line 694
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->getCurrentSequence()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTrySequence:[I

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentTrySequenceIndex:I

    .line 696
    return-void
.end method

.method private unloadChildImageViews(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 312
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 313
    check-cast v1, Landroid/view/ViewGroup;

    .line 314
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 315
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->unloadChildImageViews(Landroid/view/View;)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 318
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    :cond_1
    return-void
.end method

.method private uploadAnimalAudioToToyIfGameIsStarted()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1271
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsTapToStartPressed:Z

    if-nez v0, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideProgress()V

    .line 1276
    iput v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    .line 1277
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSendingAudioToToy:Z

    .line 1278
    const v0, 0x7f0801ab

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showProgress(Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSendingAudioDialog:Landroid/app/Dialog;

    .line 1279
    sget-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_AUDIO_RESOURCE_IDS:[I

    iget v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getUriForRawResource(I)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_AUDIO_SLOTS:[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->sendGameAudioToToy(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method onAudioUploadComplete()V
    .locals 2

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideLogo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->startLevel()V

    .line 561
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 377
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080186

    .line 378
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080109

    .line 379
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08006e

    new-instance v2, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$4;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    .line 380
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08004c

    const/4 v2, 0x0

    .line 386
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 388
    return-void
.end method

.method onChickenClicked()V
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSequenceInputMode:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x7f070000

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playAnimalTrackIfNotCurrentlyPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->animateChickenClicked()V

    .line 482
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addAnimalToTrySequence(I)V

    .line 484
    :cond_0
    return-void
.end method

.method onCowClicked()V
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSequenceInputMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070001

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playAnimalTrackIfNotCurrentlyPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->animateCowClicked()V

    .line 489
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addAnimalToTrySequence(I)V

    .line 491
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 238
    const v3, 0x7f04001b

    invoke-static {p0, v3}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    .line 239
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 241
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHandler:Landroid/os/Handler;

    .line 243
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->gameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$1;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 268
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    const-class v4, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    .line 269
    .local v1, "profileSelectedForToyDashboardEvent":Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;->getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-nez v3, :cond_1

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 283
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getConfigID()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "toyConfigId":Ljava/lang/String;
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-virtual {v3, v2}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->setConfigId(Ljava/lang/String;)V

    .line 285
    new-instance v3, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-direct {v3, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    .line 286
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialCharacter:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getCharacter()Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v4

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getGameAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    .end local v2    # "toyConfigId":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$2;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->setVolumeControlStream(I)V

    .line 299
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->initToolbar()V

    .line 300
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method onCurrentSequencePlaybackOnToyComplete()V
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapTheAnimalsText:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 565
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapTheAnimalsText:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTapTheAnimalsText:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$9;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$9;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$8;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$8;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    .line 571
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 581
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->unloadChildImageViews(Landroid/view/View;)V

    .line 308
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onDestroy()V

    .line 309
    return-void
.end method

.method onDontTryAgainClicked()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    const v0, 0x7f070002

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playMusicTrack(I)Z

    .line 554
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;)V
    .locals 6
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1247
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    sget-object v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_AUDIO_RESOURCE_IDS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1249
    iput-boolean v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSendingAudioToToy:Z

    .line 1250
    iput-boolean v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessfullySentAudioToToy:Z

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSendingAudioDialog:Landroid/app/Dialog;

    .line 1252
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onAudioUploadComplete()V

    .line 1253
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideErrorDialog()V

    .line 1254
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideProgress()V

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    .line 1257
    sget-object v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_AUDIO_RESOURCE_IDS:[I

    iget v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getUriForRawResource(I)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_AUDIO_SLOTS:[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->sendGameAudioToToy(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 1258
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSendingAudioDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSendingAudioDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSendingAudioDialog:Landroid/app/Dialog;

    const v1, 0x7f0801ab

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f090000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlySendingAudioTrackIndex:I

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->updateProgress(F)V

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;

    .prologue
    const/4 v1, 0x0

    .line 1224
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;)V

    .line 1226
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 1228
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getToyState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSendingAudioToToy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsPlayingAudioOnToy:Z

    if-eqz v0, :cond_3

    .line 1229
    :cond_0
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSendingAudioToToy:Z

    .line 1230
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsPlayingAudioOnToy:Z

    .line 1231
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mDisconnectedDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 1232
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideProgress()V

    .line 1234
    :cond_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideErrorDialog()V

    .line 1235
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 1244
    :cond_2
    :goto_0
    return-void

    .line 1240
    :cond_3
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getToyState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_2

    .line 1241
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideErrorDialog()V

    .line 1242
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 4
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    .line 1167
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V

    .line 1168
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getConfigID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1172
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1173
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onToyReconnected()V

    .line 1180
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastConnectionTime:J

    .line 1185
    :cond_2
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1186
    :cond_3
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessfullySentAudioToToy:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isToyAudioExpired()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1187
    :cond_4
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->uploadAnimalAudioToToyIfGameIsStarted()V

    .line 1194
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessfullySentAudioToToy:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSendingAudioToToy:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_7

    .line 1195
    :cond_6
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->uploadAnimalAudioToToyIfGameIsStarted()V

    .line 1199
    :cond_7
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mSuccessfullySentAudioToToy:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsPlayingAudioOnToy:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_8

    .line 1200
    iget v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mCurrentlyPlayingAudioTrackIndex:I

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->getCurrentSequence()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_c

    .line 1201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsPlayingAudioOnToy:Z

    .line 1202
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onCurrentSequencePlaybackOnToyComplete()V

    .line 1213
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 1215
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showOrHideBluetoothOffDialog()V

    .line 1217
    :cond_9
    return-void

    .line 1175
    :cond_a
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onToyDisconnected()V

    goto/16 :goto_0

    .line 1188
    :cond_b
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsTapToStartPressed:Z

    if-eqz v0, :cond_5

    .line 1189
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeState(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_1

    .line 1204
    :cond_c
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$33;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$33;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;

    .prologue
    .line 1267
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;->getPercentage()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->updateProgress(F)V

    .line 1268
    return-void
.end method

.method onGameOver()V
    .locals 10

    .prologue
    .line 589
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsGameOver:Z

    .line 590
    const v5, 0x7f070004

    invoke-direct {p0, v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playMusicTrack(I)Z

    .line 592
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->getCurrentSequence()[I

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 593
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->getCurrentSequence()[I

    move-result-object v5

    aget v0, v5, v3

    .line 594
    .local v0, "correctAnswer":I
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTrySequence:[I

    aget v2, v5, v3

    .line 595
    .local v2, "givenAnswer":I
    if-eq v2, v0, :cond_0

    .line 596
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 597
    .local v4, "indicator":Landroid/widget/ImageView;
    const v5, 0x7f05000a

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 598
    .local v1, "dropOutAnimation":Landroid/view/animation/Animation;
    new-instance v5, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;

    invoke-direct {v5, p0, v4, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;Landroid/widget/ImageView;I)V

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 632
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 592
    .end local v1    # "dropOutAnimation":Landroid/view/animation/Animation;
    .end local v4    # "indicator":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    .end local v0    # "correctAnswer":I
    .end local v2    # "givenAnswer":I
    :cond_1
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$11;

    invoke-direct {v6, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$11;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 645
    return-void
.end method

.method onHorseClicked()V
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSequenceInputMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070003

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playAnimalTrackIfNotCurrentlyPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->animateHorseClicked()V

    .line 496
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addAnimalToTrySequence(I)V

    .line 498
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 330
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 327
    :pswitch_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onBackPressed()V

    .line 328
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onPause()V

    .line 350
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeState(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mShouldStayConnected:Z

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->onPause(Z)V

    .line 356
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mute(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)V

    .line 367
    :cond_1
    return-void
.end method

.method onPigClicked()V
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsSequenceInputMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070005

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playAnimalTrackIfNotCurrentlyPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->animatePigClicked()V

    .line 503
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->addAnimalToTrySequence(I)V

    .line 505
    :cond_0
    return-void
.end method

.method onReadyToStartGame()V
    .locals 2

    .prologue
    .line 584
    new-instance v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    sget-object v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_AUDIO_RESOURCE_IDS:[I

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;I)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    .line 585
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->startNextLevel()V

    .line 586
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onResume()V

    .line 372
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->onResume()V

    .line 373
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onStart()V

    .line 337
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 343
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onStop()V

    .line 344
    return-void
.end method

.method onTapToStartOverlayClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 508
    iget-boolean v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsTapToStartPressed:Z

    if-eqz v2, :cond_0

    .line 534
    :goto_0
    return-void

    .line 512
    :cond_0
    iput-boolean v5, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsTapToStartPressed:Z

    .line 514
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .line 516
    .local v0, "lastToyStateEvent":Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;
    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v2

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 518
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getConfigID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mLastToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyState;->PLAYING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v2, v3, :cond_3

    .line 519
    :cond_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->uploadAnimalAudioToToyIfGameIsStarted()V

    .line 533
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideTapToStart()V

    goto :goto_0

    .line 521
    :cond_3
    const v2, 0x7f0801b0

    const v3, 0x7f080116

    const v4, 0x7f080040

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showProgress(IIIZ)Landroid/app/Dialog;

    move-result-object v1

    .line 522
    .local v1, "waitingForToyDialog":Landroid/app/Dialog;
    if-eqz v1, :cond_2

    .line 523
    new-instance v2, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$7;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$7;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1
.end method

.method onToyDisconnected()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsGameOver:Z

    if-nez v0, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->cancelSequenceInputMode()V

    .line 652
    :cond_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/util/Utils;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideBluetoothOffDialog()V

    .line 654
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showDisconnectedDialog()V

    .line 656
    :cond_1
    return-void
.end method

.method onToyReconnected()V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideDisconnectedDialog()V

    .line 661
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mGame:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mIsGameOver:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isToyAudioExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->startLevel()V

    .line 664
    :cond_0
    return-void
.end method

.method onTryAgainClicked()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mTryAgainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalSequenceIndicatorBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 543
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideTryAgain()V

    .line 544
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onReadyToStartGame()V

    goto :goto_0
.end method

.method onTutorialOverlayClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10008f
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideTutorial()V

    goto :goto_0
.end method
