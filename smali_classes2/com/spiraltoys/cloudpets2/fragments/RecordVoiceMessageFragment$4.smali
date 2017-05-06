.class Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$4;
.super Ljava/lang/Object;
.source "RecordVoiceMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;
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
    .line 219
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->access$300(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)V

    .line 223
    return-void
.end method
