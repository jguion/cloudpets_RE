.class public Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;
.super Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;
.source "ExpansionDownloaderActivity.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LVLDownloader"

.field private static final PERMISSIONS_REQUEST_ACCESS_EXTERNAL_STORAGE:I = 0x2a

.field private static final SMOOTHING_FACTOR:F = 0.005f


# instance fields
.field private mAverageSpeed:Landroid/widget/TextView;

.field private mCancelValidation:Z

.field private mCellMessage:Landroid/view/View;

.field private mDashboard:Landroid/view/View;

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mPB:Landroid/widget/ProgressBar;

.field private mPauseButton:Landroid/widget/Button;

.field private mProgressFraction:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private mState:I

.field private mStatePaused:Z

.field private mStatusText:Landroid/widget/TextView;

.field private mTimeRemaining:Landroid/widget/TextView;

.field private mWiFiSettingsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDashboard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCellMessage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCancelValidation:Z

    return v0
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCancelValidation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPauseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatePaused:Z

    return v0
.end method

.method static synthetic access$600(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->setButtonPausedState(Z)V

    return-void
.end method

.method private fetchExpansionFiles()V
    .locals 8

    .prologue
    .line 365
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->expansionFilesDelivered(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 369
    .local v3, "launchIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v2, "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    const/high16 v6, 0x14000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 374
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    .end local v0    # "category":Ljava/lang/String;
    .end local v2    # "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    .end local v3    # "launchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "LVLDownloader"

    const-string v7, "Cannot find own package! MAYDAY!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 399
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 381
    .restart local v2    # "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    .restart local v3    # "launchIntent":Landroid/content/Intent;
    :cond_1
    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    :try_start_1
    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 384
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-class v6, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderService;

    invoke-static {p0, v4, v6}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v5

    .line 387
    .local v5, "startResult":I
    if-eqz v5, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->initializeDownloadUI()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 397
    .end local v2    # "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    .end local v3    # "launchIntent":Landroid/content/Intent;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "startResult":I
    :cond_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->validateXAPKZipFiles()V

    goto :goto_1
.end method

.method private initializeDownloadUI()V
    .locals 3

    .prologue
    .line 273
    const-class v1, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderService;

    .line 274
    invoke-static {p0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 275
    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->setContentView(I)V

    .line 276
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 278
    const v1, 0x7f1000b4

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPB:Landroid/widget/ProgressBar;

    .line 279
    const v1, 0x7f1000b0

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatusText:Landroid/widget/TextView;

    .line 280
    const v1, 0x7f1000b2

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mProgressFraction:Landroid/widget/TextView;

    .line 281
    const v1, 0x7f1000b3

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mProgressPercent:Landroid/widget/TextView;

    .line 282
    const v1, 0x7f1000b5

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mAverageSpeed:Landroid/widget/TextView;

    .line 283
    const v1, 0x7f1000b6

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mTimeRemaining:Landroid/widget/TextView;

    .line 284
    const v1, 0x7f1000b1

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDashboard:Landroid/view/View;

    .line 285
    const v1, 0x7f1000b9

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCellMessage:Landroid/view/View;

    .line 286
    const v1, 0x7f1000b7

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPauseButton:Landroid/widget/Button;

    .line 287
    const v1, 0x7f1000be

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mWiFiSettingsButton:Landroid/widget/Button;

    .line 289
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPauseButton:Landroid/widget/Button;

    new-instance v2, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mWiFiSettingsButton:Landroid/widget/Button;

    new-instance v2, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$3;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v1, 0x7f1000bd

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 310
    .local v0, "resumeOnCell":Landroid/widget/Button;
    new-instance v1, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$4;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void
.end method

.method private setButtonPausedState(Z)V
    .locals 2
    .param p1, "paused"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatePaused:Z

    .line 95
    if-eqz p1, :cond_0

    const v0, 0x7f08014f

    .line 97
    .local v0, "stringResourceID":I
    :goto_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 98
    return-void

    .line 95
    .end local v0    # "stringResourceID":I
    :cond_0
    const v0, 0x7f08014e

    goto :goto_0
.end method

.method private setState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mState:I

    if-eq v0, p1, :cond_0

    .line 88
    iput p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mState:I

    .line 89
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mStatusText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->initializeDownloadUI()V

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 349
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 350
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->fetchExpansionFiles()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCancelValidation:Z

    .line 539
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onDestroy()V

    .line 540
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 8
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 521
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mAverageSpeed:Landroid/widget/TextView;

    const v1, 0x7f0800c3

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    .line 522
    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSpeedString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 521
    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mTimeRemaining:Landroid/widget/TextView;

    const v1, 0x7f080156

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    .line 524
    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 523
    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPB:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    shr-long/2addr v2, v7

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 527
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPB:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    shr-long/2addr v2, v7

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 528
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mProgressPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mProgressFraction:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    .line 532
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 9
    .param p1, "newState"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 442
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->setState(I)V

    .line 443
    const/4 v5, 0x1

    .line 444
    .local v5, "showDashboard":Z
    const/4 v4, 0x0

    .line 447
    .local v4, "showCellMessage":Z
    packed-switch p1, :pswitch_data_0

    .line 498
    :pswitch_0
    const/4 v3, 0x1

    .line 499
    .local v3, "paused":Z
    const/4 v1, 0x1

    .line 500
    .local v1, "indeterminate":Z
    const/4 v5, 0x1

    .line 502
    :goto_0
    if-eqz v5, :cond_2

    move v2, v6

    .line 503
    .local v2, "newDashboardVisibility":I
    :goto_1
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDashboard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 504
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDashboard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 506
    :cond_0
    if-eqz v4, :cond_3

    move v0, v6

    .line 507
    .local v0, "cellMessageVisibility":I
    :goto_2
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCellMessage:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v0, :cond_1

    .line 508
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mCellMessage:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :cond_1
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mPB:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 512
    invoke-direct {p0, v3}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->setButtonPausedState(Z)V

    .line 513
    .end local v0    # "cellMessageVisibility":I
    .end local v2    # "newDashboardVisibility":I
    :goto_3
    return-void

    .line 451
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_1
    const/4 v3, 0x0

    .line 452
    .restart local v3    # "paused":Z
    const/4 v1, 0x1

    .line 453
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 456
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_2
    const/4 v5, 0x1

    .line 457
    const/4 v3, 0x0

    .line 458
    .restart local v3    # "paused":Z
    const/4 v1, 0x1

    .line 459
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 461
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_3
    const/4 v3, 0x0

    .line 462
    .restart local v3    # "paused":Z
    const/4 v5, 0x1

    .line 463
    const/4 v1, 0x0

    .line 464
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 470
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_4
    const/4 v3, 0x1

    .line 471
    .restart local v3    # "paused":Z
    const/4 v5, 0x0

    .line 472
    const/4 v1, 0x0

    .line 473
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 476
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_5
    const/4 v5, 0x0

    .line 477
    const/4 v3, 0x1

    .line 478
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 479
    .restart local v1    # "indeterminate":Z
    const/4 v4, 0x1

    .line 480
    goto :goto_0

    .line 483
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_6
    const/4 v3, 0x1

    .line 484
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 485
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 488
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_7
    const/4 v3, 0x1

    .line 489
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 490
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 492
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_8
    const/4 v5, 0x0

    .line 493
    const/4 v3, 0x0

    .line 494
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 495
    .restart local v1    # "indeterminate":Z
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->validateXAPKZipFiles()V

    goto :goto_3

    :cond_2
    move v2, v7

    .line 502
    goto :goto_1

    .restart local v2    # "newDashboardVisibility":I
    :cond_3
    move v0, v7

    .line 506
    goto :goto_2

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 325
    :pswitch_0
    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->fetchExpansionFiles()V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->finish()V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 431
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 432
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 433
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 409
    :cond_0
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onStart()V

    .line 410
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 420
    :cond_0
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onStop()V

    .line 421
    return-void
.end method

.method validateXAPKZipFiles()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;)V

    .line 265
    .local v0, "validationTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    return-void
.end method
