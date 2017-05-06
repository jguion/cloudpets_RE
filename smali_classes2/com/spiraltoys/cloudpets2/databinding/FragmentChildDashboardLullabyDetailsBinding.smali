.class public Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentChildDashboardLullabyDetailsBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final durationLabel:Landroid/widget/TextView;

.field public final increaseDurationButton:Landroid/widget/ImageButton;

.field public final increaseVolumeButton:Landroid/widget/ImageButton;

.field public final lullabyImage:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field public final reduceDurationButton:Landroid/widget/ImageButton;

.field public final reduceVolumeButton:Landroid/widget/ImageButton;

.field public final sendButton:Landroid/support/design/widget/FloatingActionButton;

.field public final volumeLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f5

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f6

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f7

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000f8

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 38
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 132
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mDirtyFlags:J

    .line 39
    const/16 v1, 0xa

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->durationLabel:Landroid/widget/TextView;

    .line 41
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->increaseDurationButton:Landroid/widget/ImageButton;

    .line 42
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->increaseVolumeButton:Landroid/widget/ImageButton;

    .line 43
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->lullabyImage:Landroid/widget/ImageView;

    .line 44
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 45
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mboundView1:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->reduceDurationButton:Landroid/widget/ImageButton;

    .line 49
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->reduceVolumeButton:Landroid/widget/ImageButton;

    .line 50
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->sendButton:Landroid/support/design/widget/FloatingActionButton;

    .line 51
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->volumeLabel:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->setRootTag(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->invalidateAll()V

    .line 54
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 141
    const-string v0, "layout/fragment_child_dashboard_lullaby_details_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
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

    .line 144
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 138
    const v0, 0x7f040044

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 135
    const v0, 0x7f040044

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 75
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

    .line 76
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3

    const-wide/16 v6, 0x0

    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mDirtyFlags:J

    .line 110
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "nameResourceIdLullaby":I
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 115
    .local v2, "lullaby":Lcom/spiraltoys/cloudpets2/model/Lullaby;
    and-long v4, v0, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 120
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Lullaby;->getNameResourceId()I

    move-result v3

    .line 125
    :cond_0
    and-long v4, v0, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 129
    :cond_1
    return-void

    .line 111
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
    .line 95
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    monitor-exit p0

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_0
    monitor-exit p0

    .line 71
    const/4 v0, 0x0

    goto :goto_0

    .line 70
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
    .line 58
    monitor-enter p0

    .line 59
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->requestRebind()V

    .line 62
    return-void

    .line 60
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
    .line 100
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public setLullaby(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V
    .locals 4
    .param p1, "lullaby"    # Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 93
    return-void

    .line 91
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
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 81
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->setLullaby(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
