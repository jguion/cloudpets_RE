.class Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;
.super Ljava/lang/Object;
.source "RecordVoiceMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    iput-wide p2, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x461c4000    # 10000.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;->val$startTime:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    div-float/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 136
    .local v2, "progress":F
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->progressBar:Landroid/widget/ProgressBar;

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x32

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    cmpl-float v3, v2, v6

    if-ltz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->currentPlaybackTime:Landroid/widget/TextView;

    mul-float v4, v7, v2

    float-to-long v4, v4

    invoke-static {v4, v5}, Lcom/spiraltoys/cloudpets2/util/Utils;->formatAudioTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method
