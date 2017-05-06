.class Lcom/spiraltoys/cloudpets2/BaseActivity$5$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BaseActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$5;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BaseActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/BaseActivity$5;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$5$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$5$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$5;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->hideProgress()V

    .line 412
    if-eqz p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$5$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$5;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$5$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$5;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/BaseActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForErrorSendingVerificationEmail(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 415
    :cond_0
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 408
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity$5$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
