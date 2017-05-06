.class public Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ViewRippleBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field public final ripple1:Landroid/view/View;

.field public final ripple2:Landroid/view/View;

.field public final ripple3:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    return-void
.end method

.method public constructor <init>([Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # [Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 22
    aget-object v1, p1, v4

    invoke-direct {p0, v1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 80
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->mDirtyFlags:J

    .line 23
    const/4 v1, 0x3

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->mapBindings([Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "bindings":[Ljava/lang/Object;
    aget-object v1, v0, v4

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple1:Landroid/view/View;

    .line 25
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple1:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 26
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple2:Landroid/view/View;

    .line 27
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple2:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple3:Landroid/view/View;

    .line 29
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->ripple3:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->setRootTag([Landroid/view/View;)V

    .line 31
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->invalidateAll()V

    .line 32
    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 83
    const v0, 0x7f04008b

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 53
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

    .line 54
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    .line 72
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->mDirtyFlags:J

    .line 74
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->mDirtyFlags:J

    .line 75
    monitor-exit p0

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    monitor-exit p0

    .line 49
    :goto_0
    return v0

    .line 48
    :cond_0
    monitor-exit p0

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 48
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
    .line 36
    monitor-enter p0

    .line 37
    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->mDirtyFlags:J

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;->requestRebind()V

    .line 40
    return-void

    .line 38
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
    .line 64
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    .line 57
    .line 59
    const/4 v0, 0x0

    return v0
.end method
