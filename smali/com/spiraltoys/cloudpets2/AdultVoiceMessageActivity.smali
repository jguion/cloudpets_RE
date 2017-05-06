.class public Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "AdultVoiceMessageActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;


# static fields
.field private static final REPLY_REQUEST:I = 0x2a


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;

.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;)Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    return-object v0
.end method

.method private isAcceptedFriend()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->isAcceptedFriend(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/model/Profile;)Z

    move-result v0

    return v0
.end method

.method private markVoiceMessageAsViewed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isParentViewed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setViewed(Z)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setParentViewed(Z)V

    .line 180
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->saveEventually()Lbolts/Task;

    .line 181
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageMarkedAsViewedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageMarkedAsViewedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 183
    :cond_1
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 40
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForEditEvent;

    invoke-direct {v1, p1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForEditEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->finish()V

    .line 111
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    return-void
.end method

.method onApproveClicked()V
    .locals 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100089
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 120
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isApproved()Z

    move-result v0

    .line 122
    .local v0, "approvedState":Z
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setApproved(Z)V

    .line 123
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v1, v3}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setRejected(Z)V

    .line 124
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->saveEventually()Lbolts/Task;

    .line 126
    if-eqz v0, :cond_1

    .line 127
    const v1, 0x7f0800f3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 132
    :goto_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->finish()V

    .line 134
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/events/VoiceMessageApprovedEvent;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageApprovedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 135
    return-void

    :cond_0
    move v1, v3

    .line 122
    goto :goto_0

    .line 129
    :cond_1
    const v1, 0x7f0800f2

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04001a

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;

    .line 48
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 50
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-class v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForEditEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForEditEvent;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForEditEvent;->getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 52
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isParentalControlEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;->approveVoiceMessageButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isApproved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;->approveVoiceMessageButton:Landroid/widget/Button;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100088

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 62
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 65
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->initToolbar()V

    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->showToolbarTitle(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_3
    const v0, 0x7f08016a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->showToolbarTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->isAcceptedFriend()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 80
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f110000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "inflater":Landroid/view/MenuInflater;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method onDeleteClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10008a
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017b

    .line 140
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800fd

    .line 141
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08003a

    new-instance v2, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;)V

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080034

    const/4 v2, 0x0

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->onReplyClicked()V

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x7f100169
        :pswitch_0
    .end packed-switch
.end method

.method public onPlaybackCompleted()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onPlaybackPaused()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->markVoiceMessageAsViewed()V

    .line 157
    return-void
.end method

.method onReplyClicked()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->startForResult(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Profile;I)V

    .line 116
    return-void
.end method
