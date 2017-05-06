.class public Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mStories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Story;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->getInstance()Lcom/spiraltoys/cloudpets2/model/StoryLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->loadStories(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;->mStories:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;->mStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;->onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;->mStories:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Story;

    invoke-virtual {p1, v0}, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;->setStory(Lcom/spiraltoys/cloudpets2/model/Story;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040068

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemStoryBinding;

    invoke-direct {v1, p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter$StoryListItemViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/adapters/StoryAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemStoryBinding;)V

    return-object v1
.end method
