.class Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$1;
.super Ljava/lang/Object;
.source "ChildDashboardDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->onBackPressed()V

    .line 159
    :cond_0
    return-void
.end method
