.class final Lcom/spiraltoys/cloudpets2/util/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/util/Utils;->showLogoutConfirmationDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/Utils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/Utils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->logOut(Landroid/content/Context;)V

    .line 187
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/Utils$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/Utils$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method
