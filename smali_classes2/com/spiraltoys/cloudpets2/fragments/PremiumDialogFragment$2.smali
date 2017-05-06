.class Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$2;
.super Ljava/lang/Object;
.source "PremiumDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://play.google.com/store/apps/details?id=com.spiraltoys.cloudpets2.premium"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
