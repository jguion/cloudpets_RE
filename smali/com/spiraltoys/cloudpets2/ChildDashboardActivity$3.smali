.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;
.super Ljava/lang/Object;
.source "ChildDashboardActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onPushToToyClicked(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 375
    if-eqz p2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideProgress()V

    .line 377
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-static {v1, p2}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForErrorFetchingVoiceMessage(Landroid/content/Context;Ljava/lang/Exception;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    const/4 v1, 0x1

    # setter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingAudioToToy:Z
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$102(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Z)Z

    .line 380
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_1:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    invoke-static {p1, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->sendAudioToToyAndBlinkLed(Landroid/net/Uri;Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    move-result-object v1

    # setter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mLastSendAudioCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$202(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;)Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    goto :goto_0
.end method
