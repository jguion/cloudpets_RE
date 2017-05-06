.class public Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityCreateAccountBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final displayName:Landroid/widget/EditText;

.field public final email:Landroid/widget/EditText;

.field public final logInButton:Landroid/widget/Button;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/FrameLayout;

.field public final password:Landroid/widget/EditText;

.field public final passwordRepeat:Landroid/widget/EditText;

.field public final profilePhoto:Landroid/widget/ImageView;

.field public final subHeadingText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10009f

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a2

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a3

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a4

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a5

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 102
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mDirtyFlags:J

    .line 36
    const/16 v1, 0x9

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->displayName:Landroid/widget/EditText;

    .line 38
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->email:Landroid/widget/EditText;

    .line 39
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->logInButton:Landroid/widget/Button;

    .line 40
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 41
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mboundView1:Landroid/widget/FrameLayout;

    .line 43
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mboundView1:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->password:Landroid/widget/EditText;

    .line 45
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->passwordRepeat:Landroid/widget/EditText;

    .line 46
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 47
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->subHeadingText:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->setRootTag(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->invalidateAll()V

    .line 50
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 111
    const-string v0, "layout/activity_create_account_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
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

    .line 114
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 108
    const v0, 0x7f04001d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 105
    const v0, 0x7f04001d

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

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
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mDirtyFlags:J

    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mboundView1:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    :cond_0
    return-void

    .line 93
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->requestRebind()V

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
