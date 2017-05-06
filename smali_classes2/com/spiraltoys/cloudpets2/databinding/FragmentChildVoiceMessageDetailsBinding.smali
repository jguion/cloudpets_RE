.class public Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentChildVoiceMessageDetailsBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final buttonPanel:Landroid/support/v7/widget/GridLayout;

.field public final childDetailMessageCharacter:Landroid/widget/ImageView;

.field public final deleteVoiceMessageButton:Landroid/support/design/widget/FloatingActionButton;

.field public final deleteVoiceMessageButtonLabel:Landroid/widget/TextView;

.field private mDirtyFlags:J

.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

.field private mVoiceMessageDateFormatter:Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field public final messageDetailsContainer:Landroid/widget/LinearLayout;

.field public final messageTitle:Landroid/widget/TextView;

.field public final profilePhoto:Landroid/widget/ImageView;

.field public final pushToToyButton:Landroid/support/design/widget/FloatingActionButton;

.field public final pushToToyButtonLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000fc

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000a0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1000ff

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100100

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10007b

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100101

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f10008a

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100102

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f100103

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 41
    invoke-direct {p0, p1, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    .line 175
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    .line 42
    const/16 v1, 0xb

    sget-object v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/v7/widget/GridLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->buttonPanel:Landroid/support/v7/widget/GridLayout;

    .line 44
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->childDetailMessageCharacter:Landroid/widget/ImageView;

    .line 45
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->deleteVoiceMessageButton:Landroid/support/design/widget/FloatingActionButton;

    .line 46
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->deleteVoiceMessageButtonLabel:Landroid/widget/TextView;

    .line 47
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 48
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mboundView1:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 51
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->messageDetailsContainer:Landroid/widget/LinearLayout;

    .line 52
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->messageTitle:Landroid/widget/TextView;

    .line 53
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 54
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->pushToToyButton:Landroid/support/design/widget/FloatingActionButton;

    .line 55
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->pushToToyButtonLabel:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->setRootTag(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->invalidateAll()V

    .line 58
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 184
    const-string v0, "layout/fragment_child_voice_message_details_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
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

    .line 187
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 181
    const v0, 0x7f040049

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 178
    const v0, 0x7f040049

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    return-object v0
.end method

.method private log(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # J

    .prologue
    .line 79
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

    .line 80
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 12

    .prologue
    .line 124
    const-wide/16 v2, 0x0

    .line 125
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    .line 127
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "isLessThanAMinuteOldVoiceMessage":Z
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 131
    .local v5, "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    const/4 v1, 0x0

    .line 132
    .local v1, "detailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mVoiceMessageDateFormatter:Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    .line 133
    .local v6, "voiceMessageDateFormatter":Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
    const/4 v0, 0x0

    .line 135
    .local v0, "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelDetailLessThanAMinuteAgoDetailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    const-wide/16 v8, 0x7

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 140
    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->isLessThanAMinuteOld()Z

    move-result v4

    .line 144
    :cond_0
    if-eqz v4, :cond_5

    .line 145
    const-wide/16 v8, 0x10

    or-long/2addr v2, v8

    .line 152
    :cond_1
    :goto_0
    const-wide/16 v8, 0x8

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 157
    if-eqz v6, :cond_2

    .line 158
    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;->getDetailedRelativeCreationDateString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_2
    const-wide/16 v8, 0x7

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 165
    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_3
    :goto_1
    const-wide/16 v8, 0x7

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 170
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_4
    return-void

    .line 128
    .end local v0    # "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelDetailLessThanAMinuteAgoDetailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    .end local v1    # "detailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    .end local v4    # "isLessThanAMinuteOldVoiceMessage":Z
    .end local v5    # "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .end local v6    # "voiceMessageDateFormatter":Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 147
    .restart local v0    # "IsLessThanAMinuteOldVoiceMessageAndroidStringLabelDetailLessThanAMinuteAgoDetailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    .restart local v1    # "detailedRelativeCreationDateStringVoiceMessageDateFormatter":Ljava/lang/String;
    .restart local v4    # "isLessThanAMinuteOldVoiceMessage":Z
    .restart local v5    # "voiceMessage":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .restart local v6    # "voiceMessageDateFormatter":Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
    :cond_5
    const-wide/16 v8, 0x8

    or-long/2addr v2, v8

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 165
    goto :goto_1
.end method

.method public getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    return-object v0
.end method

.method public getVoiceMessageDateFormatter()Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mVoiceMessageDateFormatter:Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    monitor-exit p0

    .line 75
    :goto_0
    return v0

    .line 74
    :cond_0
    monitor-exit p0

    .line 75
    const/4 v0, 0x0

    goto :goto_0

    .line 74
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
    .line 62
    monitor-enter p0

    .line 63
    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->requestRebind()V

    .line 66
    return-void

    .line 64
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
    .line 117
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 83
    packed-switch p1, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    .end local p2    # "variable":Ljava/lang/Object;
    :goto_0
    return v0

    .line 85
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    goto :goto_0

    .line 88
    .restart local p2    # "variable":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    .end local p2    # "variable":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->setVoiceMessageDateFormatter(Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 4
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 100
    return-void

    .line 98
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
    .line 105
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mVoiceMessageDateFormatter:Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
