.class public Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityInviteFriendBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final email:Landroid/widget/EditText;

.field public final inviteFriendButton:Landroid/widget/Button;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final relationshipSpinner:Landroid/support/v7/widget/AppCompatSpinner;

.field public final selectProfileFragment:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000bf

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000aa

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000c0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 86
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->mDirtyFlags:J

    .line 29
    const/4 v1, 0x5

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->email:Landroid/widget/EditText;

    .line 31
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->inviteFriendButton:Landroid/widget/Button;

    .line 32
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 33
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 34
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->relationshipSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    .line 35
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->selectProfileFragment:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->setRootTag(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->invalidateAll()V

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 95
    const-string v0, "layout/activity_invite_friend_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
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

    .line 98
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 92
    const v0, 0x7f040024

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 89
    const v0, 0x7f040024

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 59
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

    .line 60
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    .line 78
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 79
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->mDirtyFlags:J

    .line 80
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->mDirtyFlags:J

    .line 81
    monitor-exit p0

    .line 83
    return-void

    .line 81
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
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    monitor-exit p0

    .line 55
    :goto_0
    return v0

    .line 54
    :cond_0
    monitor-exit p0

    .line 55
    const/4 v0, 0x0

    goto :goto_0

    .line 54
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
    .line 42
    monitor-enter p0

    .line 43
    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->mDirtyFlags:J

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->requestRebind()V

    .line 46
    return-void

    .line 44
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
    .line 70
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    .line 63
    .line 65
    const/4 v0, 0x0

    return v0
.end method
