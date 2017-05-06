.class Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->onLogInClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/CreateAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/CreateAccountActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/CreateAccountActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->hideProgress()V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/CreateAccountActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/CreateAccountActivity;

    invoke-static {v1, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForSignupException(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/CreateAccountActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->showVerifyEmailDialog()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
