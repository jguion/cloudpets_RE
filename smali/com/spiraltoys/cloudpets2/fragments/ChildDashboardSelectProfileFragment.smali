.class public Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;
.super Landroid/app/Fragment;
.source "ChildDashboardSelectProfileFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_SENDER_ID:Ljava/lang/String; = "arg_sender_id"


# instance fields
.field private mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;

.field private mSendingProfile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;
    .locals 4
    .param p0, "sendingProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_sender_id"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;-><init>()V

    .line 44
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnSelectProfileFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_sender_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mSendingProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    const v1, 0x7f040045

    invoke-static {p1, v1, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    .line 68
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 70
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mSendingProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mSendingProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 71
    invoke-static {v5, v4, v4, v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsLocalDatastoreQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    .line 73
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    iget-object v0, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 74
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    new-instance v1, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 76
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 80
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 105
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->release()V

    .line 108
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;->onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 88
    :cond_0
    return-void
.end method

.method onSelectProfileClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000f8
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->getSelectedProfiles()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080093

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    invoke-interface {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;->onProfilesSelected(Ljava/util/List;)V

    goto :goto_0
.end method
