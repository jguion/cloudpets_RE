.class Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$1;
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
    .line 48
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->onBackPressed()V

    .line 54
    :cond_0
    return-void
.end method
