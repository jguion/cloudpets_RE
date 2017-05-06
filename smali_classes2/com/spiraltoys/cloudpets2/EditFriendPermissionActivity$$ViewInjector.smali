.class public Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;
.super Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;
.source "EditFriendPermissionActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;",
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector<TT;>;"
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;Ljava/lang/Object;)V
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;, "TT;"
    const v3, 0x7f1000a9

    const v2, 0x7f1000a0

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/BaseActivity;Ljava/lang/Object;)V

    .line 12
    const-string v1, "field \'mProfilePhoto\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mProfilePhoto\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfilePhoto:Landroid/widget/ImageView;

    .line 14
    const-string v1, "field \'mProfileName\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mProfileName\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfileName:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f1000ab

    const-string v2, "method \'savePermissionsClicked\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;, "TT;"
    const/4 v0, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/BaseActivity;)V

    .line 30
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfilePhoto:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfileName:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V

    return-void
.end method
