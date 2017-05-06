.class public Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;
.super Landroid/app/Fragment;
.source "VoiceMessagesFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_PROFILE_TYPE:Ljava/lang/String; = "arg_profile_type"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;

.field private mProfileType:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

.field private mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;)Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mProfileType:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->updateEmptyView()V

    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;
    .locals 3
    .param p0, "profileType"    # Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    .prologue
    .line 38
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;-><init>()V

    .line 39
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_profile_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v1
.end method

.method private updateEmptyView()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->emptyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->emptyView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 130
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_profile_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mProfileType:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    .line 59
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 66
    const v1, 0x7f040052

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    .line 67
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 69
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 76
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    iget-object v0, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 77
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 78
    new-instance v1, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 79
    new-instance v1, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/util/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 80
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;Landroid/support/v7/widget/RecyclerView;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalAdultProfileInBackground(Lcom/parse/GetCallback;)V

    .line 99
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalChildProfilesCount(Lcom/parse/CountCallback;)V

    .line 114
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;->release()V

    .line 123
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 124
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;

    .line 141
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;->onRefresh(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 148
    :cond_0
    return-void
.end method
