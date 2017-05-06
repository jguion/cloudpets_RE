.class public Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ListItemChildVoiceMessageBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

.field private final mboundView0:Landroid/support/v7/widget/GridLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView4:Landroid/widget/TextView;

.field public final profilePhoto:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 27
    invoke-direct {p0, p1, v5}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 198
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mDirtyFlags:J

    .line 28
    const/4 v1, 0x6

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "bindings":[Ljava/lang/Object;
    aget-object v1, v0, v5

    check-cast v1, Landroid/support/v7/widget/GridLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView0:Landroid/support/v7/widget/GridLayout;

    .line 30
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/GridLayout;->setTag(Ljava/lang/Object;)V

    .line 31
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView1:Landroid/widget/TextView;

    .line 32
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 33
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView2:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 35
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView3:Landroid/widget/TextView;

    .line 36
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 37
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView4:Landroid/widget/TextView;

    .line 38
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView4:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 39
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->setRootTag(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->invalidateAll()V

    .line 42
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 207
    const-string v0, "layout/list_item_child_voice_message_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
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

    .line 210
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 204
    const v0, 0x7f040060

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 201
    const v0, 0x7f040060

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 63
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

    .line 64
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 18

    .prologue
    .line 95
    const-wide/16 v6, 0x0

    .line 96
    .local v6, "dirtyFlags":J
    monitor-enter p0

    .line 97
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mDirtyFlags:J

    .line 98
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "IsViewedVoiceMessageGONEViewVISIBLEView":I
    const/4 v2, 0x0

    .line 102
    .local v2, "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelLessThanAMinuteAgoRelativeCreationDateStringVoiceMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 103
    .local v8, "isLessThanAMinuteOldVoiceMessage":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 104
    .local v12, "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    const/4 v10, 0x0

    .line 105
    .local v10, "relativeCreationDateStringVoiceMessage":Ljava/lang/String;
    const/4 v11, 0x0

    .line 106
    .local v11, "senderVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    const/4 v4, 0x0

    .line 107
    .local v4, "IsViewedVoiceMessageVISIBLEViewGONEView":I
    const/4 v5, 0x0

    .line 108
    .local v5, "displayNameSenderVoiceMessage":Ljava/lang/String;
    const/4 v9, 0x0

    .line 110
    .local v9, "isViewedVoiceMessage":Z
    const-wide/16 v14, 0x3

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_4

    .line 115
    if-eqz v12, :cond_0

    .line 116
    invoke-virtual {v12}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isLessThanAMinuteOld()Z

    move-result v8

    .line 119
    :cond_0
    if-eqz v8, :cond_b

    .line 120
    const-wide/16 v14, 0x20

    or-long/2addr v6, v14

    .line 127
    :goto_0
    if-eqz v12, :cond_1

    .line 128
    invoke-virtual {v12}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v11

    .line 133
    :cond_1
    if-eqz v11, :cond_2

    .line 134
    invoke-virtual {v11}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 139
    :cond_2
    if-eqz v12, :cond_3

    .line 140
    invoke-virtual {v12}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isViewed()Z

    move-result v9

    .line 143
    :cond_3
    if-eqz v9, :cond_c

    .line 144
    const-wide/16 v14, 0x8

    or-long/2addr v6, v14

    .line 145
    const-wide/16 v14, 0x80

    or-long/2addr v6, v14

    .line 153
    :goto_1
    if-eqz v9, :cond_d

    const/16 v3, 0x8

    .line 157
    :goto_2
    if-eqz v9, :cond_e

    const/4 v4, 0x0

    .line 161
    :cond_4
    :goto_3
    const-wide/16 v14, 0x10

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_5

    .line 164
    if-eqz v12, :cond_5

    .line 165
    invoke-virtual {v12}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRelativeCreationDateString()Ljava/lang/String;

    move-result-object v10

    .line 169
    :cond_5
    const-wide/16 v14, 0x3

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_6

    .line 172
    if-eqz v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0800db

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_6
    :goto_4
    const-wide/16 v14, 0x3

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_7
    const-wide/16 v14, 0x3

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_8

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_8
    const-wide/16 v14, 0x3

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_9

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :cond_9
    const-wide/16 v14, 0x3

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mboundView4:Landroid/widget/TextView;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_a
    return-void

    .line 99
    .end local v2    # "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelLessThanAMinuteAgoRelativeCreationDateStringVoiceMessage":Ljava/lang/String;
    .end local v3    # "IsViewedVoiceMessageGONEViewVISIBLEView":I
    .end local v4    # "IsViewedVoiceMessageVISIBLEViewGONEView":I
    .end local v5    # "displayNameSenderVoiceMessage":Ljava/lang/String;
    .end local v8    # "isLessThanAMinuteOldVoiceMessage":Z
    .end local v9    # "isViewedVoiceMessage":Z
    .end local v10    # "relativeCreationDateStringVoiceMessage":Ljava/lang/String;
    .end local v11    # "senderVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    .end local v12    # "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 122
    .restart local v2    # "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelLessThanAMinuteAgoRelativeCreationDateStringVoiceMessage":Ljava/lang/String;
    .restart local v3    # "IsViewedVoiceMessageGONEViewVISIBLEView":I
    .restart local v4    # "IsViewedVoiceMessageVISIBLEViewGONEView":I
    .restart local v5    # "displayNameSenderVoiceMessage":Ljava/lang/String;
    .restart local v8    # "isLessThanAMinuteOldVoiceMessage":Z
    .restart local v9    # "isViewedVoiceMessage":Z
    .restart local v10    # "relativeCreationDateStringVoiceMessage":Ljava/lang/String;
    .restart local v11    # "senderVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    .restart local v12    # "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    :cond_b
    const-wide/16 v14, 0x10

    or-long/2addr v6, v14

    goto/16 :goto_0

    .line 147
    :cond_c
    const-wide/16 v14, 0x4

    or-long/2addr v6, v14

    .line 148
    const-wide/16 v14, 0x40

    or-long/2addr v6, v14

    goto/16 :goto_1

    .line 153
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 157
    :cond_e
    const/16 v4, 0x8

    goto/16 :goto_3

    :cond_f
    move-object v2, v10

    .line 172
    goto :goto_4
.end method

.method public getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    monitor-exit p0

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    monitor-exit p0

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 58
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
    .line 46
    monitor-enter p0

    .line 47
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mDirtyFlags:J

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->requestRebind()V

    .line 50
    return-void

    .line 48
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
    .line 88
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 69
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 4
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
