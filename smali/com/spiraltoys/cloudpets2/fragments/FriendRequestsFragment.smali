.class public Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;
.super Landroid/app/Fragment;
.source "FriendRequestsFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->setupAdapters(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method

.method private checkForChildProfiles()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method private reloadProfilesFromServerAndAttemptRecovery()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 85
    return-void
.end method

.method private setupAdapters(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 9
    .param p1, "adultProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 89
    const/4 v4, 0x0

    invoke-static {v7, v7, v8, v4}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsLocalDatastoreQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v4

    const-string v5, "recipient"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 90
    .local v0, "childFriendsQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    const-class v4, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v4}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v2

    .line 91
    .local v2, "innerQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v4, "owner"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 92
    const-string v4, "sourceProfile"

    invoke-virtual {v0, v4, v2}, Lcom/parse/ParseQuery;->whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;

    .line 94
    invoke-static {v7, v7, v8, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsLocalDatastoreQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v3

    .line 97
    .local v3, "myFriendsQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    :try_start_0
    new-instance v4, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalChildProfilesCount()I

    move-result v5

    invoke-direct {v4, v0, v3, v5}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;I)V

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    .line 98
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->checkForChildProfiles()V

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lcom/parse/ParseException;
    invoke-virtual {v1}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 110
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnFriendRequestInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v2, 0x7f040051

    const/4 v3, 0x0

    invoke-static {p1, v2, p2, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    .line 51
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 53
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 54
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 59
    :try_start_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    .local v0, "adultProfile":Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->setupAdapters(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 67
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    .end local v0    # "adultProfile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lcom/parse/ParseException;
    invoke-virtual {v1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 62
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->reloadProfilesFromServerAndAttemptRecovery()V

    .line 63
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->release()V

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;

    .line 123
    return-void
.end method

.method public onInviteFriendClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000c0
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalChildProfilesCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;

    invoke-interface {v1}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;->onInviteFriend()V

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080111

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;->onRefreshFriendRequestList(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 130
    :cond_0
    return-void
.end method
