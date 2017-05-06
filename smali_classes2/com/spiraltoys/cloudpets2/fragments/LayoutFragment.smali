.class public Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;
.super Landroid/app/Fragment;
.source "LayoutFragment.java"


# static fields
.field public static final ARG_LAYOUT_RESOURCE_ID:Ljava/lang/String; = "arg_layout_resource_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;
    .locals 3
    .param p0, "layoutResourceId"    # I

    .prologue
    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_layout_resource_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;-><init>()V

    .line 21
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_layout_resource_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
