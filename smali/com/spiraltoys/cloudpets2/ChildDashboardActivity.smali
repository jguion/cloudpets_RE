.class public Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;
.super Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;
.source "ChildDashboardActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;
.implements Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment$OnChildDashboardLullabiesInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$OnChildDashboardLullabyInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment$OnChildDashboardStoriesInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$OnChildDashboardStoryInteractionListener;


# static fields
.field private static final EXTRA_PROFILE_ID:Ljava/lang/String; = "extra_profile_id"

.field private static final EXTRA_SKIP_SPLASH_SCREEN:Ljava/lang/String; = "extra_skip_splash_screen"

.field private static final TAG_DIALOG_FRAGMENT:Ljava/lang/String; = "tag_dialog_fragment"

.field private static final VISITING_CLOUDPET_DISPLAY_DURATION_MS:I = 0xabe

.field private static final VISITING_CLOUDPET_FADE_TRANSITION_DURATION_MS:I = 0x1f4


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

.field private mBluetoothOffDialog:Landroid/app/Dialog;

.field private mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

.field private mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

.field private mHandler:Landroid/os/Handler;

.field private mHideVisitingCloudPetOverlayRunnable:Ljava/lang/Runnable;

.field private mIsSendingAudioToToy:Z

.field mIsSendingLullabyToToy:Z
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mIsSendingMessageToServer:Z

.field private mLastLullabyStepCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

.field private mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

.field mLullabyAudioUri:Landroid/net/Uri;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mLullabyPlaybackDuration:J
    .annotation build Licepick/State;
    .end annotation
.end field

.field mLullabyVolume:D
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mShouldStayConnected:Z

.field mTempMessageUri:Landroid/net/Uri;
    .annotation build Licepick/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;-><init>()V

    .line 846
    new-instance v0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mHideVisitingCloudPetOverlayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    return-object v0
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingAudioToToy:Z

    return p1
.end method

.method static synthetic access$202(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    return-object p1
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->updateNewMessageCount()V

    return-void
.end method

.method static synthetic access$502(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingMessageToServer:Z

    return p1
.end method

.method static synthetic access$600(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->popChildDashboardDialogFragmentBackStack()V

    return-void
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->checkIfiInitialChildHelpDisplayed()V

    return-void
.end method

.method static synthetic access$800(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showBluetoothOffDialogIfNeeded()V

    return-void
.end method

.method private checkIfiInitialChildHelpDisplayed()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isInitialChildHelpComplete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showHelpDialog()V

    .line 842
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->setInitialChildHelpComplete(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 844
    :cond_0
    return-void
.end method

.method private getConfigID()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 590
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getProfileType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 591
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-object v0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getConfigID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDialogFragmentTransaction()Landroid/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 449
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tag_dialog_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 450
    .local v1, "prev":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 453
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 455
    return-object v0
.end method

.method private getProfileId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_profile_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideBluetoothOffDialog()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 626
    :cond_0
    return-void
.end method

.method private isSplashScreenSkipped()Z
    .locals 3

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_skip_splash_screen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private markVoiceMessageAsViewed(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 2
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isViewed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setViewed(Z)V

    .line 441
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->saveEventually()Lbolts/Task;

    .line 442
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageMarkedAsViewedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageMarkedAsViewedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 444
    :cond_0
    return-void
.end method

.method private onLullabySentToCloudPet()V
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingLullabyToToy:Z

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLastLullabyStepCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 816
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideProgress()V

    .line 817
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->popChildDashboardDialogFragmentBackStack()V

    .line 818
    return-void
.end method

.method private onMessageSentToCloudPet()V
    .locals 2

    .prologue
    .line 806
    const v0, 0x7f0800f4

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingAudioToToy:Z

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 809
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideProgress()V

    .line 810
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->popChildDashboardDialogFragmentBackStack()V

    .line 811
    return-void
.end method

.method private popChildDashboardDialogFragmentBackStack()V
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->onBackPressed()V

    .line 803
    :cond_0
    return-void
.end method

.method private setupAds()V
    .locals 5

    .prologue
    .line 215
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v4, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 233
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v4, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 234
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    const-string v4, "02c666be09378a75"

    .line 235
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 238
    .local v1, "bannerAdRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 241
    new-instance v2, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 242
    .local v2, "interstitialAd":Lcom/google/android/gms/ads/InterstitialAd;
    const v3, 0x7f0801c9

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 243
    new-instance v3, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Lcom/google/android/gms/ads/InterstitialAd;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 252
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v4, "02c666be09378a75"

    .line 253
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 256
    .local v0, "InterstitialAdRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 257
    return-void
.end method

.method private showBluetoothOffDialogIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    invoke-static {}, Lcom/spiraltoys/cloudpets2/util/Utils;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 599
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08016e

    .line 601
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f080075

    .line 602
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f080067

    .line 605
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$7;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$7;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    .line 606
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 612
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    .line 614
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 615
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 620
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideBluetoothOffDialog()V

    goto :goto_0
.end method

.method private showDownloadingAudioDialog()V
    .locals 3

    .prologue
    .line 459
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->newInstance(Z)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    .line 460
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getDialogFragmentTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "tag_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method private showHelpDialog()V
    .locals 3

    .prologue
    .line 495
    invoke-static {}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->newHelpInstance()Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    .line 496
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getDialogFragmentTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "tag_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method private showLullabiesDialog()V
    .locals 3

    .prologue
    .line 479
    invoke-static {}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->newInstance()Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    move-result-object v0

    .line 480
    .local v0, "premiumDialogFragment":Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getDialogFragmentTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method private showRecordedToyAudioDialog(Landroid/net/Uri;)V
    .locals 3
    .param p1, "recordedAudioUri"    # Landroid/net/Uri;

    .prologue
    .line 470
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->newInstance(Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    .line 471
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getDialogFragmentTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "tag_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method private showStoriesDialog()V
    .locals 3

    .prologue
    .line 489
    invoke-static {}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->newInstance()Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    move-result-object v0

    .line 490
    .local v0, "premiumDialogFragment":Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getDialogFragmentTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method private showVoiceMessagesDialog()V
    .locals 3

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->newMessagesInstance(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    .line 466
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getDialogFragmentTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "tag_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method public static start(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Profile;Z)V
    .locals 3
    .param p0, "context"    # Lcom/spiraltoys/cloudpets2/BaseActivity;
    .param p1, "childProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "skipSplashScreen"    # Z

    .prologue
    .line 141
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    invoke-direct {v2, p1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_skip_splash_screen"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string v1, "extra_profile_id"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method private updateNewMessageCount()V
    .locals 4

    .prologue
    .line 868
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isParentalControlEnabled(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$11;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$11;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->countLocalNewMessages(Lcom/spiraltoys/cloudpets2/model/Profile;ZZLcom/parse/CountCallback;)V

    .line 876
    return-void
.end method

.method private updateState(Lcom/spiraltoys/cloudpets2/toy/ToyState;Ljava/lang/String;)V
    .locals 1
    .param p1, "toyState"    # Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .param p2, "toyIdentifier"    # Ljava/lang/String;

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showBluetoothOffDialogIfNeeded()V

    .line 631
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getConfigID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getConfigID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    sget-object p1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 636
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECEIVING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne p1, v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mute()V

    .line 639
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showIncomingRecordingFragment()V

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 642
    :cond_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showDownloadingAudioDialog()V

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 318
    :goto_0
    return-object v0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 315
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->BENTLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getCharacter()Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getBackgroundMusicTrackForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized mute()V
    .locals 1

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mute()V

    .line 649
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBackStackChanged()V
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->unmute()V

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mute()V

    .line 436
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    .line 155
    .local v1, "profileSelectedForToyDashboardEvent":Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;->getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v2

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-nez v2, :cond_1

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v2

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getCharacter()Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v2

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAppThemeResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->setTheme(I)V

    .line 170
    const v2, 0x7f04001c

    invoke-static {p0, v2}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    .line 171
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->setProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 172
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 174
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getConfigID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->setConfigId(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showGamesButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 178
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showMessagesButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 179
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showStoriesButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 180
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showLullabiesButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 182
    if-nez p1, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f100085

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 185
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 188
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->isSplashScreenSkipped()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2, p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->setJustAccessed(Landroid/content/Context;)V

    .line 194
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mHideVisitingCloudPetOverlayRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xabe

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 205
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    new-instance v2, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getConfigID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    .line 212
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 197
    .end local v0    # "e":Lcom/parse/ParseException;
    :cond_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->checkIfiInitialChildHelpDisplayed()V

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tag_dialog_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    goto :goto_0
.end method

.method public onDeleteRecordedMessageClicked(Landroid/net/Uri;)V
    .locals 2
    .param p1, "recordingToDeleteUri"    # Landroid/net/Uri;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 419
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$5;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 424
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 425
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onDeleteVoiceMessageClicked(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 3
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 389
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017b

    .line 390
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800fd

    .line 391
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08003a

    new-instance v2, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 392
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080034

    const/4 v2, 0x0

    .line 400
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 402
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mHideVisitingCloudPetOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideBluetoothOffDialog()V

    .line 303
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onDestroy()V

    .line 305
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 306
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;->getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showMessageFragment(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 550
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessagePushNotificationReceivedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessagePushNotificationReceivedEvent;

    .prologue
    .line 581
    new-instance v0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$6;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$6;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 587
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingLullabyToToy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLastLullabyStepCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onLullabySentToCloudPet()V

    .line 826
    :cond_0
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingAudioToToy:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;->getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onMessageSentToCloudPet()V

    .line 829
    :cond_1
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;

    .prologue
    const/4 v1, 0x0

    .line 524
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;)V

    .line 526
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 528
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingAudioToToy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingLullabyToToy:Z

    if-eqz v0, :cond_2

    .line 529
    :cond_0
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingAudioToToy:Z

    .line 530
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingLullabyToToy:Z

    .line 531
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideProgress()V

    .line 532
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    .line 546
    :cond_1
    :goto_0
    return-void

    .line 536
    :cond_2
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getToyState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->RECEIVING_AUDIO:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_3

    .line 537
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->hideIncomingRecordingFragment()V

    .line 538
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 543
    :cond_3
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getToyState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_1

    .line 544
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingAudioToToy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingLullabyToToy:Z

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->exitGameModeAndStopPlaybackLoop()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->isUpdatingFirmware()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->getToyIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getConfigID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->getToyIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getConfigID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mute()V

    .line 512
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->getLocalUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showRecording(Landroid/net/Uri;)V

    .line 517
    :goto_1
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mTempMessageUri:Landroid/net/Uri;

    .line 520
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showRecordedToyAudioDialog(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;)V
    .locals 2
    .param p1, "eventRequiresUpdate"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;->getToyIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getConfigID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;->getToyIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getConfigID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    .line 561
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V

    .line 562
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->updateState(Lcom/spiraltoys/cloudpets2/toy/ToyState;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;

    .prologue
    .line 576
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;->getPercentage()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->updateProgress(F)V

    .line 577
    return-void
.end method

.method onHelpClicked()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10009d
        }
    .end annotation

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showHelpDialog()V

    .line 361
    return-void
.end method

.method public onLullabySelected(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V
    .locals 1
    .param p1, "lullaby"    # Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showLullabyFragment(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V

    .line 755
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mShouldStayConnected:Z

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->onPause(Z)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mShouldStayConnected:Z

    .line 265
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 266
    return-void
.end method

.method public onPlayStory(Lcom/spiraltoys/cloudpets2/model/Story;)V
    .locals 2
    .param p1, "story"    # Lcom/spiraltoys/cloudpets2/model/Story;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->getCurrentConnectionIndicatorState()Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    if-eq v0, v1, :cond_0

    .line 786
    const v0, 0x7f08009c

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 797
    :goto_0
    return-void

    .line 790
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mShouldStayConnected:Z

    .line 792
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Story;->getUnitySceneName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->start(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Story;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    goto :goto_0

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->start(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Story;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    goto :goto_0
.end method

.method public onProfileFlyoutMenuDismissed()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showBluetoothOffDialogIfNeeded()V

    .line 735
    return-void
.end method

.method public onProfileFlyoutMenuShown()V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideBluetoothOffDialog()V

    .line 730
    return-void
.end method

.method public onProfileMenuLoaded(Z)V
    .locals 0
    .param p1, "isEmpty"    # Z

    .prologue
    .line 750
    return-void
.end method

.method public onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eq p1, v0, :cond_0

    .line 741
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->deleteAllCachedToyRecordingsAsync(Landroid/content/Context;)V

    .line 743
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 745
    :cond_0
    return-void
.end method

.method public onProfilesSelected(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "selectedProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mTempMessageUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingMessageToServer:Z

    if-eqz v7, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingMessageToServer:Z

    .line 683
    const v7, 0x7f0801aa

    invoke-virtual {p0, v7}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showProgress(I)Landroid/app/Dialog;

    .line 687
    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mTempMessageUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 695
    .local v0, "data":[B
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Lcom/parse/ParseFile;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".wav"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[B)V

    .line 698
    .local v2, "file":Lcom/parse/ParseFile;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 701
    .local v6, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    new-instance v4, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-direct {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;-><init>()V

    .line 702
    .local v4, "message":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    invoke-virtual {v4, v2}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFile(Lcom/parse/ParseFile;)V

    .line 703
    invoke-virtual {v2}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setLocalFilename(Ljava/lang/String;)V

    .line 704
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v4, v8}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setSender(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 705
    invoke-virtual {v4, v6}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setRecipient(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 706
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getProfileType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setType(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)V

    .line 707
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 688
    .end local v0    # "data":[B
    .end local v2    # "file":Lcom/parse/ParseFile;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "message":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .end local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    .end local v6    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingMessageToServer:Z

    .line 690
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForIOException(Ljava/io/IOException;)I

    move-result v7

    invoke-static {p0, v7}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 691
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 710
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "data":[B
    .restart local v2    # "file":Lcom/parse/ParseFile;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    :cond_2
    new-instance v7, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;

    invoke-direct {v7, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    invoke-static {v5, v7}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->saveVoiceMessages(Ljava/util/List;Lcom/parse/SaveCallback;)V

    goto/16 :goto_0
.end method

.method public onPushToToyClicked(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 2
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->getCurrentConnectionIndicatorState()Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    if-eq v0, v1, :cond_0

    .line 366
    const v0, 0x7f08009e

    const v1, 0x7f08009f

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialogWithTitle(Landroid/content/Context;II)V

    .line 385
    :goto_0
    return-void

    .line 370
    :cond_0
    const v0, 0x7f0801a9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showProgress(IZ)Landroid/app/Dialog;

    .line 372
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFile()Lcom/parse/ParseFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->fetchToTemporaryFileAndCache(Landroid/content/Context;Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;)V

    .line 384
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->markVoiceMessageAsViewed(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    goto :goto_0
.end method

.method public onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .param p1, "swipeRefreshLayout"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 659
    new-instance v0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$8;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 674
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 270
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-class v2, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;

    .line 273
    .local v0, "receivedAudioEvent":Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 279
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onResume()V

    .line 282
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mConnectionManager:Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyConnectionManager;->onResume()V

    .line 288
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->updateNewMessageCount()V

    goto :goto_0
.end method

.method public onSelectRecipientsClicked(Landroid/net/Uri;)V
    .locals 2
    .param p1, "recordingToSendUri"    # Landroid/net/Uri;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mTempMessageUri:Landroid/net/Uri;

    .line 407
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showRecipientSelectorFragment(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 408
    return-void
.end method

.method public onSendLullabyToToySelected(Lcom/spiraltoys/cloudpets2/model/Lullaby;DJ)V
    .locals 8
    .param p1, "lullaby"    # Lcom/spiraltoys/cloudpets2/model/Lullaby;
    .param p2, "volume"    # D
    .param p4, "playbackDurationMs"    # J

    .prologue
    .line 759
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->getCurrentConnectionIndicatorState()Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    if-eq v0, v1, :cond_0

    .line 760
    const v0, 0x7f08009d

    const v1, 0x7f08009f

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialogWithTitle(Landroid/content/Context;II)V

    .line 776
    :goto_0
    return-void

    .line 764
    :cond_0
    const v0, 0x7f0801a7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showProgress(IZ)Landroid/app/Dialog;

    .line 766
    iput-wide p4, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLullabyPlaybackDuration:J

    .line 767
    iput-wide p2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLullabyVolume:D

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Lullaby;->getAudioResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLullabyAudioUri:Landroid/net/Uri;

    .line 770
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingLullabyToToy:Z

    .line 771
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLullabyAudioUri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLullabyVolume:D

    iget-wide v4, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLullabyPlaybackDuration:J

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->startLullaby(Landroid/content/Context;Landroid/net/Uri;DJ)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLastLullabyStepCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v6

    .line 773
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 774
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideProgress()V

    goto :goto_0
.end method

.method onShowGamesClicked()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100096
        }
    .end annotation

    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->startRecorder()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    return-void
.end method

.method onShowLullabiesClicked()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10009b
        }
    .end annotation

    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->startRecorder()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    return-void
.end method

.method onShowMessagesClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10007e
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showVoiceMessagesDialog()V

    .line 326
    :cond_1
    return-void
.end method

.method public onShowStoriesClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100099
        }
    .end annotation

    const/4 v0, 0x0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->startLoopPlayback(SI)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    return-void
.end method

.method public onStorySelected(Lcom/spiraltoys/cloudpets2/model/Story;)V
    .locals 1
    .param p1, "story"    # Lcom/spiraltoys/cloudpets2/model/Story;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showStoryFragment(Lcom/spiraltoys/cloudpets2/model/Story;)V

    .line 781
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->updateNewMessageCount()V

    .line 296
    :cond_0
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onWindowFocusChanged(Z)V

    .line 297
    return-void
.end method

.method public provideUnderlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->floatingMenuUnderlay:Landroid/view/View;

    return-object v0
.end method

.method declared-synchronized unmute()V
    .locals 1

    .prologue
    .line 653
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->unmute()V

    .line 654
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->unmute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-void

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
