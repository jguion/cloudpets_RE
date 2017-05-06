.class Lcom/spiraltoys/cloudpets2/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BaseActivity;->showVerifyEmailDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/BaseActivity;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(I)Landroid/app/Dialog;

    .line 408
    new-instance v0, Lcom/spiraltoys/cloudpets2/BaseActivity$5$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$5$1;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity$5;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->resendVerificationEmail(Lcom/parse/SaveCallback;)V

    .line 417
    return-void
.end method
