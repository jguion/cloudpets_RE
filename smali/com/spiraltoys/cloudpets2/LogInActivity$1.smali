.class Lcom/spiraltoys/cloudpets2/LogInActivity$1;
.super Ljava/lang/Object;
.source "LogInActivity.java"

# interfaces
.implements Lcom/parse/LogInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/LogInActivity;->onLogInClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/LogInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/LogInActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "parseUser"    # Lcom/parse/ParseUser;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->hideProgress()V

    .line 68
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-static {v1, p2}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForLoginException(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 110
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isEmailVerified(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;-><init>(Lcom/spiraltoys/cloudpets2/LogInActivity$1;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->preFetch(Lcom/parse/GetCallback;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->hideProgress()V

    .line 108
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->showVerifyEmailDialog()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/parse/ParseUser;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
