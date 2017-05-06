.class Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;
.super Ljava/lang/Object;
.source "InviteFriendActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->onInviteFriend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/InviteFriendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 4
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->hideProgress()V

    .line 98
    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 100
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForErrorSendingFriendRequest(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v0

    .line 101
    .local v0, "messageResourceId":I
    const v1, 0x7f080094

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    .line 111
    .end local v0    # "messageResourceId":I
    :goto_0
    return-void

    .line 104
    .restart local v0    # "messageResourceId":I
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    invoke-static {v1, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 107
    .end local v0    # "messageResourceId":I
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/events/FriendRecordAddedEvent;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/events/FriendRecordAddedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    const v2, 0x7f0801b2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 109
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;->done(Lcom/parse/ParseException;)V

    return-void
.end method
