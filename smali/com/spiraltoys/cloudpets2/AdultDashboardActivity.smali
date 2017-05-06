.class public Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "AdultDashboardActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;
.implements Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;


# static fields
.field private static final PERMISSIONS_REQUEST_COARSE_LOCATION_ACCESS:I = 0x2b

.field private static final PERMISSIONS_REQUEST_RECORD_AUDIO:I = 0x2a

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_LOCATION_PERMISSION_REQUEST_FRAGMENT:Ljava/lang/String; = "TAG_LOCATION_PERMISSION_REQUEST_FRAGMENT"

.field private static final TAG_PROFILE_PICKER_FRAGMENT:Ljava/lang/String; = "TAG_PROFILE_PICKER_FRAGMENT"

.field private static final TOOLTIP_ANIMATION_INTERVAL_MS:I = 0x7d0

.field private static final TOOLTIP_ANIMATION_START_DELAY_MS:I = 0x5dc


# instance fields
.field private mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

.field private mFriendsLoaded:Z

.field private mHasLocalChildProfiles:Z

.field private mHasLocalFriends:Z

.field private mIsInitialAdultTooltipComplete:Z

.field private mLocalChildProfilesLoaded:Z

.field private mLocalFriendsLoaded:Z

.field private mMessagesLoaded:Z

.field private mPendingPickedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    return-object v0
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mLocalFriendsLoaded:Z

    return p1
.end method

.method static synthetic access$202(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mHasLocalFriends:Z

    return p1
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startRemoteDataSync()V

    return-void
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->displayFriendRequestAcceptedDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->updateNewInviteCount()V

    return-void
.end method

.method static synthetic access$602(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mFriendsLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->updateNewMessageCount()V

    return-void
.end method

.method static synthetic access$802(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mMessagesLoaded:Z

    return p1
.end method

.method private displayFriendRequestAcceptedDialog(I)V
    .locals 3
    .param p1, "requests"    # I

    .prologue
    .line 335
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "builder":Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .line 337
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const v1, 0x7f080105

    :goto_0
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .line 338
    const v1, 0x7f080036

    new-instance v2, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$6;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$6;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .line 344
    const v1, 0x7f08006b

    new-instance v2, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$7;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$7;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .line 352
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 353
    return-void

    .line 337
    :cond_0
    const v1, 0x7f080104

    goto :goto_0
.end method

.method private getAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method private setupAds()V
    .locals 5

    .prologue
    .line 97
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v4, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$1;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 109
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v4, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    const-string v4, "02c666be09378a75"

    .line 111
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 113
    .local v1, "bannerAdRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 115
    new-instance v2, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 116
    .local v2, "interstitialAd":Lcom/google/android/gms/ads/InterstitialAd;
    const v3, 0x7f0801c9

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 117
    new-instance v3, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Lcom/google/android/gms/ads/InterstitialAd;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 126
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v4, "02c666be09378a75"

    .line 127
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 130
    .local v0, "InterstitialAdRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 131
    return-void
.end method

.method private setupProfilePicker()V
    .locals 5
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f100085

    .line 231
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-result-object v3

    const-string v4, "TAG_PROFILE_PICKER_FRAGMENT"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private startRecordMessageActivityOrError()V
    .locals 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mHasLocalChildProfiles:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mHasLocalFriends:Z

    if-eqz v0, :cond_3

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mIsInitialAdultTooltipComplete:Z

    if-nez v0, :cond_1

    .line 182
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->setInitialAdultTooltipComplete(Landroid/content/Context;Z)V

    .line 184
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    :cond_2
    :goto_0
    return-void

    .line 186
    :cond_3
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mLocalChildProfilesLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mLocalFriendsLoaded:Z

    if-eqz v0, :cond_2

    .line 187
    const v0, 0x7f0800be

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private startRemoteDataSync()V
    .locals 1
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$8;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$8;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getPendingFriendRequestAcceptanceNotifications(Lcom/parse/FindCallback;)V

    .line 367
    new-instance v0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$9;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$9;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 375
    new-instance v0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$10;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$10;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 382
    return-void
.end method

.method private updateNewInviteCount()V
    .locals 3

    .prologue
    .line 321
    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$5;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$5;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->countPendingIncomingFriendRequests(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/CountCallback;)V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateNewMessageCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    new-instance v1, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$4;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-static {v0, v2, v2, v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->countLocalNewMessages(Lcom/spiraltoys/cloudpets2/model/Profile;ZZLcom/parse/CountCallback;)V

    .line 317
    return-void
.end method

.method private updateTooltip()V
    .locals 6

    .prologue
    .line 395
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isInitialAdultTooltipComplete(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mIsInitialAdultTooltipComplete:Z

    .line 396
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->tooltip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 397
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v2, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->tooltip:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mIsInitialAdultTooltipComplete:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mIsInitialAdultTooltipComplete:Z

    if-eqz v1, :cond_1

    .line 423
    :goto_1
    return-void

    .line 397
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 403
    :cond_1
    const v1, 0x7f05001c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 404
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 405
    new-instance v1, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$11;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$11;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 422
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->tooltip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "TAG_LOCATION_PERMISSION_REQUEST_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f040019

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    .line 75
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 77
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0f0078

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 85
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "TAG_PROFILE_PICKER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->setupProfilePicker()V

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->setupAds()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onDestroy()V

    .line 154
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 155
    return-void
.end method

.method onManageProfilesClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100080
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method onManageSettingsClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100082
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->onBackPressed()V

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 148
    return-void
.end method

.method public onProfileFlyoutMenuDismissed()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public onProfileFlyoutMenuShown()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onProfileMenuLoaded(Z)V
    .locals 5
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mLocalChildProfilesLoaded:Z

    .line 282
    if-nez p1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mHasLocalChildProfiles:Z

    .line 284
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsLocalDatastoreQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$3;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 282
    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 5
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mPendingPickedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 263
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->fragmentContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 264
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1001

    .line 267
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f100087

    .line 268
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getCharacter()Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v3

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;

    move-result-object v3

    const-string v4, "TAG_LOCATION_PERMISSION_REQUEST_FRAGMENT"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method onRecordMessageClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10007d
        }
    .end annotation

    .prologue
    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startRecordMessageActivityOrError()V

    goto :goto_0
.end method

.method public onRequestBlePermissionClicked()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 306
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 193
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 195
    :pswitch_0
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startRecordMessageActivityOrError()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800b0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 202
    :pswitch_1
    aget v0, p3, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mPendingPickedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mPendingPickedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-super {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800b8

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onResume()V

    .line 136
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->updateNewMessageCount()V

    .line 137
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->updateNewInviteCount()V

    .line 138
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->updateTooltip()V

    .line 140
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 141
    return-void
.end method

.method onShowMessagesClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10007e
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public provideUnderlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->floatingMenuUnderlay:Landroid/view/View;

    return-object v0
.end method
