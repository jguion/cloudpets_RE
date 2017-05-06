.class public Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;
.super Landroid/app/Fragment;
.source "ChildStoriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment$OnChildDashboardStoriesInteractionListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment$OnChildDashboardStoriesInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment$OnChildDashboardStoriesInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment$OnChildDashboardStoriesInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnChildDashboardStoriesInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v1, 0x7f040046

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;

    .line 37
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 39
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;

    .line 41
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;

    iget-object v0, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 43
    new-instance v1, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 44
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 46
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/StoryClickedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/StoryClickedEvent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment$OnChildDashboardStoriesInteractionListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment$OnChildDashboardStoriesInteractionListener;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/StoryClickedEvent;->getStory()Lcom/spiraltoys/cloudpets2/model/Story;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment$OnChildDashboardStoriesInteractionListener;->onStorySelected(Lcom/spiraltoys/cloudpets2/model/Story;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 52
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 58
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 59
    return-void
.end method
