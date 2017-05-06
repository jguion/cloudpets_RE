.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;
.super Ljava/lang/Object;
.source "ChildDashboardActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onProfilesSelected(Ljava/util/List;)V
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
    .line 710
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    const/4 v1, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mIsSendingMessageToServer:Z
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$502(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Z)Z

    .line 714
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->hideProgress()V

    .line 715
    if-eqz p1, :cond_0

    .line 716
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 717
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForErrorSendingVoiceMessage(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 723
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    const v1, 0x7f08018c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 720
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->popChildDashboardDialogFragmentBackStack()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$600(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    .line 721
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->popChildDashboardDialogFragmentBackStack()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$600(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 710
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$9;->done(Lcom/parse/ParseException;)V

    return-void
.end method
