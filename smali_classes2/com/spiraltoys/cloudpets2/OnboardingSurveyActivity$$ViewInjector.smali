.class public Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;
.super Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;
.source "OnboardingSurveyActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;",
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector<TT;>;"
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;Ljava/lang/Object;)V
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
    .line 9
    .local p0, "this":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;, "TT;"
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V

    .line 12
    const v1, 0x7f1000c9

    const-string v2, "method \'onHaveCloudPetClicked\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v1, 0x7f1000ca

    const-string v2, "method \'onDontHaveCloudPetClicked\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector$2;-><init>(Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;, "TT;"
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 35
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;)V

    return-void
.end method
