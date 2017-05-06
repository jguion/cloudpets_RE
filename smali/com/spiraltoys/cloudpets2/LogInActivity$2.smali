.class Lcom/spiraltoys/cloudpets2/LogInActivity$2;
.super Ljava/lang/Object;
.source "LogInActivity.java"

# interfaces
.implements Lcom/parse/RequestPasswordResetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/LogInActivity;->onPasswordResetClicked()V
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
    .line 125
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 5
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->hideProgress()V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-static {v2, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForErrorResettingPassword(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/LogInActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080191

    .line 133
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080115

    .line 134
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08004d

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 125
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/LogInActivity$2;->done(Lcom/parse/ParseException;)V

    return-void
.end method
