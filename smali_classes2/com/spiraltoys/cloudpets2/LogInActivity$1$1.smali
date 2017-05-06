.class Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;
.super Ljava/lang/Object;
.source "LogInActivity.java"

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/LogInActivity$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/GetCallback",
        "<",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/LogInActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/parse/ParseUser;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 4
    .param p1, "parseUser"    # Lcom/parse/ParseUser;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 73
    if-eqz p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->hideProgress()V

    .line 75
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-static {v1, p2}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForLoginException(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 102
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isInitialToySetupComplete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->hideProgress()V

    .line 81
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/LogInActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    const-class v3, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/LogInActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1$1;-><init>(Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalChildProfilesCount(Lcom/parse/CountCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/parse/ParseUser;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/LogInActivity$1$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
