.class public Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityBarnyardSoundsGameBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final backgroundImage:Landroid/widget/ImageView;

.field public final connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

.field public final gameContainer:Landroid/widget/FrameLayout;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final tutorialButtonContainer:Landroid/widget/FrameLayout;

.field public final tutorialCharacter:Landroid/widget/ImageView;

.field public final tutorialOverlay:Landroid/widget/LinearLayout;

.field public final tutorialText:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10008b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10008c

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10008d

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10008e

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10008f

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100090

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100091

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100092

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 98
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->mDirtyFlags:J

    .line 37
    const/16 v1, 0x9

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->backgroundImage:Landroid/widget/ImageView;

    .line 39
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    .line 40
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->gameContainer:Landroid/widget/FrameLayout;

    .line 41
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 42
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 43
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 44
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialButtonContainer:Landroid/widget/FrameLayout;

    .line 45
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialCharacter:Landroid/widget/ImageView;

    .line 46
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialOverlay:Landroid/widget/LinearLayout;

    .line 47
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialText:Landroid/widget/ScrollView;

    .line 48
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->setRootTag(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->invalidateAll()V

    .line 50
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 107
    const-string v0, "layout/activity_barnyard_sounds_game_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
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

    .line 110
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 104
    const v0, 0x7f04001b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 101
    const v0, 0x7f04001b

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 71
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

    .line 72
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->mDirtyFlags:J

    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0

    .line 95
    return-void

    .line 93
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
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    monitor-exit p0

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_0
    monitor-exit p0

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    .line 66
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
    .line 54
    monitor-enter p0

    .line 55
    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->requestRebind()V

    .line 58
    return-void

    .line 56
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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    .line 75
    .line 77
    const/4 v0, 0x0

    return v0
.end method
