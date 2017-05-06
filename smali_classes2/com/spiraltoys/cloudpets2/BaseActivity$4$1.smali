.class Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BaseActivity$4;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$4;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BaseActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/BaseActivity$4;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 423
    check-cast p1, Lcom/parse/ParseUser;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 4
    .param p1, "parseUser"    # Lcom/parse/ParseUser;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 426
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isEmailVerified(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$4;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/BaseActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    const-class v3, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    .line 428
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->finish()V

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->hideProgressDelayed()V

    .line 434
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;->this$1:Lcom/spiraltoys/cloudpets2/BaseActivity$4;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    const v1, 0x7f0800ec

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 423
    check-cast p1, Lcom/parse/ParseUser;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
