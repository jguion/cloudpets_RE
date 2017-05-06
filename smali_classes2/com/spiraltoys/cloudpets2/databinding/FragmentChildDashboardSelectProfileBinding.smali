.class public Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentChildDashboardSelectProfileBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public final sendButton:Landroid/support/design/widget/FloatingActionButton;

.field public final swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 83
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->mDirtyFlags:J

    .line 27
    const/4 v1, 0x4

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "bindings":[Ljava/lang/Object;
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 29
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 30
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 31
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->sendButton:Landroid/support/design/widget/FloatingActionButton;

    .line 32
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 33
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->setRootTag(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->invalidateAll()V

    .line 35
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 92
    const-string v0, "layout/fragment_child_dashboard_select_profile_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
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

    .line 95
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 89
    const v0, 0x7f040045

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 86
    const v0, 0x7f040045

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 56
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

    .line 57
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->mDirtyFlags:J

    .line 77
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->mDirtyFlags:J

    .line 78
    monitor-exit p0

    .line 80
    return-void

    .line 78
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
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    monitor-exit p0

    .line 52
    :goto_0
    return v0

    .line 51
    :cond_0
    monitor-exit p0

    .line 52
    const/4 v0, 0x0

    goto :goto_0

    .line 51
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
    .line 39
    monitor-enter p0

    .line 40
    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->mDirtyFlags:J

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->requestRebind()V

    .line 43
    return-void

    .line 41
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
    .line 67
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    .line 60
    .line 62
    const/4 v0, 0x0

    return v0
.end method
