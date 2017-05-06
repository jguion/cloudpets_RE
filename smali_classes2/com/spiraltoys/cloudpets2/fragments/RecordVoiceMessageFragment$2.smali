.class Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$2;
.super Ljava/util/TimerTask;
.source "RecordVoiceMessageFragment.java"


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

.field final synthetic val$progressBarUpdater:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$2;->val$progressBarUpdater:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$2;->val$progressBarUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method
