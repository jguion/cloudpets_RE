.class Lcom/spiraltoys/cloudpets2/BaseActivity$4;
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
    .line 419
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(I)Landroid/app/Dialog;

    .line 423
    new-instance v0, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/BaseActivity$4$1;-><init>(Lcom/spiraltoys/cloudpets2/BaseActivity$4;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->refreshUser(Lcom/parse/GetCallback;)V

    .line 436
    return-void
.end method
