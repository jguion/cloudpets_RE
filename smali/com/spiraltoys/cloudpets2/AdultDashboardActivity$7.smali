.class Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$7;
.super Ljava/lang/Object;
.source "AdultDashboardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->displayFriendRequestAcceptedDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$7;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$7;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    const-class v2, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$7;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 350
    return-void
.end method
