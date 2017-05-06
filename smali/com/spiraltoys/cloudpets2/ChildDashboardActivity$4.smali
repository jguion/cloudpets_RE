.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$4;
.super Ljava/lang/Object;
.source "ChildDashboardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onDeleteVoiceMessageClicked(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

.field final synthetic val$voiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$4;->val$voiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$4;->val$voiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->deleteEventually()Lbolts/Task;

    .line 396
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mChildDashboardDialogFragment:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$300(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 397
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageDeletedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageDeletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 398
    return-void
.end method
