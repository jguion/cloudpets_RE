.class public Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "EditAdultProfileFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;",
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;Ljava/lang/Object;)V
    .locals 7
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;, "TT;"
    const v6, 0x7f100113

    const v5, 0x7f100111

    const v4, 0x7f1000a2

    const v3, 0x7f1000a1

    const v2, 0x7f1000a0

    .line 11
    const-string v1, "field \'mProfilePhoto\' and method \'onSetPhotoClicked\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mProfilePhoto\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhoto:Landroid/widget/ImageView;

    .line 13
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'mDisplayNameTextField\' and method \'onDisplayNameChanged\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mDisplayNameTextField\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mDisplayNameTextField:Landroid/widget/EditText;

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    const-string v1, "field \'mEmailTextField\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 48
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mEmailTextField\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mEmailTextField:Landroid/widget/EditText;

    .line 49
    const-string v1, "field \'mPasswordResetContainerKitKat\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mPasswordResetContainerKitKat\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mPasswordResetContainerKitKat:Landroid/support/v7/widget/CardView;

    .line 51
    const-string v1, "field \'mPasswordResetLollipop\' and method \'onPasswordRestClickedLollipop\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mPasswordResetLollipop\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mPasswordResetLollipop:Landroid/widget/Button;

    .line 53
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f100112

    const-string v2, "method \'onPasswordRestClickedKitKat\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 62
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$4;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;, "TT;"
    const/4 v0, 0x0

    .line 73
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhoto:Landroid/widget/ImageView;

    .line 74
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mDisplayNameTextField:Landroid/widget/EditText;

    .line 75
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mEmailTextField:Landroid/widget/EditText;

    .line 76
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mPasswordResetContainerKitKat:Landroid/support/v7/widget/CardView;

    .line 77
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mPasswordResetLollipop:Landroid/widget/Button;

    .line 78
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V

    return-void
.end method
