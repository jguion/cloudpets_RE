.class public Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;
.super Landroid/app/Fragment;
.source "ChildRecordedMessageActionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_VOICE_MESSAGE_URI:Ljava/lang/String; = "arg_voice_message_URI"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;

.field private mVoiceMessageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    return-void
.end method

.method public static newInstance(Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;
    .locals 3
    .param p0, "recordingUri"    # Landroid/net/Uri;

    .prologue
    .line 35
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;-><init>()V

    .line 36
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_voice_message_URI"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    instance-of v0, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;

    .line 96
    return-void

    .line 94
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "activity must implement OnChildRecordedMessageActionsFragmentInteractionListener"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_voice_message_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mVoiceMessageUri:Landroid/net/Uri;

    .line 54
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 77
    const v0, 0x7f040048

    invoke-static {p1, v0, p2, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

    .line 78
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000fc

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mVoiceMessageUri:Landroid/net/Uri;

    .line 82
    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->newInstance(Landroid/net/Uri;Z)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 85
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onDeleteClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000fe
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mVoiceMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;->onDeleteRecordedMessageClicked(Landroid/net/Uri;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 61
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackCompletedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackCompletedEvent;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;->playbackRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->stopRippleAnimation()V

    .line 73
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackPausedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackPausedEvent;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;->playbackRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->stopRippleAnimation()V

    .line 69
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackStartedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackStartedEvent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;->playbackRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->startRippleAnimation()V

    .line 65
    return-void
.end method

.method onSelectRecipientsClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000fd
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->mVoiceMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment$OnChildRecordedMessageActionsFragmentInteractionListener;->onSelectRecipientsClicked(Landroid/net/Uri;)V

    .line 103
    :cond_0
    return-void
.end method
