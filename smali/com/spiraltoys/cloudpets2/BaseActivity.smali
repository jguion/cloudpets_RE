.class public Lcom/spiraltoys/cloudpets2/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;


# static fields
.field private static final HIDE_PROGRESS_DELAY_MS:I = 0x32

.field private static final MAX_PROGRESS_STEPS:I = 0x3e8


# instance fields
.field private mFirmwareErrorDialog:Landroid/app/Dialog;

.field private mFirmwareSuccessDialog:Landroid/app/Dialog;

.field private mFirmwareUpdateRequiredDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityPaused:Z

.field private mIsFirmwareUpdating:Z

.field private mIsMuted:Z

.field private mKeepMusicPlaying:Z

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mShouldPauseMusic:Z

.field mStatusBarSpace:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000d2
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation
.end field

.field mToolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10008e
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsActivityPaused:Z

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/BaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BaseActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareSuccessDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/BaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/BaseActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareErrorDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private onFirmwareUpdateFailure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 536
    iput-boolean v3, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsFirmwareUpdating:Z

    .line 538
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    :cond_2
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080180

    .line 547
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800a6

    .line 548
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080036

    const/4 v2, 0x0

    .line 549
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 550
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BaseActivity$9;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$9;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 551
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareErrorDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onFirmwareUpdateSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 509
    iput-boolean v3, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsFirmwareUpdating:Z

    .line 511
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-class v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 513
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareSuccessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareSuccessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    :cond_2
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a5

    .line 522
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800a4

    .line 523
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080036

    const/4 v2, 0x0

    .line 524
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 525
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/BaseActivity$8;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$8;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 526
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareSuccessDialog:Landroid/app/Dialog;

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isTaskRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 149
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 150
    return-void
.end method

.method public finishActivity(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isTaskRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 161
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->finishActivity(I)V

    .line 162
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isTaskRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 167
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 168
    return-void
.end method

.method public finishAffinity()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isTaskRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 155
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finishAffinity()V

    .line 156
    return-void
.end method

.method public finishAfterTransition()V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isTaskRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 173
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finishAfterTransition()V

    .line 174
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isTaskRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 179
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finishAndRemoveTask()V

    .line 180
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isTaskRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 185
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->finishFromChild(Landroid/app/Activity;)V

    .line 186
    return-void
.end method

.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->FRONT_END:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    return-object v0
.end method

.method public declared-synchronized hideProgress()V
    .locals 1

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isDestroyed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 330
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideProgressDelayed()V
    .locals 4

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/spiraltoys/cloudpets2/BaseActivity$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initToolbar()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 351
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 353
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 354
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 357
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 360
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mStatusBarSpace:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mStatusBarSpace:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    :cond_1
    return-void
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsMuted:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsActivityPaused:Z

    return v0
.end method

.method public isUpdatingFirmware()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsFirmwareUpdating:Z

    return v0
.end method

.method declared-synchronized mute()V
    .locals 2

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent-pause-music"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsMuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 221
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method onBuyNowClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100079
        }
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation

    .prologue
    .line 197
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->setKeepMusicPlaying(Z)V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://play.google.com/store/apps/details?id=com.spiraltoys.cloudpets2.premium"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;)V
    .locals 1
    .param p1, "errorEvent"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsFirmwareUpdating:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->hideProgress()V

    .line 503
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onFirmwareUpdateFailure()V

    .line 504
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 506
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;)V
    .locals 3
    .param p1, "eventRequiresUpdate"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsFirmwareUpdating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareUpdateRequiredDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareUpdateRequiredDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    :cond_2
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a8

    .line 476
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800a7

    .line 477
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 478
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080036

    new-instance v2, Lcom/spiraltoys/cloudpets2/BaseActivity$7;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$7;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 479
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareUpdateRequiredDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 2
    .param p1, "toyEventState"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsFirmwareUpdating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->UPDATING_FIRMWARE:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->hideProgress()V

    .line 496
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onFirmwareUpdateSuccess()V

    .line 498
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;)V
    .locals 1
    .param p1, "toyEventUpdateProgress"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsFirmwareUpdating:Z

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;->getPercentage()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->updateProgress(F)V

    .line 491
    :cond_0
    return-void
.end method

.method public onLogOutSelected()V
    .locals 0

    .prologue
    .line 457
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showLogoutConfirmationDialog(Landroid/content/Context;)V

    .line 458
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsActivityPaused:Z

    .line 93
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 95
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->stopMe(Landroid/content/Context;)V

    .line 99
    :cond_0
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 100
    return-void
.end method

.method public onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;Z)V

    .line 443
    return-void
.end method

.method public onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;Z)V
    .locals 2
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "preventSplash"    # Z

    .prologue
    .line 446
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getProfileType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    if-ne v0, v1, :cond_0

    .line 447
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    .line 452
    :goto_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->setLastUsedProfileId(Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    return-void

    .line 449
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->start(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Profile;Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsActivityPaused:Z

    .line 108
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    move-result-object v0

    .line 110
    .local v0, "track":Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isMuted()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->startMe(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;Z)V

    .line 116
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->setKeepMusicPlaying(Z)V

    .line 117
    return-void

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->stopMe(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    invoke-static {p0, p1}, Licepick/Icepick;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isTaskRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 191
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v0

    return v0
.end method

.method onTutorialClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100086
        }
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation

    .prologue
    .line 210
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->setKeepMusicPlaying(Z)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "http://mycloudpets.com/tour/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public setKeepMusicPlaying(Z)V
    .locals 0
    .param p1, "keepMusicPlayingAfterPause"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mKeepMusicPlaying:Z

    .line 348
    return-void
.end method

.method public showProgress(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "tileStringResource"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    const v0, 0x7f080116

    invoke-virtual {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(II)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showProgress(II)Landroid/app/Dialog;
    .locals 1
    .param p1, "tileStringResource"    # I
    .param p2, "contentStringResource"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(IIZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized showProgress(IIIZ)Landroid/app/Dialog;
    .locals 3
    .param p1, "tileStringResource"    # I
    .param p2, "contentStringResource"    # I
    .param p3, "dismissButtonTextResource"    # I
    .param p4, "isIndeterminate"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 289
    const/4 v1, 0x0

    .line 308
    :goto_0
    monitor-exit p0

    return-object v1

    .line 292
    :cond_0
    :try_start_1
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v1, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {v1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 295
    invoke-virtual {v1, p4, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 296
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 298
    .local v0, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    if-lez p3, :cond_1

    .line 299
    invoke-virtual {v0, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 300
    new-instance v1, Lcom/spiraltoys/cloudpets2/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 308
    :cond_1
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized showProgress(IIZ)Landroid/app/Dialog;
    .locals 3
    .param p1, "tileStringResource"    # I
    .param p2, "contentStringResource"    # I
    .param p3, "isIndeterminate"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showProgress(IZ)Landroid/app/Dialog;
    .locals 1
    .param p1, "tileStringResource"    # I
    .param p2, "isIndeterminate"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 243
    const v0, 0x7f080116

    invoke-virtual {p0, p1, v0, p2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(IIZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "dismissButtonText"    # Ljava/lang/String;
    .param p4, "isIndeterminate"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 283
    :goto_0
    monitor-exit p0

    return-object v1

    .line 267
    :cond_0
    :try_start_1
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v1, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 270
    invoke-virtual {v1, p4, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 273
    .local v0, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    if-eqz p3, :cond_1

    .line 274
    invoke-virtual {v0, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 275
    new-instance v1, Lcom/spiraltoys/cloudpets2/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    .end local v0    # "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showProgress(Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "isIndeterminate"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 248
    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method showToolbarTitle()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showToolbarTitle(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method showToolbarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 371
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 372
    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 377
    :cond_1
    return-void
.end method

.method showVerifyEmailDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801af

    .line 394
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800ff

    .line 395
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080034

    new-instance v2, Lcom/spiraltoys/cloudpets2/BaseActivity$6;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$6;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 398
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080057

    new-instance v2, Lcom/spiraltoys/cloudpets2/BaseActivity$5;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$5;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 404
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080036

    new-instance v2, Lcom/spiraltoys/cloudpets2/BaseActivity$4;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 419
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 438
    return-void
.end method

.method public startActivityAsNewTask(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 380
    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mKeepMusicPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mShouldPauseMusic:Z

    .line 143
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 144
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFirmwareUpdate()V
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->updateFirmware()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsFirmwareUpdating:Z

    .line 463
    const v0, 0x7f0800a9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(IZ)Landroid/app/Dialog;

    .line 464
    return-void
.end method

.method declared-synchronized unmute()V
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent-resume-music"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mIsMuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 227
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress must be between 0 and 1 inclusively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setProgress(I)V

    goto :goto_0
.end method
