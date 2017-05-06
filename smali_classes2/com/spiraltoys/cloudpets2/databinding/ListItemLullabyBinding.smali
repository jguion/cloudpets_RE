.class public Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ListItemLullabyBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final lullabyImage:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field public final tile:Lcom/spiraltoys/cloudpets2/views/FixedAspectLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10013d

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 26
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 114
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mDirtyFlags:J

    .line 27
    const/4 v1, 0x4

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->lullabyImage:Landroid/widget/ImageView;

    .line 29
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 30
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 31
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mboundView1:Landroid/widget/TextView;

    .line 32
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 33
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/views/FixedAspectLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->tile:Lcom/spiraltoys/cloudpets2/views/FixedAspectLayout;

    .line 34
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->setRootTag(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->invalidateAll()V

    .line 36
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 123
    const-string v0, "layout/list_item_lullaby_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view tag isn\'t correct on view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 120
    const v0, 0x7f040064

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 117
    const v0, 0x7f040064

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 57
    const-string v0, "BINDER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3

    const-wide/16 v6, 0x0

    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mDirtyFlags:J

    .line 92
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, "nameResourceIdLullaby":I
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 97
    .local v2, "lullaby":Lcom/spiraltoys/cloudpets2/model/Lullaby;
    and-long v4, v0, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 102
    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Lullaby;->getNameResourceId()I

    move-result v3

    .line 107
    :cond_0
    and-long v4, v0, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :cond_1
    return-void

    .line 93
    .end local v2    # "lullaby":Lcom/spiraltoys/cloudpets2/model/Lullaby;
    .end local v3    # "nameResourceIdLullaby":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getLullaby()Lcom/spiraltoys/cloudpets2/model/Lullaby;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    monitor-exit p0

    .line 53
    :goto_0
    return v0

    .line 52
    :cond_0
    monitor-exit p0

    .line 53
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mDirtyFlags:J

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->requestRebind()V

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldId"    # I

    .prologue
    .line 82
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public setLullaby(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V
    .locals 4
    .param p1, "lullaby"    # Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->mDirtyFlags:J

    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 63
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->setLullaby(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
