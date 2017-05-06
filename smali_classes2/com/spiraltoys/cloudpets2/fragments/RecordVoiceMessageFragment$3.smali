.class Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$3;
.super Ljava/lang/Object;
.source "RecordVoiceMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->resetProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 215
    return-void
.end method
