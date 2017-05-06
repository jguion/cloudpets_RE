.class public Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;
.super Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;
.source "CreateOrEditChildProfileActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;",
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector<TT;>;"
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Ljava/lang/Object;)V
    .locals 4
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;, "TT;"
    const v3, 0x7f1000a8

    const v2, 0x7f1000a6

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V

    .line 12
    const-string v1, "field \'mNextButton\' and method \'onNextClicked\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mNextButton\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mNextButton:Landroid/widget/Button;

    .line 14
    new-instance v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const-string v1, "field \'mSaveButton\' and method \'onSaveClicked\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mSaveButton\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveButton:Landroid/widget/Button;

    .line 24
    new-instance v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector$2;-><init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v1, 0x7f1000a7

    const-string v2, "field \'mSaveDeleteButtons\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 33
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveDeleteButtons:Landroid/view/View;

    .line 34
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;, "TT;"
    const/4 v0, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 39
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mNextButton:Landroid/widget/Button;

    .line 40
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveButton:Landroid/widget/Button;

    .line 41
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveDeleteButtons:Landroid/view/View;

    .line 42
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    return-void
.end method
