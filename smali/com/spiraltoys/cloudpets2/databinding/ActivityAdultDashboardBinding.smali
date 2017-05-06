.class public Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityAdultDashboardBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final adView:Lcom/google/android/gms/ads/AdView;

.field public final buttonPanel:Landroid/support/v7/widget/GridLayout;

.field public final buyACloudpetButton:Landroid/widget/Button;

.field public final floatingMenuUnderlay:Landroid/view/View;

.field public final fragmentContainer:Landroid/widget/FrameLayout;

.field public final inviteCount:Landroid/widget/TextView;

.field private mDirtyFlags:J

.field public final manageProfilesButton:Landroid/support/design/widget/FloatingActionButton;

.field public final manageSettingsButton:Landroid/support/design/widget/FloatingActionButton;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field public final messageCount:Landroid/widget/TextView;

.field public final profilePickerContainer:Landroid/widget/FrameLayout;

.field public final recordMessageButton:Landroid/support/design/widget/FloatingActionButton;

.field public final showMessagesButton:Landroid/support/design/widget/FloatingActionButton;

.field public final toolbarClouds:Landroid/widget/FrameLayout;

.field public final tooltip:Landroid/widget/TextView;

.field public final tutorialButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10007c

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10007b

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10007d

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10007e

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10007f

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100080

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100081

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100082

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100079

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100083

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100084

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100085

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100086

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100087

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 119
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->mDirtyFlags:J

    .line 50
    const/16 v1, 0x10

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "bindings":[Ljava/lang/Object;
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    .line 52
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/v7/widget/GridLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->buttonPanel:Landroid/support/v7/widget/GridLayout;

    .line 53
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->buyACloudpetButton:Landroid/widget/Button;

    .line 54
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->floatingMenuUnderlay:Landroid/view/View;

    .line 55
    const/16 v1, 0xf

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 56
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->inviteCount:Landroid/widget/TextView;

    .line 57
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->manageProfilesButton:Landroid/support/design/widget/FloatingActionButton;

    .line 58
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->manageSettingsButton:Landroid/support/design/widget/FloatingActionButton;

    .line 59
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 60
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 61
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->messageCount:Landroid/widget/TextView;

    .line 62
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->profilePickerContainer:Landroid/widget/FrameLayout;

    .line 63
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->recordMessageButton:Landroid/support/design/widget/FloatingActionButton;

    .line 64
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->showMessagesButton:Landroid/support/design/widget/FloatingActionButton;

    .line 65
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->toolbarClouds:Landroid/widget/FrameLayout;

    .line 66
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->toolbarClouds:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 67
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->tooltip:Landroid/widget/TextView;

    .line 68
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->tutorialButton:Landroid/widget/ImageButton;

    .line 69
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->setRootTag(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->invalidateAll()V

    .line 71
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 128
    const-string v0, "layout/activity_adult_dashboard_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
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

    .line 131
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 125
    const v0, 0x7f040019

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 122
    const v0, 0x7f040019

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 92
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

    .line 93
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->mDirtyFlags:J

    .line 113
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->mDirtyFlags:J

    .line 114
    monitor-exit p0

    .line 116
    return-void

    .line 114
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
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    monitor-exit p0

    .line 88
    :goto_0
    return v0

    .line 87
    :cond_0
    monitor-exit p0

    .line 88
    const/4 v0, 0x0

    goto :goto_0

    .line 87
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
    .line 75
    monitor-enter p0

    .line 76
    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->requestRebind()V

    .line 79
    return-void

    .line 77
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
    .line 103
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    .line 96
    .line 98
    const/4 v0, 0x0

    return v0
.end method
