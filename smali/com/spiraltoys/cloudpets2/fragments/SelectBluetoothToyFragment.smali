.class public Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;
.super Landroid/app/Fragment;
.source "SelectBluetoothToyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;,
        Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;
    }
.end annotation


# static fields
.field private static final ARG_PLUSH_TOY_CHARACTER_TYPE:Ljava/lang/String; = "plush_toy_character_type"

.field public static final HEART_BLINK_INTERVAL_MILLISECONDS:I = 0x1f4

.field private static final SCAN_TIMEOUT_MILLISECONDS:I = 0x2710


# instance fields
.field private mBluetoothOffDialog:Landroid/app/Dialog;

.field private mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field mConfiguredPetAvatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10008d
    .end annotation
.end field

.field mConnectedTitleContainer:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100125
    .end annotation
.end field

.field mConnectionText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100126
    .end annotation
.end field

.field private mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field private mCurrentToyConfigIdentifier:Ljava/lang/String;

.field private mCurrentlySelectedIndex:I

.field private mErrorDialog:Landroid/app/Dialog;

.field private mIsWritingConfigIdentifier:Z

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

.field mNextToyButton:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100128
    .end annotation
.end field

.field private mOriginalConnectionTextColor:I

.field private mPreviousState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field mProgress2:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100165
    .end annotation
.end field

.field mProgress3:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100166
    .end annotation
.end field

.field private mScanTimeoutTimer:Ljava/util/Timer;

.field mScanningTitleContainer:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100124
    .end annotation
.end field

.field private mShortAnimationDuration:I

.field private mToyAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUseToyButton:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100129
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mErrorDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentlySelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cancelFallAsleepTimer()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mScanTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mScanTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 314
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mScanTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 316
    :cond_0
    return-void
.end method

.method private connectToToyAtIndex(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 329
    if-gez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mProgress3:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 335
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mUseToyButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mNextToyButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    sget-object v5, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v5}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->updateStateIndicators(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 339
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->resetTimeoutTimer()V

    .line 341
    if-lez p1, :cond_2

    move v1, v3

    .line 342
    .local v1, "hasPreviousToy":Z
    :goto_1
    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    move v0, v3

    .line 344
    .local v0, "hasNextToy":Z
    :goto_2
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_5

    .line 345
    iput p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentlySelectedIndex:I

    .line 347
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 349
    .local v2, "nextAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v5, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v3, v5, :cond_4

    .line 350
    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyLedState;->OFF:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    invoke-static {v3, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setLedState(Lcom/spiraltoys/cloudpets2/toy/ToyLedState;I)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0

    .end local v0    # "hasNextToy":Z
    .end local v1    # "hasPreviousToy":Z
    .end local v2    # "nextAddress":Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 341
    goto :goto_1

    .restart local v1    # "hasPreviousToy":Z
    :cond_3
    move v0, v4

    .line 342
    goto :goto_2

    .line 352
    .restart local v0    # "hasNextToy":Z
    .restart local v2    # "nextAddress":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    invoke-static {v3, v2, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->connectToToy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0

    .line 354
    .end local v2    # "nextAddress":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentlySelectedIndex:I

    .line 356
    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-direct {p0, v3}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->updateStateIndicators(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 357
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->startScan()V

    goto :goto_0
.end method

.method private hideBluetoothOffDialog()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mBluetoothOffDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 415
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;
    .locals 4
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 92
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;-><init>()V

    .line 93
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "plush_toy_character_type"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 96
    return-object v1
.end method

.method private declared-synchronized resetTimeoutTimer()V
    .locals 4

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->cancelFallAsleepTimer()V

    .line 307
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mScanTimeoutTimer:Ljava/util/Timer;

    .line 308
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mScanTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$1;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showBluetoothOffDialog()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mBluetoothOffDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mBluetoothOffDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08016e

    .line 392
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080076

    .line 393
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080067

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$3;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V

    .line 394
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080034

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$2;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V

    .line 400
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 406
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mBluetoothOffDialog:Landroid/app/Dialog;

    .line 409
    :cond_1
    return-void
.end method

.method private startScan()V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/spiraltoys/cloudpets2/util/Utils;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->resetTimeoutTimer()V

    .line 300
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->stopScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 302
    :cond_1
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->startScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0
.end method

.method private updateStateIndicators(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    .locals 7
    .param p1, "toyState"    # Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .prologue
    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 362
    invoke-static {}, Lcom/spiraltoys/cloudpets2/util/Utils;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    const v3, 0x7f0800c8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 364
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f0060

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->showBluetoothOffDialog()V

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mPreviousState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mPreviousState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectedTitleContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 378
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mShortAnimationDuration:I

    int-to-long v4, v3

    .line 379
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 380
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 382
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mScanningTitleContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mShortAnimationDuration:I

    int-to-long v2, v1

    .line 384
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 387
    :cond_1
    return-void

    .line 366
    :cond_2
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->READY:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UNKNOWN:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne p1, v0, :cond_4

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    const v3, 0x7f0800e2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 368
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mOriginalConnectionTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->hideBluetoothOffDialog()V

    goto :goto_0

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->getLocalizedStringId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 372
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mOriginalConnectionTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->hideBluetoothOffDialog()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 378
    goto :goto_1

    :cond_6
    move v2, v1

    .line 383
    goto :goto_2
.end method

.method private writeConfigIdentifierAndDismiss()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mNextToyButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mIsWritingConfigIdentifier:Z

    .line 325
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->generateCharacterId(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setIdentifier(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 326
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 131
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnToySelectedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "plush_toy_character_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->getCharacter(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mShortAnimationDuration:I

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    const v1, 0x7f04005a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mOriginalConnectionTextColor:I

    .line 120
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mProgress2:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    .line 141
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;)V
    .locals 3
    .param p1, "toyDiscoveredEvent"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "discoveredDeviceAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 214
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->connectToToyAtIndex(I)V

    .line 219
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;)V
    .locals 3
    .param p1, "errorEvent"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;

    .prologue
    .line 264
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getToyState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->NOT_SUPPORTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_0

    .line 275
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080180

    .line 276
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080036

    const/4 v2, 0x0

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->create()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mErrorDialog:Landroid/app/Dialog;

    .line 281
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mErrorDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 288
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 6
    .param p1, "toyEventState"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mPreviousState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 223
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 225
    sget-object v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$4;->$SwitchMap$com$spiraltoys$cloudpets2$toy$ToyState:[I

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 255
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mUseToyButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->updateStateIndicators(Lcom/spiraltoys/cloudpets2/toy/ToyState;)V

    .line 261
    return-void

    .line 227
    :pswitch_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->startScan()V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mIsWritingConfigIdentifier:Z

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;->onToySelected(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mPreviousState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v3, Lcom/spiraltoys/cloudpets2/toy/ToyState;->WRITING_CHARACTERISTIC:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v1, v3, :cond_4

    .line 235
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentlySelectedIndex:I

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentlySelectedIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 236
    .local v0, "currentToyAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->cancelFallAsleepTimer()V

    .line 238
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mUseToyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mNextToyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentToyConfigIdentifier:Ljava/lang/String;

    .line 241
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->startScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0

    .end local v0    # "currentToyAddress":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    .line 235
    goto :goto_1

    .line 243
    .restart local v0    # "currentToyAddress":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->stopScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 244
    invoke-static {v2, v0, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->connectToToy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0

    .line 246
    .end local v0    # "currentToyAddress":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mPreviousState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTING:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v1, v2, :cond_0

    .line 247
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->stopScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 248
    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyLedState;->BLINKING:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setLedState(Lcom/spiraltoys/cloudpets2/toy/ToyLedState;I)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onNextToyButtonClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100128
        }
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentlySelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->connectToToyAtIndex(I)V

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 159
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->stopScan()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 161
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_0

    .line 162
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyLedState;->OFF:Lcom/spiraltoys/cloudpets2/toy/ToyLedState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setLedState(Lcom/spiraltoys/cloudpets2/toy/ToyLedState;I)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 164
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 170
    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentlySelectedIndex:I

    .line 172
    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mPreviousState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 173
    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 175
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mNextToyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mUseToyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mToyAddresses:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/spiraltoys/cloudpets2/toy/ToyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->disconnectFromToyEventually()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 188
    :goto_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/util/Utils;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->showBluetoothOffDialog()V

    .line 191
    :cond_0
    return-void

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->startScan()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 146
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 153
    return-void
.end method

.method onUseAsSharedToyClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100129
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentToyConfigIdentifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->isValidCharacterId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->writeConfigIdentifierAndDismiss()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mCurrentToyConfigIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;->onToySelected(Ljava/lang/String;)V

    goto :goto_0
.end method
