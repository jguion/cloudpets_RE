.class public Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;
.super Landroid/app/Fragment;
.source "ChildStoryDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$OnChildDashboardStoryInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_STORY:Ljava/lang/String; = "ARG_STORY"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$OnChildDashboardStoryInteractionListener;

.field private mStory:Lcom/spiraltoys/cloudpets2/model/Story;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/Story;)Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;
    .locals 3
    .param p0, "story"    # Lcom/spiraltoys/cloudpets2/model/Story;

    .prologue
    .line 39
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;-><init>()V

    .line 40
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ARG_STORY"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$OnChildDashboardStoryInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$OnChildDashboardStoryInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
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
    .line 53
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_STORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Story;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    .line 59
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 64
    const v0, 0x7f040047

    invoke-static {p1, v0, p2, v6}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

    .line 65
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;->setStory(Lcom/spiraltoys/cloudpets2/model/Story;)V

    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 70
    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v4, Lcom/spiraltoys/cloudpets2/expansion/glide/MainExpansionFile;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    .line 71
    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Story;->getPreviewImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/spiraltoys/cloudpets2/expansion/glide/MainExpansionFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    const/4 v0, 0x1

    new-array v8, v0, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v5, v4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIFZ)V

    aput-object v0, v8, v6

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;->storyImage:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 75
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$OnChildDashboardStoryInteractionListener;

    .line 93
    return-void
.end method

.method public onPlayStoryClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000e8
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$OnChildDashboardStoryInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$OnChildDashboardStoryInteractionListener;->onPlayStory(Lcom/spiraltoys/cloudpets2/model/Story;)V

    .line 98
    return-void
.end method
