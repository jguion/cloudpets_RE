.class public Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;
.super Landroid/app/Fragment;
.source "SelectBluetoothToyCompleteConnectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;,
        Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$TimeoutTimerTask;
    }
.end annotation


# static fields
.field private static final ARG_PLUSH_TOY_CHARACTER_TYPE:Ljava/lang/String; = "plush_toy_character_type"

.field private static final ARG_TOY_CONFIG_IDENTIFIER:Ljava/lang/String; = "toy_config_identifier"

.field private static final CONNECTION_TIMEOUT_MILLISECONDS:I = 0x2710


# instance fields
.field private mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field mCompleteConnectionButton:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10012b
    .end annotation
.end field

.field mConfiguredPetAvatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10008d
    .end annotation
.end field

.field mConnectionText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100126
    .end annotation
.end field

.field private mConnectionTimeoutTimer:Ljava/util/Timer;

.field mFinishedTitleContainer:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10012a
    .end annotation
.end field

.field private mHasSetGameMode:Z

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;

.field mProgress2:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100165
    .end annotation
.end field

.field mProgress3:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100166
    .end annotation
.end field

.field mProgress4:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100167
    .end annotation
.end field

.field mProgress5:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100168
    .end annotation
.end field

.field private mShortAnimationDuration:I

.field mStartedTitleContainer:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100122
    .end annotation
.end field

.field private mToyConfigIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;

    return-object v0
.end method

.method private declared-synchronized cancelFallAsleepTimer()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mConnectionTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mConnectionTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 229
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mConnectionTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;
    .locals 4
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    .param p1, "configIdentifier"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;-><init>()V

    .line 72
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "plush_toy_character_type"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "toy_config_identifier"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v1
.end method

.method private declared-synchronized resetTimeoutTimer()V
    .locals 4

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->cancelFallAsleepTimer()V

    .line 222
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mConnectionTimeoutTimer:Ljava/util/Timer;

    .line 223
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mConnectionTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$TimeoutTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$TimeoutTimerTask;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 119
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
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

.method onCompleteConnectionButtonClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10012b
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;->onToySelectionConfirmed()V

    .line 164
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "plush_toy_character_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->getCharacter(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 88
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "toy_config_identifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mToyConfigIdentifier:Ljava/lang/String;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mShortAnimationDuration:I

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 97
    const v1, 0x7f04005b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mProgress2:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mProgress3:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mProgress4:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mConnectionText:Landroid/widget/TextView;

    const v2, 0x7f0800d2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 107
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;

    .line 130
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;)V
    .locals 4
    .param p1, "eventGameModeButtonPress"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mCompleteConnectionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mStartedTitleContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mShortAnimationDuration:I

    int-to-long v2, v1

    .line 171
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 174
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mFinishedTitleContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mShortAnimationDuration:I

    int-to-long v2, v1

    .line 176
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 196
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
    .locals 3
    .param p1, "toyEventState"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;

    .prologue
    const/4 v2, 0x1

    .line 199
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getToyIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mToyConfigIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyState;->CONNECTED:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mHasSetGameMode:Z

    if-nez v0, :cond_0

    .line 204
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeState(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 205
    iput-boolean v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mHasSetGameMode:Z

    .line 206
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->cancelFallAsleepTimer()V

    .line 211
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$2;->$SwitchMap$com$spiraltoys$cloudpets2$toy$ToyState:[I

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 215
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mHasSetGameMode:Z

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 147
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->setGameModeState(Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 148
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mHasSetGameMode:Z

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 154
    iput-boolean v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mHasSetGameMode:Z

    .line 155
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->resetTimeoutTimer()V

    .line 156
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mToyConfigIdentifier:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->connectToToy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 157
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 135
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 142
    return-void
.end method
