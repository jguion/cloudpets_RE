.class public Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;
.super Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;
.source "EditParentProfileActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;",
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector<TT;>;"
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Ljava/lang/Object;)V
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;, "TT;"
    const v2, 0x7f1000ae

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V

    .line 12
    const-string v1, "field \'mSaveProfileButton\' and method \'onSaveProfileClicked\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mSaveProfileButton\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mSaveProfileButton:Landroid/widget/Button;

    .line 14
    new-instance v1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;, "TT;"
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mSaveProfileButton:Landroid/widget/Button;

    .line 28
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V

    return-void
.end method
