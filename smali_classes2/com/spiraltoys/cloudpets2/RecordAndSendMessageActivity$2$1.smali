.class Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;
.super Ljava/lang/Object;
.source "RecordAndSendMessageActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->done(Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    const/4 v2, 0x1

    .line 192
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->access$002(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;Z)Z

    .line 193
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->hideProgress()V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 196
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageFailedToSend;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageFailedToSend;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForErrorSendingVoiceMessage(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 208
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->val$selectedProfiles:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->containsChildProfile(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    const v1, 0x7f08011f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->setResult(I)V

    .line 206
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->finish()V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    const v1, 0x7f08011e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
