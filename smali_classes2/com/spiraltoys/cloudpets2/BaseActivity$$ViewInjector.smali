.class public Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "BaseActivity$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/BaseActivity;",
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/BaseActivity;, "TT;"
    const v3, 0x7f10008e

    const/4 v2, 0x0

    .line 11
    const v1, 0x7f1000d2

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    iput-object v0, p2, Lcom/spiraltoys/cloudpets2/BaseActivity;->mStatusBarSpace:Landroid/view/View;

    .line 13
    invoke-virtual {p1, p3, v3, v2}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mToolbar\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 15
    const v1, 0x7f100079

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0    # "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 17
    new-instance v1, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_0
    const v1, 0x7f100086

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 28
    new-instance v1, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector$2;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_1
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/BaseActivity;, "TT;"
    const/4 v0, 0x0

    .line 40
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/BaseActivity;->mStatusBarSpace:Landroid/view/View;

    .line 41
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 42
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    return-void
.end method
