.class public Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;
.super Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;
.source "InteractiveToyActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;",
        ">",
        "Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector<TT;>;"
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;, "TT;"
    const v4, 0x7f100095

    const v3, 0x7f100094

    const v2, 0x7f100093

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V

    .line 12
    const-string v1, "field \'mContainer\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mContainer\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 14
    const-string v1, "field \'mPetVideoSurfaceView\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mPetVideoSurfaceView\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .line 16
    const-string v1, "field \'mVideoPlaceholder\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mVideoPlaceholder\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    .line 18
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;, "TT;"
    const/4 v0, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 23
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 24
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .line 25
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    .line 26
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V

    return-void
.end method
