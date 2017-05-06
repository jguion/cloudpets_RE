.class public Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;
.super Landroid/app/Fragment;
.source "ChildVoiceMessagesFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# static fields
.field private static final ARG_PROFILE_ID:Ljava/lang/String; = "arg_profile_id"

.field private static final MESSAGES_BEAR_FADE_ANIMATION_DURATION:I = 0x190


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

.field private mMaxMessageCountToShowBear:I

.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    .prologue
    .line 32
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mMaxMessageCountToShowBear:I

    return v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->updateEmptyView()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;
    .locals 3
    .param p0, "profileId"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;-><init>()V

    .line 45
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_profile_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method

.method private updateEmptyView()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->emptyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->emptyView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_profile_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mMaxMessageCountToShowBear:I

    .line 70
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 71
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
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
    const/4 v4, 0x0

    .line 75
    const v1, 0x7f04004a

    invoke-static {p1, v1, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    .line 76
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 77
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 85
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isParentalControlEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;-><init>(Lcom/parse/ParseQuery;)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    .line 86
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$2;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)V

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 94
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v0, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 95
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    new-instance v1, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 97
    new-instance v1, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 98
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 99
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 149
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->release()V

    .line 158
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 165
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 167
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 168
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    .line 170
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$4;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 180
    return-void
.end method
