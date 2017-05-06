.class Lcom/spiraltoys/cloudpets2/BaseActivity$2;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(IIIZ)Landroid/app/Dialog;
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
    .line 300
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAny(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->cancel()V

    .line 304
    return-void
.end method
