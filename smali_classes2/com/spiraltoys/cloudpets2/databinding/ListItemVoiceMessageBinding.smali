.class public Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ListItemVoiceMessageBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mIsParentalControlEnabled:Z

.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

.field private final mboundView0:Landroid/support/v7/widget/GridLayout;

.field private final mboundView1:Landroid/widget/Space;

.field private final mboundView10:Landroid/widget/TextView;

.field private final mboundView11:Landroid/widget/TextView;

.field private final mboundView12:Landroid/widget/Space;

.field private final mboundView13:Landroid/widget/Space;

.field private final mboundView2:Landroid/widget/FrameLayout;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView4:Landroid/widget/TextView;

.field private final mboundView5:Landroid/widget/TextView;

.field private final mboundView6:Landroid/widget/Space;

.field private final mboundView7:Landroid/widget/Space;

.field private final mboundView8:Landroid/widget/TextView;

.field private final mboundView9:Landroid/widget/TextView;

.field public final profilePhoto:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a0

    const/16 v2, 0xe

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

    .line 37
    invoke-direct {p0, p1, v5}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 483
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    .line 38
    const/16 v1, 0xf

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "bindings":[Ljava/lang/Object;
    aget-object v1, v0, v5

    check-cast v1, Landroid/support/v7/widget/GridLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView0:Landroid/support/v7/widget/GridLayout;

    .line 40
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/GridLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView1:Landroid/widget/Space;

    .line 42
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView1:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 43
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView10:Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView10:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 45
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView11:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView11:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 47
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView12:Landroid/widget/Space;

    .line 48
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView12:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 49
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView13:Landroid/widget/Space;

    .line 50
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView13:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 51
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView2:Landroid/widget/FrameLayout;

    .line 52
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 53
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView3:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 55
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView4:Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView4:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 57
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView5:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView5:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 59
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView6:Landroid/widget/Space;

    .line 60
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView6:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 61
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView7:Landroid/widget/Space;

    .line 62
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView7:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 63
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView8:Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView8:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 65
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView9:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView9:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 67
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->setRootTag(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->invalidateAll()V

    .line 70
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 492
    const-string v0, "layout/list_item_voice_message_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
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

    .line 495
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 489
    const v0, 0x7f040069

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 486
    const v0, 0x7f040069

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 91
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

    .line 92
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 42

    .prologue
    .line 136
    const-wide/16 v20, 0x0

    .line 137
    .local v20, "dirtyFlags":J
    monitor-enter p0

    .line 138
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    move-wide/from16 v20, v0

    .line 139
    const-wide/16 v38, 0x0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    const/4 v12, 0x0

    .line 142
    .local v12, "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageVISIBLEViewGONEView":I
    const/4 v14, 0x0

    .line 143
    .local v14, "IsAdultPrivateProfileRecipientVoiceMessageVISIBLEViewGONEView":I
    const/4 v10, 0x0

    .line 144
    .local v10, "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageBooleantrueIsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalseGONEViewVISIBLEView":I
    const/16 v25, 0x0

    .line 145
    .local v25, "isApprovedVoiceMessage":Z
    const/4 v6, 0x0

    .line 146
    .local v6, "IsAdultPrivateProfileRecipientVoiceMessageGONEViewVISIBLEView":I
    const/16 v17, 0x0

    .line 147
    .local v17, "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelLessThanAMinuteAgoRelativeCreationDateStringVoiceMessage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 148
    .local v5, "IsAdultPrivateProfileRecipientVoiceMessageAndroidStringMessageForMeAndroidStringMessageForDisplayNameRecipientVoiceMessage":Ljava/lang/String;
    const/16 v26, 0x0

    .line 149
    .local v26, "isLessThanAMinuteOldVoiceMessage":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    move-object/from16 v36, v0

    .line 150
    .local v36, "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    const/4 v7, 0x0

    .line 151
    .local v7, "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalse":Z
    const/16 v27, 0x0

    .line 152
    .local v27, "isParentViewedVoiceMessage":Z
    const/16 v30, 0x0

    .line 153
    .local v30, "logicalNotIsAdultPrivateProfileRecipientVoiceMessage":Z
    const/4 v11, 0x0

    .line 154
    .local v11, "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageGONEViewVISIBLEView":I
    const/16 v34, 0x0

    .line 155
    .local v34, "relativeCreationDateStringVoiceMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 156
    .local v8, "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessage":Z
    const/16 v16, 0x0

    .line 157
    .local v16, "IsApprovedVoiceMessageVISIBLEViewGONEView":I
    const/16 v24, 0x0

    .line 158
    .local v24, "isAdultPrivateProfileRecipientVoiceMessageLogicalNotIsParentalControlEnabled":Z
    const/16 v35, 0x0

    .line 159
    .local v35, "senderVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    const/4 v15, 0x0

    .line 160
    .local v15, "IsApprovedVoiceMessageGONEViewVISIBLEView":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mIsParentalControlEnabled:Z

    move/from16 v28, v0

    .line 161
    .local v28, "isParentalControlEnabled":Z
    const/4 v4, 0x0

    .line 162
    .local v4, "AndroidStringMessageForDisplayNameRecipientVoiceMessage":Ljava/lang/String;
    const/16 v33, 0x0

    .line 163
    .local v33, "recipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    const/16 v31, 0x0

    .line 164
    .local v31, "logicalNotIsParentalControlEnabled":Z
    const/16 v19, 0x0

    .line 165
    .local v19, "displayNameRecipientVoiceMessage":Ljava/lang/String;
    const/16 v23, 0x0

    .line 166
    .local v23, "isAdultPrivateProfileRecipientVoiceMessage":Z
    const/16 v32, 0x0

    .line 167
    .local v32, "privateProfileRecipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    const/16 v22, 0x0

    .line 168
    .local v22, "displayNameSenderVoiceMessage":Ljava/lang/String;
    const/4 v9, 0x0

    .line 169
    .local v9, "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageBooleantrueIsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalse":Z
    const/16 v29, 0x0

    .line 170
    .local v29, "isViewedVoiceMessage":Z
    const/4 v13, 0x0

    .line 171
    .local v13, "IsAdultPrivateProfileRecipientVoiceMessageLogicalNotIsParentalControlEnabledGONEViewVISIBLEView":I
    const/16 v18, 0x0

    .line 173
    .local v18, "IsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalse":Z
    const-wide/16 v38, 0x7

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_a

    .line 176
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_1

    .line 179
    if-eqz v36, :cond_0

    .line 180
    invoke-virtual/range {v36 .. v36}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isApproved()Z

    move-result v25

    .line 183
    :cond_0
    if-eqz v25, :cond_24

    .line 184
    const-wide/32 v38, 0x400000

    or-long v20, v20, v38

    .line 185
    const-wide/32 v38, 0x1000000

    or-long v20, v20, v38

    .line 193
    :goto_0
    if-eqz v25, :cond_25

    const/16 v16, 0x0

    .line 197
    :goto_1
    if-eqz v25, :cond_26

    const/16 v15, 0x8

    .line 200
    :cond_1
    :goto_2
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_3

    .line 203
    if-eqz v36, :cond_2

    .line 204
    invoke-virtual/range {v36 .. v36}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isLessThanAMinuteOld()Z

    move-result v26

    .line 207
    :cond_2
    if-eqz v26, :cond_27

    .line 208
    const-wide/16 v38, 0x1000

    or-long v20, v20, v38

    .line 214
    :cond_3
    :goto_3
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_5

    .line 217
    if-eqz v36, :cond_4

    .line 218
    invoke-virtual/range {v36 .. v36}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v35

    .line 223
    :cond_4
    if-eqz v35, :cond_5

    .line 224
    invoke-virtual/range {v35 .. v35}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v22

    .line 230
    :cond_5
    if-eqz v36, :cond_6

    .line 231
    invoke-virtual/range {v36 .. v36}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v33

    .line 236
    :cond_6
    if-eqz v33, :cond_7

    .line 237
    invoke-virtual/range {v33 .. v33}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v32

    .line 242
    :cond_7
    if-eqz v32, :cond_8

    .line 243
    invoke-virtual/range {v32 .. v32}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v23

    .line 246
    :cond_8
    if-eqz v23, :cond_28

    .line 247
    const-wide/16 v38, 0x40

    or-long v20, v20, v38

    .line 248
    const-wide/16 v38, 0x400

    or-long v20, v20, v38

    .line 249
    const-wide/16 v38, 0x4000

    or-long v20, v20, v38

    .line 250
    const-wide/32 v38, 0x10000

    or-long v20, v20, v38

    .line 258
    :goto_4
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_9

    .line 261
    if-eqz v23, :cond_29

    const/4 v14, 0x0

    .line 264
    :cond_9
    :goto_5
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_a

    .line 267
    if-eqz v23, :cond_2a

    const/16 v6, 0x8

    .line 271
    :cond_a
    :goto_6
    const-wide/16 v38, 0x7

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_b

    .line 274
    if-eqz v28, :cond_2b

    .line 275
    const-wide/32 v38, 0x40000000

    or-long v20, v20, v38

    .line 282
    :goto_7
    if-nez v28, :cond_2c

    const/16 v31, 0x1

    .line 286
    :goto_8
    or-int v24, v23, v31

    .line 288
    if-eqz v24, :cond_2d

    .line 289
    const-wide/32 v38, 0x10000000

    or-long v20, v20, v38

    .line 296
    :goto_9
    if-eqz v24, :cond_2e

    const/16 v13, 0x8

    .line 300
    :cond_b
    :goto_a
    const-wide/32 v38, 0x40000000

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_c

    .line 303
    if-nez v23, :cond_2f

    const/16 v30, 0x1

    .line 306
    :cond_c
    :goto_b
    const-wide/16 v38, 0x800

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_d

    .line 309
    if-eqz v36, :cond_d

    .line 310
    invoke-virtual/range {v36 .. v36}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRelativeCreationDateString()Ljava/lang/String;

    move-result-object v34

    .line 314
    :cond_d
    const-wide/16 v38, 0x2000

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_f

    .line 317
    if-eqz v33, :cond_e

    .line 318
    invoke-virtual/range {v33 .. v33}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    .line 323
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f080102

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v19, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_f
    const-wide/32 v38, 0x10000

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_10

    .line 329
    if-eqz v36, :cond_10

    .line 330
    invoke-virtual/range {v36 .. v36}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isViewed()Z

    move-result v29

    .line 334
    :cond_10
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_11

    .line 337
    if-eqz v26, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0800db

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 340
    :cond_11
    :goto_c
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_12

    .line 343
    if-eqz v23, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f080103

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    :cond_12
    :goto_d
    const-wide/16 v38, 0x7

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_13

    .line 349
    if-eqz v23, :cond_32

    move/from16 v7, v29

    .line 351
    :goto_e
    if-eqz v7, :cond_33

    .line 352
    const-wide/32 v38, 0x100000

    or-long v20, v20, v38

    .line 359
    :cond_13
    :goto_f
    const-wide/32 v38, 0x80000

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_14

    .line 362
    if-eqz v36, :cond_14

    .line 363
    invoke-virtual/range {v36 .. v36}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isParentViewed()Z

    move-result v27

    .line 367
    :cond_14
    const-wide/16 v38, 0x7

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_16

    .line 370
    if-eqz v7, :cond_34

    const/4 v8, 0x1

    .line 372
    :goto_10
    if-eqz v8, :cond_35

    .line 373
    const-wide/16 v38, 0x10

    or-long v20, v20, v38

    .line 374
    const-wide/32 v38, 0x40000

    or-long v20, v20, v38

    .line 375
    const-wide/32 v38, 0x4000000

    or-long v20, v20, v38

    .line 382
    :goto_11
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_15

    .line 385
    if-eqz v8, :cond_36

    const/4 v12, 0x0

    .line 388
    :cond_15
    :goto_12
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_16

    .line 391
    if-eqz v8, :cond_37

    const/16 v11, 0x8

    .line 396
    :cond_16
    :goto_13
    const-wide/32 v38, 0x2000000

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_17

    .line 399
    if-eqz v28, :cond_38

    .line 400
    const-wide/32 v38, 0x40000000

    or-long v20, v20, v38

    .line 407
    :goto_14
    if-eqz v28, :cond_39

    move/from16 v18, v30

    .line 410
    :cond_17
    :goto_15
    const-wide/16 v38, 0x7

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_18

    .line 413
    if-eqz v8, :cond_3a

    const/4 v9, 0x1

    .line 415
    :goto_16
    if-eqz v9, :cond_3b

    .line 416
    const-wide/16 v38, 0x100

    or-long v20, v20, v38

    .line 423
    :goto_17
    if-eqz v9, :cond_3c

    const/16 v10, 0x8

    .line 426
    :cond_18
    :goto_18
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_19

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView1:Landroid/widget/Space;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/widget/Space;->setVisibility(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView10:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView13:Landroid/widget/Space;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/widget/Space;->setVisibility(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView7:Landroid/widget/Space;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/widget/Space;->setVisibility(I)V

    .line 436
    :cond_19
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_1a

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView10:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_1a
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_1b

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView11:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_1b
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_1c

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView12:Landroid/widget/Space;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Landroid/widget/Space;->setVisibility(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView6:Landroid/widget/Space;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Landroid/widget/Space;->setVisibility(I)V

    .line 450
    :cond_1c
    const-wide/16 v38, 0x7

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_1d

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView2:Landroid/widget/FrameLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 454
    :cond_1d
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_1e

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView3:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :cond_1e
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_1f

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView4:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    :cond_1f
    const-wide/16 v38, 0x7

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_20

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView5:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    :cond_20
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_21

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView8:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView9:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_21
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_22

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView8:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    :cond_22
    const-wide/16 v38, 0x5

    and-long v38, v38, v20

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_23

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mboundView9:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :cond_23
    return-void

    .line 140
    .end local v4    # "AndroidStringMessageForDisplayNameRecipientVoiceMessage":Ljava/lang/String;
    .end local v5    # "IsAdultPrivateProfileRecipientVoiceMessageAndroidStringMessageForMeAndroidStringMessageForDisplayNameRecipientVoiceMessage":Ljava/lang/String;
    .end local v6    # "IsAdultPrivateProfileRecipientVoiceMessageGONEViewVISIBLEView":I
    .end local v7    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalse":Z
    .end local v8    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessage":Z
    .end local v9    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageBooleantrueIsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalse":Z
    .end local v10    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageBooleantrueIsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalseGONEViewVISIBLEView":I
    .end local v11    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageGONEViewVISIBLEView":I
    .end local v12    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageVISIBLEViewGONEView":I
    .end local v13    # "IsAdultPrivateProfileRecipientVoiceMessageLogicalNotIsParentalControlEnabledGONEViewVISIBLEView":I
    .end local v14    # "IsAdultPrivateProfileRecipientVoiceMessageVISIBLEViewGONEView":I
    .end local v15    # "IsApprovedVoiceMessageGONEViewVISIBLEView":I
    .end local v16    # "IsApprovedVoiceMessageVISIBLEViewGONEView":I
    .end local v17    # "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelLessThanAMinuteAgoRelativeCreationDateStringVoiceMessage":Ljava/lang/String;
    .end local v18    # "IsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalse":Z
    .end local v19    # "displayNameRecipientVoiceMessage":Ljava/lang/String;
    .end local v22    # "displayNameSenderVoiceMessage":Ljava/lang/String;
    .end local v23    # "isAdultPrivateProfileRecipientVoiceMessage":Z
    .end local v24    # "isAdultPrivateProfileRecipientVoiceMessageLogicalNotIsParentalControlEnabled":Z
    .end local v25    # "isApprovedVoiceMessage":Z
    .end local v26    # "isLessThanAMinuteOldVoiceMessage":Z
    .end local v27    # "isParentViewedVoiceMessage":Z
    .end local v28    # "isParentalControlEnabled":Z
    .end local v29    # "isViewedVoiceMessage":Z
    .end local v30    # "logicalNotIsAdultPrivateProfileRecipientVoiceMessage":Z
    .end local v31    # "logicalNotIsParentalControlEnabled":Z
    .end local v32    # "privateProfileRecipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    .end local v33    # "recipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    .end local v34    # "relativeCreationDateStringVoiceMessage":Ljava/lang/String;
    .end local v35    # "senderVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    .end local v36    # "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    :catchall_0
    move-exception v37

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v37

    .line 187
    .restart local v4    # "AndroidStringMessageForDisplayNameRecipientVoiceMessage":Ljava/lang/String;
    .restart local v5    # "IsAdultPrivateProfileRecipientVoiceMessageAndroidStringMessageForMeAndroidStringMessageForDisplayNameRecipientVoiceMessage":Ljava/lang/String;
    .restart local v6    # "IsAdultPrivateProfileRecipientVoiceMessageGONEViewVISIBLEView":I
    .restart local v7    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalse":Z
    .restart local v8    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessage":Z
    .restart local v9    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageBooleantrueIsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalse":Z
    .restart local v10    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageBooleantrueIsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalseGONEViewVISIBLEView":I
    .restart local v11    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageGONEViewVISIBLEView":I
    .restart local v12    # "IsAdultPrivateProfileRecipientVoiceMessageIsViewedVoiceMessageBooleanfalseBooleantrueIsParentViewedVoiceMessageVISIBLEViewGONEView":I
    .restart local v13    # "IsAdultPrivateProfileRecipientVoiceMessageLogicalNotIsParentalControlEnabledGONEViewVISIBLEView":I
    .restart local v14    # "IsAdultPrivateProfileRecipientVoiceMessageVISIBLEViewGONEView":I
    .restart local v15    # "IsApprovedVoiceMessageGONEViewVISIBLEView":I
    .restart local v16    # "IsApprovedVoiceMessageVISIBLEViewGONEView":I
    .restart local v17    # "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelLessThanAMinuteAgoRelativeCreationDateStringVoiceMessage":Ljava/lang/String;
    .restart local v18    # "IsParentalControlEnabledLogicalNotIsAdultPrivateProfileRecipientVoiceMessageBooleanfalse":Z
    .restart local v19    # "displayNameRecipientVoiceMessage":Ljava/lang/String;
    .restart local v22    # "displayNameSenderVoiceMessage":Ljava/lang/String;
    .restart local v23    # "isAdultPrivateProfileRecipientVoiceMessage":Z
    .restart local v24    # "isAdultPrivateProfileRecipientVoiceMessageLogicalNotIsParentalControlEnabled":Z
    .restart local v25    # "isApprovedVoiceMessage":Z
    .restart local v26    # "isLessThanAMinuteOldVoiceMessage":Z
    .restart local v27    # "isParentViewedVoiceMessage":Z
    .restart local v28    # "isParentalControlEnabled":Z
    .restart local v29    # "isViewedVoiceMessage":Z
    .restart local v30    # "logicalNotIsAdultPrivateProfileRecipientVoiceMessage":Z
    .restart local v31    # "logicalNotIsParentalControlEnabled":Z
    .restart local v32    # "privateProfileRecipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    .restart local v33    # "recipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    .restart local v34    # "relativeCreationDateStringVoiceMessage":Ljava/lang/String;
    .restart local v35    # "senderVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    .restart local v36    # "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    :cond_24
    const-wide/32 v38, 0x200000

    or-long v20, v20, v38

    .line 188
    const-wide/32 v38, 0x800000

    or-long v20, v20, v38

    goto/16 :goto_0

    .line 193
    :cond_25
    const/16 v16, 0x8

    goto/16 :goto_1

    .line 197
    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 210
    :cond_27
    const-wide/16 v38, 0x800

    or-long v20, v20, v38

    goto/16 :goto_3

    .line 252
    :cond_28
    const-wide/16 v38, 0x20

    or-long v20, v20, v38

    .line 253
    const-wide/16 v38, 0x200

    or-long v20, v20, v38

    .line 254
    const-wide/16 v38, 0x2000

    or-long v20, v20, v38

    .line 255
    const-wide/32 v38, 0x8000

    or-long v20, v20, v38

    goto/16 :goto_4

    .line 261
    :cond_29
    const/16 v14, 0x8

    goto/16 :goto_5

    .line 267
    :cond_2a
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 277
    :cond_2b
    const-wide/32 v38, 0x20000000

    or-long v20, v20, v38

    goto/16 :goto_7

    .line 282
    :cond_2c
    const/16 v31, 0x0

    goto/16 :goto_8

    .line 291
    :cond_2d
    const-wide/32 v38, 0x8000000

    or-long v20, v20, v38

    goto/16 :goto_9

    .line 296
    :cond_2e
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 303
    :cond_2f
    const/16 v30, 0x0

    goto/16 :goto_b

    :cond_30
    move-object/from16 v17, v34

    .line 337
    goto/16 :goto_c

    :cond_31
    move-object v5, v4

    .line 343
    goto/16 :goto_d

    .line 349
    :cond_32
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 354
    :cond_33
    const-wide/32 v38, 0x80000

    or-long v20, v20, v38

    goto/16 :goto_f

    :cond_34
    move/from16 v8, v27

    .line 370
    goto/16 :goto_10

    .line 377
    :cond_35
    const-wide/16 v38, 0x8

    or-long v20, v20, v38

    .line 378
    const-wide/32 v38, 0x20000

    or-long v20, v20, v38

    .line 379
    const-wide/32 v38, 0x2000000

    or-long v20, v20, v38

    goto/16 :goto_11

    .line 385
    :cond_36
    const/16 v12, 0x8

    goto/16 :goto_12

    .line 391
    :cond_37
    const/4 v11, 0x0

    goto/16 :goto_13

    .line 402
    :cond_38
    const-wide/32 v38, 0x20000000

    or-long v20, v20, v38

    goto/16 :goto_14

    .line 407
    :cond_39
    const/16 v18, 0x0

    goto/16 :goto_15

    :cond_3a
    move/from16 v9, v18

    .line 413
    goto/16 :goto_16

    .line 418
    :cond_3b
    const-wide/16 v38, 0x80

    or-long v20, v20, v38

    goto/16 :goto_17

    .line 423
    :cond_3c
    const/4 v10, 0x0

    goto/16 :goto_18
.end method

.method public getIsParentalControlEnabled()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mIsParentalControlEnabled:Z

    return v0
.end method

.method public getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    monitor-exit p0

    .line 87
    :goto_0
    return v0

    .line 86
    :cond_0
    monitor-exit p0

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 86
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
    .line 74
    monitor-enter p0

    .line 75
    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->requestRebind()V

    .line 78
    return-void

    .line 76
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
    .line 129
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public setIsParentalControlEnabled(Z)V
    .locals 4
    .param p1, "isParentalControlEnabled"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mIsParentalControlEnabled:Z

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 95
    sparse-switch p1, :sswitch_data_0

    .line 103
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 97
    .restart local p2    # "variable":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    goto :goto_0

    .line 100
    .restart local p2    # "variable":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->setIsParentalControlEnabled(Z)V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 4
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
