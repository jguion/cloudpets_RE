.class public Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;
.super Landroid/app/Fragment;
.source "ProfilesFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;

.field private mProfileAdapter:Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method onAddProfileClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10011f
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;-><init>()V

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/OnboardingCreateChildProfileActivity;->startWithProfile(Landroid/app/Activity;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 116
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnProfileInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v1, 0x7f040055

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    .line 51
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 53
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 54
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;

    const-class v2, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForEditEvent;

    invoke-direct {v1, v0, v2}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;-><init>(Lcom/parse/ParseQuery;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mProfileAdapter:Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;

    .line 55
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 57
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 58
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 59
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 60
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mProfileAdapter:Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 63
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mProfileAdapter:Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mProfileAdapter:Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->release()V

    .line 99
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 100
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;

    .line 80
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileSelectedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileSelectedEvent;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedEvent;->getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getProfileType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedEvent;->getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->startWithProfile(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedEvent;->getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->startWithProfile(Landroid/app/Activity;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;->onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 85
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 92
    return-void
.end method
