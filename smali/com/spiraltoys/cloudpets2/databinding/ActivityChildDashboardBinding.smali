.class public Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityChildDashboardBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final adView:Lcom/google/android/gms/ads/AdView;

.field public final childDashboardHelp:Landroid/widget/ImageView;

.field public final connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

.field public final container:Landroid/widget/FrameLayout;

.field public final floatingMenuUnderlay:Landroid/view/View;

.field private mDirtyFlags:J

.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field public final messageCount:Landroid/widget/TextView;

.field public final petVideo:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

.field public final profilePickerContainer:Landroid/widget/FrameLayout;

.field public final showGamesButton:Landroid/support/design/widget/FloatingActionButton;

.field public final showGamesButtonLabel:Landroid/widget/TextView;

.field public final showLullabiesButton:Landroid/support/design/widget/FloatingActionButton;

.field public final showLullabiesButtonLabel:Landroid/widget/TextView;

.field public final showMessagesButton:Landroid/support/design/widget/FloatingActionButton;

.field public final showMessagesButtonLabel:Landroid/widget/TextView;

.field public final showStoriesButton:Landroid/support/design/widget/FloatingActionButton;

.field public final showStoriesButtonLabel:Landroid/widget/TextView;

.field public final videoPlaceholder:Landroid/widget/ImageView;

.field public final visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "fragment_overlay_visiting_cloudpet"

    aput-object v2, v1, v5

    new-array v2, v3, [I

    aput v3, v2, v5

    new-array v3, v3, [I

    const v4, 0x7f040053

    aput v4, v3, v5

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 15
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100094

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100095

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100083

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10008d

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100096

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100097

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10007e

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10007f

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100098

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100099

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10009a

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10009b

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10009c

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100084

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100085

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10009d

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 156
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mDirtyFlags:J

    .line 59
    const/16 v1, 0x12

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    .line 61
    const/16 v1, 0x11

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->childDashboardHelp:Landroid/widget/ImageView;

    .line 62
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    .line 63
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->container:Landroid/widget/FrameLayout;

    .line 64
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->container:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 65
    const/16 v1, 0xf

    aget-object v1, v0, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->floatingMenuUnderlay:Landroid/view/View;

    .line 66
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->messageCount:Landroid/widget/TextView;

    .line 67
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->petVideo:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .line 68
    const/16 v1, 0x10

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->profilePickerContainer:Landroid/widget/FrameLayout;

    .line 69
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showGamesButton:Landroid/support/design/widget/FloatingActionButton;

    .line 70
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showGamesButtonLabel:Landroid/widget/TextView;

    .line 71
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showLullabiesButton:Landroid/support/design/widget/FloatingActionButton;

    .line 72
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showLullabiesButtonLabel:Landroid/widget/TextView;

    .line 73
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showMessagesButton:Landroid/support/design/widget/FloatingActionButton;

    .line 74
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showMessagesButtonLabel:Landroid/widget/TextView;

    .line 75
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showStoriesButton:Landroid/support/design/widget/FloatingActionButton;

    .line 76
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->showStoriesButtonLabel:Landroid/widget/TextView;

    .line 77
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->videoPlaceholder:Landroid/widget/ImageView;

    .line 78
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    .line 79
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->setRootTag(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->invalidateAll()V

    .line 81
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 165
    const-string v0, "layout/activity_child_dashboard_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
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

    .line 168
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 162
    const v0, 0x7f04001c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 159
    const v0, 0x7f04001c

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 106
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

    .line 107
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3

    const-wide/16 v6, 0x0

    .line 138
    const-wide/16 v0, 0x0

    .line 139
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mDirtyFlags:J

    .line 141
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mDirtyFlags:J

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 145
    .local v2, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    and-long v4, v0, v8

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 148
    :cond_0
    and-long v4, v0, v8

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v3, v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->setProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->executePendingBindings()V

    .line 153
    return-void

    .line 142
    .end local v2    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 96
    monitor-exit p0

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->invalidateAll()V

    .line 89
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->requestRebind()V

    .line 90
    return-void

    .line 87
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
    .line 131
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public setProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 4
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->mDirtyFlags:J

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 124
    return-void

    .line 122
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
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 112
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/spiraltoys/cloudpets2/model/Profile;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->setProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 113
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
