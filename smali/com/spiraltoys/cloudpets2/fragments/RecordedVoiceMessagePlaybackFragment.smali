.class public Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;
.super Landroid/app/Fragment;
.source "RecordedVoiceMessagePlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$OnRecordedVoiceMessagePlaybackFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_RECIPIENT_PROFILE_ID:Ljava/lang/String; = "arg_recipient_profile_id"

.field private static final ARG_RECORDING_URI:Ljava/lang/String; = "arg_recording_uri"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$OnRecordedVoiceMessagePlaybackFragmentInteractionListener;

.field private mRecipientProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mRecordingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 43
    return-void
.end method

.method private getRecipientProfileId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_recipient_profile_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/net/Uri;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;
    .locals 3
    .param p0, "recordingUri"    # Landroid/net/Uri;
    .param p1, "recipientProfileId"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;-><init>()V

    .line 34
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_recording_uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    const-string v2, "arg_recipient_profile_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$OnRecordedVoiceMessagePlaybackFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$OnRecordedVoiceMessagePlaybackFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnRecordedVoiceMessagePlaybackFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCancelClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100121
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_recording_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mRecordingUri:Landroid/net/Uri;

    .line 51
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getRecipientProfileId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getRecipientProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mRecipientProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    const v0, 0x7f040057

    invoke-static {p1, v0, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;

    .line 64
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 66
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 70
    :cond_0
    if-nez p3, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000e3

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mRecordingUri:Landroid/net/Uri;

    .line 73
    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->newInstance(Landroid/net/Uri;Z)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mRecipientProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;->selectRecipientsButton:Landroid/widget/Button;

    const v1, 0x7f080063

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mRecipientProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSelectClicked()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000fd
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mRecipientProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$OnRecordedVoiceMessagePlaybackFragmentInteractionListener;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->mRecipientProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-interface {v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$OnRecordedVoiceMessagePlaybackFragmentInteractionListener;->onSendToRecipientSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->newInstance(ZZZLjava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;

    move-result-object v0

    .line 107
    .local v0, "fragment":Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1000d0

    .line 109
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
