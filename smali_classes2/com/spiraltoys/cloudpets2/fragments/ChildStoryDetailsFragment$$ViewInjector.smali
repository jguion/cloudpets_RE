.class public Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ChildStoryDetailsFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;Ljava/lang/Object;)V
    .locals 3
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
    .line 11
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;, "TT;"
    const v1, 0x7f1000e8

    const-string v2, "method \'onPlayStoryClicked\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;, "TT;"
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;)V

    return-void
.end method
