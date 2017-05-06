.class Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$1;
.super Ljava/lang/Object;
.source "AdultVoiceMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->onDeleteClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->access$000(Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;)Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->deleteEventually()Lbolts/Task;

    .line 146
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageDeletedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageDeletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->finish()V

    .line 148
    return-void
.end method
