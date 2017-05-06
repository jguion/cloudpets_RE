.class public Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentVoiceMessagePlayerBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final audioPlayerContainer:Landroid/widget/FrameLayout;

.field private mDirtyFlags:J

.field private mIsParentalControlEnabled:Z

.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

.field private mVoiceMessageDateFormatter:Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/FrameLayout;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView4:Landroid/widget/TextView;

.field public final messageForMeCharacterImage:Landroid/widget/ImageView;

.field public final messageTitle:Landroid/widget/TextView;

.field public final playbackRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

.field public final profilePhoto:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100136

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000fb

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000ff

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000e3

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
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

    .line 284
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    .line 38
    const/16 v1, 0xa

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "bindings":[Ljava/lang/Object;
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->audioPlayerContainer:Landroid/widget/FrameLayout;

    .line 40
    aget-object v1, v0, v5

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 41
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView1:Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView2:Landroid/widget/FrameLayout;

    .line 45
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView3:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView4:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView4:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 50
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->messageForMeCharacterImage:Landroid/widget/ImageView;

    .line 51
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->messageTitle:Landroid/widget/TextView;

    .line 52
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/views/RippleView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->playbackRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    .line 53
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->invalidateAll()V

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 293
    const-string v0, "layout/fragment_voice_message_player_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
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

    .line 296
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 290
    const v0, 0x7f04005f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 287
    const v0, 0x7f04005f

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 77
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

    .line 78
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 26

    .prologue
    .line 135
    const-wide/16 v10, 0x0

    .line 136
    .local v10, "dirtyFlags":J
    monitor-enter p0

    .line 137
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    .line 138
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    .line 139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const/4 v8, 0x0

    .line 141
    .local v8, "LogicalNotIsParentalControlEnabledBooleantrueIsAdultPrivateProfileRecipientVoiceMessageGONEViewVISIBLEView":I
    const/4 v13, 0x0

    .line 142
    .local v13, "isApprovedVoiceMessage":Z
    const/4 v14, 0x0

    .line 143
    .local v14, "isLessThanAMinuteOldVoiceMessage":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    move-object/from16 v19, v0

    .line 144
    .local v19, "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    const/4 v5, 0x0

    .line 145
    .local v5, "IsApprovedVoiceMessageVISIBLEViewGONEView":I
    const/4 v7, 0x0

    .line 146
    .local v7, "LogicalNotIsParentalControlEnabledBooleantrueIsAdultPrivateProfileRecipientVoiceMessage":Z
    const/4 v9, 0x0

    .line 147
    .local v9, "detailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mVoiceMessageDateFormatter:Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    move-object/from16 v20, v0

    .line 148
    .local v20, "voiceMessageDateFormatter":Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
    const/4 v4, 0x0

    .line 149
    .local v4, "IsApprovedVoiceMessageGONEViewVISIBLEView":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mIsParentalControlEnabled:Z

    .line 150
    .local v15, "isParentalControlEnabled":Z
    const/4 v6, 0x0

    .line 151
    .local v6, "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelDetailLessThanAMinuteAgoDetailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    const/16 v18, 0x0

    .line 152
    .local v18, "recipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    const/16 v16, 0x0

    .line 153
    .local v16, "logicalNotIsParentalControlEnabled":Z
    const/4 v12, 0x0

    .line 154
    .local v12, "isAdultPrivateProfileRecipientVoiceMessage":Z
    const/16 v17, 0x0

    .line 156
    .local v17, "privateProfileRecipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    const-wide/16 v22, 0xb

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_3

    .line 159
    const-wide/16 v22, 0x9

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_1

    .line 162
    if-eqz v19, :cond_0

    .line 163
    invoke-virtual/range {v19 .. v19}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isApproved()Z

    move-result v13

    .line 166
    :cond_0
    if-eqz v13, :cond_f

    .line 167
    const-wide/16 v22, 0x80

    or-long v10, v10, v22

    .line 168
    const-wide/16 v22, 0x800

    or-long v10, v10, v22

    .line 176
    :goto_0
    if-eqz v13, :cond_10

    const/4 v5, 0x0

    .line 180
    :goto_1
    if-eqz v13, :cond_11

    const/16 v4, 0x8

    .line 185
    :cond_1
    :goto_2
    if-eqz v19, :cond_2

    .line 186
    invoke-virtual/range {v19 .. v19}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isLessThanAMinuteOld()Z

    move-result v14

    .line 189
    :cond_2
    if-eqz v14, :cond_12

    .line 190
    const-wide/16 v22, 0x2000

    or-long v10, v10, v22

    .line 196
    :cond_3
    :goto_3
    const-wide/16 v22, 0xd

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_4

    .line 201
    if-nez v15, :cond_13

    const/16 v16, 0x1

    .line 203
    :goto_4
    if-eqz v16, :cond_14

    .line 204
    const-wide/16 v22, 0x200

    or-long v10, v10, v22

    .line 211
    :cond_4
    :goto_5
    const-wide/16 v22, 0x100

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_7

    .line 216
    if-eqz v19, :cond_5

    .line 217
    invoke-virtual/range {v19 .. v19}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v18

    .line 222
    :cond_5
    if-eqz v18, :cond_6

    .line 223
    invoke-virtual/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v17

    .line 228
    :cond_6
    if-eqz v17, :cond_7

    .line 229
    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v12

    .line 233
    :cond_7
    const-wide/16 v22, 0x1000

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_8

    .line 238
    if-eqz v20, :cond_8

    .line 239
    invoke-virtual/range {v20 .. v20}, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;->getDetailedRelativeCreationDateString()Ljava/lang/String;

    move-result-object v9

    .line 243
    :cond_8
    const-wide/16 v22, 0xd

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_9

    .line 246
    if-eqz v16, :cond_15

    const/4 v7, 0x1

    .line 248
    :goto_6
    if-eqz v7, :cond_16

    .line 249
    const-wide/16 v22, 0x20

    or-long v10, v10, v22

    .line 256
    :goto_7
    if-eqz v7, :cond_17

    const/16 v8, 0x8

    .line 259
    :cond_9
    :goto_8
    const-wide/16 v22, 0xb

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_a

    .line 262
    if-eqz v14, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->getRoot()Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0800d4

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 265
    :cond_a
    :goto_9
    const-wide/16 v22, 0xb

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_b

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView1:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_b
    const-wide/16 v22, 0xd

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_c

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView2:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    :cond_c
    const-wide/16 v22, 0x9

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_d

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView3:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :cond_d
    const-wide/16 v22, 0x9

    and-long v22, v22, v10

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_e

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mboundView4:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :cond_e
    return-void

    .line 139
    .end local v4    # "IsApprovedVoiceMessageGONEViewVISIBLEView":I
    .end local v5    # "IsApprovedVoiceMessageVISIBLEViewGONEView":I
    .end local v6    # "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelDetailLessThanAMinuteAgoDetailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    .end local v7    # "LogicalNotIsParentalControlEnabledBooleantrueIsAdultPrivateProfileRecipientVoiceMessage":Z
    .end local v8    # "LogicalNotIsParentalControlEnabledBooleantrueIsAdultPrivateProfileRecipientVoiceMessageGONEViewVISIBLEView":I
    .end local v9    # "detailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    .end local v12    # "isAdultPrivateProfileRecipientVoiceMessage":Z
    .end local v13    # "isApprovedVoiceMessage":Z
    .end local v14    # "isLessThanAMinuteOldVoiceMessage":Z
    .end local v15    # "isParentalControlEnabled":Z
    .end local v16    # "logicalNotIsParentalControlEnabled":Z
    .end local v17    # "privateProfileRecipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    .end local v18    # "recipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    .end local v19    # "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .end local v20    # "voiceMessageDateFormatter":Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 170
    .restart local v4    # "IsApprovedVoiceMessageGONEViewVISIBLEView":I
    .restart local v5    # "IsApprovedVoiceMessageVISIBLEViewGONEView":I
    .restart local v6    # "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelDetailLessThanAMinuteAgoDetailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    .restart local v7    # "LogicalNotIsParentalControlEnabledBooleantrueIsAdultPrivateProfileRecipientVoiceMessage":Z
    .restart local v8    # "LogicalNotIsParentalControlEnabledBooleantrueIsAdultPrivateProfileRecipientVoiceMessageGONEViewVISIBLEView":I
    .restart local v9    # "detailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    .restart local v12    # "isAdultPrivateProfileRecipientVoiceMessage":Z
    .restart local v13    # "isApprovedVoiceMessage":Z
    .restart local v14    # "isLessThanAMinuteOldVoiceMessage":Z
    .restart local v15    # "isParentalControlEnabled":Z
    .restart local v16    # "logicalNotIsParentalControlEnabled":Z
    .restart local v17    # "privateProfileRecipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    .restart local v18    # "recipientVoiceMessage":Lcom/spiraltoys/cloudpets2/model/Profile;
    .restart local v19    # "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .restart local v20    # "voiceMessageDateFormatter":Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
    :cond_f
    const-wide/16 v22, 0x40

    or-long v10, v10, v22

    .line 171
    const-wide/16 v22, 0x400

    or-long v10, v10, v22

    goto/16 :goto_0

    .line 176
    :cond_10
    const/16 v5, 0x8

    goto/16 :goto_1

    .line 180
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 192
    :cond_12
    const-wide/16 v22, 0x1000

    or-long v10, v10, v22

    goto/16 :goto_3

    .line 201
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 206
    :cond_14
    const-wide/16 v22, 0x100

    or-long v10, v10, v22

    goto/16 :goto_5

    :cond_15
    move v7, v12

    .line 246
    goto/16 :goto_6

    .line 251
    :cond_16
    const-wide/16 v22, 0x10

    or-long v10, v10, v22

    goto/16 :goto_7

    .line 256
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_18
    move-object v6, v9

    .line 262
    goto/16 :goto_9
.end method

.method public getIsParentalControlEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mIsParentalControlEnabled:Z

    return v0
.end method

.method public getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    return-object v0
.end method

.method public getVoiceMessageDateFormatter()Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mVoiceMessageDateFormatter:Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    monitor-exit p0

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_0
    monitor-exit p0

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 72
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
    .line 60
    monitor-enter p0

    .line 61
    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->requestRebind()V

    .line 64
    return-void

    .line 62
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
    .line 128
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public setIsParentalControlEnabled(Z)V
    .locals 4
    .param p1, "isParentalControlEnabled"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mIsParentalControlEnabled:Z

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 121
    return-void

    .line 119
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

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 92
    :pswitch_0
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 83
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    goto :goto_0

    .line 86
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->setVoiceMessageDateFormatter(Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;)V

    goto :goto_0

    .line 89
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->setIsParentalControlEnabled(Z)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 4
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVoiceMessageDateFormatter(Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;)V
    .locals 4
    .param p1, "voiceMessageDateFormatter"    # Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mVoiceMessageDateFormatter:Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
