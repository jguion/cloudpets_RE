.class public Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;
.super Landroid/app/Fragment;
.source "ChildLullabiesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment$OnChildDashboardLullabiesInteractionListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment$OnChildDashboardLullabiesInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
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

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment$OnChildDashboardLullabiesInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment$OnChildDashboardLullabiesInteractionListener;
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

    const-string v4, " must implement OnChildDashboardLullabiesInteractionListener"

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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;

    .line 37
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 39
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;

    .line 41
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;

    iget-object v0, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 43
    new-instance v1, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 44
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 46
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/LullabyClickedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/LullabyClickedEvent;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment$OnChildDashboardLullabiesInteractionListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment$OnChildDashboardLullabiesInteractionListener;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/LullabyClickedEvent;->getLullaby()Lcom/spiraltoys/cloudpets2/model/Lullaby;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment$OnChildDashboardLullabiesInteractionListener;->onLullabySelected(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V

    .line 75
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
