.class Lcom/spiraltoys/cloudpets2/BaseActivity$9;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BaseActivity;->onFirmwareUpdateFailure()V
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
    .line 551
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$9;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    const/4 v1, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/BaseActivity;->mFirmwareErrorDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->access$102(Lcom/spiraltoys/cloudpets2/BaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 555
    return-void
.end method
