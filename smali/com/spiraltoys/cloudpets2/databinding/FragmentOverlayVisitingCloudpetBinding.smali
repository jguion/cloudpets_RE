.class public Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentOverlayVisitingCloudpetBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/TextView;

.field public final visitingCloudpetOverlay:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 23
    invoke-direct {p0, p1, v5}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 139
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mDirtyFlags:J

    .line 24
    const/4 v1, 0x3

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mboundView1:Landroid/widget/TextView;

    .line 26
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 27
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mboundView2:Landroid/widget/TextView;

    .line 28
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 29
    aget-object v1, v0, v5

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->visitingCloudpetOverlay:Landroid/widget/FrameLayout;

    .line 30
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->visitingCloudpetOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->setRootTag(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->invalidateAll()V

    .line 33
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 148
    const-string v0, "layout/fragment_overlay_visiting_cloudpet_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
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

    .line 151
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 145
    const v0, 0x7f040053

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 142
    const v0, 0x7f040053

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 54
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

    .line 55
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 12

    .prologue
    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mDirtyFlags:J

    .line 89
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const/4 v6, 0x0

    .line 92
    .local v6, "plushToyProfile":Lcom/spiraltoys/cloudpets2/model/PlushToy;
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 93
    .local v7, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    const/4 v0, 0x0

    .line 94
    .local v0, "AndroidStringMessageChildDashboardTransitionNickNamePlushToyProfile":Ljava/lang/String;
    const/4 v5, 0x0

    .line 95
    .local v5, "nickNamePlushToyProfile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, "AndroidStringTitleChildDashboardTransitionDisplayNameProfile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 98
    .local v4, "displayNameProfile":Ljava/lang/String;
    const-wide/16 v8, 0x3

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 103
    if-eqz v7, :cond_0

    .line 104
    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v6

    .line 109
    :cond_0
    if-eqz v6, :cond_1

    .line 110
    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getNickName()Ljava/lang/String;

    move-result-object v5

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->getRoot()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0800f1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v7, :cond_2

    .line 120
    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->getRoot()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080172

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_3
    const-wide/16 v8, 0x3

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 130
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_4
    const-wide/16 v8, 0x3

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 134
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_5
    return-void

    .line 90
    .end local v0    # "AndroidStringMessageChildDashboardTransitionNickNamePlushToyProfile":Ljava/lang/String;
    .end local v1    # "AndroidStringTitleChildDashboardTransitionDisplayNameProfile":Ljava/lang/String;
    .end local v4    # "displayNameProfile":Ljava/lang/String;
    .end local v5    # "nickNamePlushToyProfile":Ljava/lang/String;
    .end local v6    # "plushToyProfile":Lcom/spiraltoys/cloudpets2/model/PlushToy;
    .end local v7    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public getProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    monitor-exit p0

    .line 50
    :goto_0
    return v0

    .line 49
    :cond_0
    monitor-exit p0

    .line 50
    const/4 v0, 0x0

    goto :goto_0

    .line 49
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
    .line 37
    monitor-enter p0

    .line 38
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mDirtyFlags:J

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->requestRebind()V

    .line 41
    return-void

    .line 39
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
    .line 79
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public setProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 4
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->mDirtyFlags:J

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 72
    return-void

    .line 70
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
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 63
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 60
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/spiraltoys/cloudpets2/model/Profile;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->setProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
