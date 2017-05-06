.class public Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LullabyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLullabies:[Lcom/spiraltoys/cloudpets2/model/Lullaby;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/model/Lullaby;

    const/4 v1, 0x0

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/Lullaby;

    const v3, 0x7f0800e6

    const v4, 0x7f0200d1

    const v5, 0x7f07000b

    invoke-direct {v2, v3, v4, v5}, Lcom/spiraltoys/cloudpets2/model/Lullaby;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/Lullaby;

    const v3, 0x7f0800e7

    const v4, 0x7f0200d3

    const v5, 0x7f07000c

    invoke-direct {v2, v3, v4, v5}, Lcom/spiraltoys/cloudpets2/model/Lullaby;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/Lullaby;

    const v3, 0x7f0800e8

    const v4, 0x7f0200d4

    const v5, 0x7f07000d

    invoke-direct {v2, v3, v4, v5}, Lcom/spiraltoys/cloudpets2/model/Lullaby;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/Lullaby;

    const v3, 0x7f0800e9

    const v4, 0x7f0200d5

    const v5, 0x7f07000e

    invoke-direct {v2, v3, v4, v5}, Lcom/spiraltoys/cloudpets2/model/Lullaby;-><init>(III)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;->mLullabies:[Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 35
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;->mLullabies:[Lcom/spiraltoys/cloudpets2/model/Lullaby;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;->onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;->mLullabies:[Lcom/spiraltoys/cloudpets2/model/Lullaby;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->setLullaby(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040064

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    invoke-direct {v1, p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;)V

    return-object v1
.end method
