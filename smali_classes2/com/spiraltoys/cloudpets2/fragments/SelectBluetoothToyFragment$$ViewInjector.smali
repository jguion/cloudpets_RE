.class public Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "SelectBluetoothToyFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;",
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;Ljava/lang/Object;)V
    .locals 6
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;, "TT;"
    const v5, 0x7f100129

    const v4, 0x7f100128

    const v3, 0x7f100126

    const v2, 0x7f10008d

    .line 11
    const-string v1, "field \'mNextToyButton\' and method \'onNextToyButtonClicked\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mNextToyButton\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mNextToyButton:Landroid/widget/Button;

    .line 13
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'mUseToyButton\' and method \'onUseAsSharedToyClicked\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mUseToyButton\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mUseToyButton:Landroid/widget/Button;

    .line 23
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const-string v1, "field \'mConfiguredPetAvatar\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mConfiguredPetAvatar\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    .line 33
    const-string v1, "field \'mConnectionText\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mConnectionText\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f100124

    const-string v2, "field \'mScanningTitleContainer\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mScanningTitleContainer:Landroid/view/View;

    .line 37
    const v1, 0x7f100125

    const-string v2, "field \'mConnectedTitleContainer\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectedTitleContainer:Landroid/view/View;

    .line 39
    const v1, 0x7f100165

    const-string v2, "field \'mProgress2\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mProgress2:Landroid/view/View;

    .line 41
    const v1, 0x7f100166

    const-string v2, "field \'mProgress3\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mProgress3:Landroid/view/View;

    .line 43
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;, "TT;"
    const/4 v0, 0x0

    .line 46
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mNextToyButton:Landroid/widget/Button;

    .line 47
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mUseToyButton:Landroid/widget/Button;

    .line 48
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectionText:Landroid/widget/TextView;

    .line 50
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mScanningTitleContainer:Landroid/view/View;

    .line 51
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mConnectedTitleContainer:Landroid/view/View;

    .line 52
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mProgress2:Landroid/view/View;

    .line 53
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->mProgress3:Landroid/view/View;

    .line 54
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V

    return-void
.end method
