.class Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;
.super Ljava/lang/Object;
.source "EditParentProfileActivity.java"

# interfaces
.implements Lcom/parse/RequestPasswordResetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->onPasswordResetRequested()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 5
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->hideProgress()V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-static {v2, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForErrorResettingPassword(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->access$100(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    .line 337
    :goto_0
    return-void

    .line 331
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080191

    .line 332
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080115

    .line 333
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08004d

    const/4 v2, 0x0

    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 322
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;->done(Lcom/parse/ParseException;)V

    return-void
.end method
