.class public Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;
.super Landroid/app/DialogFragment;
.source "SelectProfileFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static FRIEND_PERMISSION_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRIEND_PROFILE_ID:Ljava/lang/String; = "FRIEND_PROFILE_ID"

.field private static final INVITE_SELECT:Ljava/lang/String; = "INVITE_SELECT"

.field private static final MULTI_SELECT:Ljava/lang/String; = "MULTI_SELECT"

.field private static final SET_TITLE_TO_SEND:Ljava/lang/String; = "SET_TITLE_TO_SEND"

.field public static final TAG:Ljava/lang/String; = "SELECT_PROFILE_DIALOG"


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

.field private mFriendProfileId:Ljava/lang/String;

.field private mIsInviteSelect:Z

.field private mIsMultiSelect:Z

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;

.field private mSetTitleToSend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$2;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$2;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->FRIEND_PERMISSION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->setupAdapter(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method

.method public static newInstance()Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;
    .locals 4

    .prologue
    .line 73
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;-><init>()V

    .line 74
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "MULTI_SELECT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v1
.end method

.method public static newInstance(ZZZLjava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;
    .locals 3
    .param p0, "isMultiSelect"    # Z
    .param p1, "isInviteSelect"    # Z
    .param p2, "setTitleToSend"    # Z
    .param p3, "friendProfileId"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;-><init>()V

    .line 82
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "MULTI_SELECT"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-string v2, "INVITE_SELECT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v2, "SET_TITLE_TO_SEND"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string v2, "FRIEND_PROFILE_ID"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v1
.end method

.method private reloadProfilesFromServerAndAttemptRecovery()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 155
    return-void
.end method

.method private setupAdapter(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 5
    .param p1, "adultProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 159
    .local v1, "myChildrenQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const/4 v3, 0x1

    invoke-static {v3, v4, v4, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsLocalDatastoreQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v2

    .line 160
    .local v2, "myFriendsQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    iget-boolean v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mIsInviteSelect:Z

    if-eqz v3, :cond_1

    .line 161
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mFriendProfileId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 162
    new-instance v3, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    const-class v4, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;

    invoke-direct {v3, v1, v4}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;-><init>(Lcom/parse/ParseQuery;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 177
    return-void

    .line 165
    :cond_0
    :try_start_0
    new-instance v3, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mFriendProfileId:Ljava/lang/String;

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;-><init>(Lcom/parse/ParseQuery;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Lcom/parse/ParseException;
    :cond_1
    iget-boolean v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mIsMultiSelect:Z

    if-eqz v3, :cond_2

    .line 171
    new-instance v3, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    invoke-direct {v3, v1, v2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;)V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    goto :goto_0

    .line 173
    :cond_2
    new-instance v3, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    const-class v4, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;

    invoke-direct {v3, v1, v4}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;-><init>(Lcom/parse/ParseQuery;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 190
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
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
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INVITE_SELECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mIsInviteSelect:Z

    .line 98
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MULTI_SELECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mIsMultiSelect:Z

    .line 99
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SET_TITLE_TO_SEND"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mSetTitleToSend:Z

    .line 100
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FRIEND_PROFILE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mFriendProfileId:Ljava/lang/String;

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 110
    const v2, 0x7f04005e

    const/4 v3, 0x0

    invoke-static {p1, v2, p2, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    .line 111
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 113
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/spiraltoys/cloudpets2/BaseActivity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mSetTitleToSend:Z

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0801a3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 118
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 119
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 120
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 122
    iget-boolean v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mIsMultiSelect:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mIsInviteSelect:Z

    if-eqz v2, :cond_2

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->selectProfileButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    .local v0, "adultProfile":Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->setupAdapter(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 137
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    .end local v0    # "adultProfile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :goto_0
    return-object v2

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Lcom/parse/ParseException;
    invoke-virtual {v1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 132
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->reloadProfilesFromServerAndAttemptRecovery()V

    .line 133
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 204
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 205
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v0, v0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->release()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v0, v0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->release()V

    .line 218
    :cond_1
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 219
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;->getSelectedProfiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;->onProfilesSelected(Ljava/util/Collection;)V

    .line 241
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessageFailedToSend;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessageFailedToSend;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->selectProfileButton:Landroid/widget/Button;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 199
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;->onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 184
    :cond_0
    return-void
.end method

.method onSelectProfileClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100135
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v1, v1, Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;

    invoke-interface {v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;->getSelectedProfiles()Ljava/util/Collection;

    move-result-object v0

    .line 231
    .local v0, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080093

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    .line 237
    .end local v0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local v0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;

    invoke-interface {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;->onProfilesSelected(Ljava/util/Collection;)V

    goto :goto_0
.end method
